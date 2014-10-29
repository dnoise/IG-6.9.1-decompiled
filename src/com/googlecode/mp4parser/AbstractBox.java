// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.boxes.ContainerBox;
import com.coremedia.iso.boxes.a;
import com.coremedia.iso.c;
import com.coremedia.iso.d;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.c.b;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.logging.Logger;

public abstract class AbstractBox
    implements a
{

    static final boolean $assertionsDisabled;
    private static Logger LOG = Logger.getLogger(com/googlecode/mp4parser/AbstractBox.getName());
    public static int MEM_MAP_THRESHOLD = 0x19000;
    private ByteBuffer content;
    private ByteBuffer deadBytes;
    private ContainerBox parent;
    protected String type;
    private byte userType[];

    protected AbstractBox(String s)
    {
        deadBytes = null;
        type = s;
    }

    protected AbstractBox(String s, byte abyte0[])
    {
        deadBytes = null;
        type = s;
        userType = abyte0;
    }

    private void getHeader(ByteBuffer bytebuffer)
    {
        if (isSmallBox())
        {
            g.b(bytebuffer, getSize());
            bytebuffer.put(IsoFile.fourCCtoBytes(getType()));
        } else
        {
            g.b(bytebuffer, 1L);
            bytebuffer.put(IsoFile.fourCCtoBytes(getType()));
            g.a(bytebuffer, getSize());
        }
        if ("uuid".equals(getType()))
        {
            bytebuffer.put(getUserType());
        }
    }

    private boolean isSmallBox()
    {
        long l;
        if (content == null)
        {
            long l1 = getContentSize();
            int i;
            boolean flag;
            int j;
            if (deadBytes != null)
            {
                j = deadBytes.limit();
            } else
            {
                j = 0;
            }
            l = 8L + (l1 + (long)j);
        } else
        {
            l = content.limit();
        }
        i = l != 0x100000000L;
        flag = false;
        if (i < 0)
        {
            flag = true;
        }
        return flag;
    }

    private boolean verify(ByteBuffer bytebuffer)
    {
        long l = getContentSize();
        int i;
        ByteBuffer bytebuffer1;
        if (deadBytes != null)
        {
            i = deadBytes.limit();
        } else
        {
            i = 0;
        }
        bytebuffer1 = ByteBuffer.allocate(b.a(l + (long)i));
        getContent(bytebuffer1);
        if (deadBytes != null)
        {
            deadBytes.rewind();
            for (; deadBytes.remaining() > 0; bytebuffer1.put(deadBytes)) { }
        }
        bytebuffer.rewind();
        bytebuffer1.rewind();
        if (bytebuffer.remaining() != bytebuffer1.remaining())
        {
            LOG.severe((new StringBuilder()).append(getType()).append(": remaining differs ").append(bytebuffer.remaining()).append(" vs. ").append(bytebuffer1.remaining()).toString());
            return false;
        }
        int j = bytebuffer.position();
        int k = -1 + bytebuffer.limit();
        for (int i1 = -1 + bytebuffer1.limit(); k >= j; i1--)
        {
            byte byte0 = bytebuffer.get(k);
            byte byte1 = bytebuffer1.get(i1);
            if (byte0 != byte1)
            {
                Logger logger = LOG;
                Object aobj[] = new Object[4];
                aobj[0] = getType();
                aobj[1] = Integer.valueOf(k);
                aobj[2] = Byte.valueOf(byte0);
                aobj[3] = Byte.valueOf(byte1);
                logger.severe(String.format("%s: buffers differ at %d: %2X/%2X", aobj));
                byte abyte0[] = new byte[bytebuffer.remaining()];
                byte abyte1[] = new byte[bytebuffer1.remaining()];
                bytebuffer.get(abyte0);
                bytebuffer1.get(abyte1);
                System.err.println((new StringBuilder("original      : ")).append(d.a(abyte0, 4)).toString());
                System.err.println((new StringBuilder("reconstructed : ")).append(d.a(abyte1, 4)).toString());
                return false;
            }
            k--;
        }

        return true;
    }

    protected abstract void _parseDetails(ByteBuffer bytebuffer);

    public void getBox(WritableByteChannel writablebytechannel)
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(b.a(getSize()));
        getHeader(bytebuffer);
        if (content == null)
        {
            getContent(bytebuffer);
            if (deadBytes != null)
            {
                deadBytes.rewind();
                for (; deadBytes.remaining() > 0; bytebuffer.put(deadBytes)) { }
            }
        } else
        {
            content.rewind();
            bytebuffer.put(content);
        }
        bytebuffer.rewind();
        writablebytechannel.write(bytebuffer);
    }

    protected abstract void getContent(ByteBuffer bytebuffer);

    protected abstract long getContentSize();

    public IsoFile getIsoFile()
    {
        return parent.getIsoFile();
    }

    public ContainerBox getParent()
    {
        return parent;
    }

    public long getSize()
    {
        long l;
        byte byte0;
        int i;
        byte byte1;
        long l1;
        ByteBuffer bytebuffer;
        int j;
        if (content == null)
        {
            l = getContentSize();
        } else
        {
            l = content.limit();
        }
        if (l >= 0xfffffff8L)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        i = byte0 + 8;
        if ("uuid".equals(getType()))
        {
            byte1 = 16;
        } else
        {
            byte1 = 0;
        }
        l1 = l + (long)(byte1 + i);
        bytebuffer = deadBytes;
        j = 0;
        if (bytebuffer != null)
        {
            j = deadBytes.limit();
        }
        return l1 + (long)j;
    }

    public String getType()
    {
        return type;
    }

    public byte[] getUserType()
    {
        return userType;
    }

    public boolean isParsed()
    {
        return content == null;
    }

    public void parse(ReadableByteChannel readablebytechannel, ByteBuffer bytebuffer, long l, com.coremedia.iso.b b1)
    {
        if ((readablebytechannel instanceof FileChannel) && l > (long)MEM_MAP_THRESHOLD)
        {
            content = ((FileChannel)readablebytechannel).map(java.nio.channels.FileChannel.MapMode.READ_ONLY, ((FileChannel)readablebytechannel).position(), l);
            ((FileChannel)readablebytechannel).position(l + ((FileChannel)readablebytechannel).position());
        } else
        {
            if (!$assertionsDisabled && l >= 0x7fffffffL)
            {
                throw new AssertionError();
            }
            content = c.a(readablebytechannel, l);
        }
        if (!isParsed())
        {
            parseDetails();
        }
    }

    final void parseDetails()
    {
        this;
        JVM INSTR monitorenter ;
        if (content != null)
        {
            ByteBuffer bytebuffer = content;
            content = null;
            bytebuffer.rewind();
            _parseDetails(bytebuffer);
            if (bytebuffer.remaining() > 0)
            {
                deadBytes = bytebuffer.slice();
            }
            if (!$assertionsDisabled && !verify(bytebuffer))
            {
                throw new AssertionError();
            }
        }
        break MISSING_BLOCK_LABEL_71;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    protected void setDeadBytes(ByteBuffer bytebuffer)
    {
        deadBytes = bytebuffer;
    }

    public void setParent(ContainerBox containerbox)
    {
        parent = containerbox;
    }

    static 
    {
        boolean flag;
        if (!com/googlecode/mp4parser/AbstractBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
