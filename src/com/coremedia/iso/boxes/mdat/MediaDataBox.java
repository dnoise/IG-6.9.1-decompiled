// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.mdat;

import com.coremedia.iso.boxes.ContainerBox;
import com.coremedia.iso.boxes.a;
import com.coremedia.iso.c;
import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.c.b;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

public final class MediaDataBox
    implements a
{

    static final boolean $assertionsDisabled = false;
    public static final int BUFFER_SIZE = 0xa00000;
    private static Logger LOG = Logger.getLogger(com/coremedia/iso/boxes/mdat/MediaDataBox.getName());
    public static final String TYPE = "mdat";
    private Map cache;
    private ByteBuffer content;
    private long contentSize;
    private FileChannel fileChannel;
    ByteBuffer header;
    ContainerBox parent;
    private long startPosition;

    public MediaDataBox()
    {
        cache = new HashMap();
    }

    private boolean checkStillOk()
    {
        try
        {
            fileChannel.position(startPosition - (long)header.limit());
            ByteBuffer bytebuffer = ByteBuffer.allocate(header.limit());
            fileChannel.read(bytebuffer);
            header.rewind();
            bytebuffer.rewind();
            if (!$assertionsDisabled && !bytebuffer.equals(header))
            {
                throw new AssertionError("It seems that the content I want to read has already been overwritten.");
            }
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return false;
        }
        return true;
    }

    private static void transfer(FileChannel filechannel, long l, long l1, WritableByteChannel writablebytechannel)
    {
        for (long l2 = 0L; l2 < l1; l2 += filechannel.transferTo(l + l2, Math.min(0x3ff8000L, l1 - l2), writablebytechannel)) { }
    }

    public final void getBox(WritableByteChannel writablebytechannel)
    {
        if (fileChannel != null)
        {
            if (!$assertionsDisabled && !checkStillOk())
            {
                throw new AssertionError();
            } else
            {
                transfer(fileChannel, startPosition - (long)header.limit(), contentSize + (long)header.limit(), writablebytechannel);
                return;
            }
        } else
        {
            header.rewind();
            writablebytechannel.write(header);
            writablebytechannel.write(content);
            return;
        }
    }

    public final ByteBuffer getContent(long l, int i)
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = cache.keySet().iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Long long1 = (Long)iterator.next();
        if (long1.longValue() > l || l > 0xa00000L + long1.longValue()) goto _L4; else goto _L3
_L3:
        ByteBuffer bytebuffer1 = (ByteBuffer)((Reference)cache.get(long1)).get();
        if (bytebuffer1 == null) goto _L4; else goto _L5
_L5:
        if (long1.longValue() + (long)bytebuffer1.limit() < l + (long)i) goto _L4; else goto _L6
_L6:
        ByteBuffer bytebuffer;
        bytebuffer1.position((int)(l - long1.longValue()));
        bytebuffer = bytebuffer1.slice();
        bytebuffer.limit(i);
_L8:
        this;
        JVM INSTR monitorexit ;
        return bytebuffer;
_L2:
        java.nio.MappedByteBuffer mappedbytebuffer = fileChannel.map(java.nio.channels.FileChannel.MapMode.READ_ONLY, l + startPosition, Math.min(0xa00000L, contentSize - l));
        cache.put(Long.valueOf(l), new SoftReference(mappedbytebuffer));
        mappedbytebuffer.position(0);
        bytebuffer = mappedbytebuffer.slice();
        bytebuffer.limit(i);
        if (true) goto _L8; else goto _L7
_L7:
        Exception exception;
        exception;
        throw exception;
        IOException ioexception;
        ioexception;
        LOG.fine((new StringBuilder("Even mapping just 10MB of the source file into the memory failed. ")).append(ioexception).toString());
        throw new RuntimeException("Delayed reading of mdat content failed. Make sure not to close the FileChannel that has been used to create the IsoFile!", ioexception);
    }

    public final ByteBuffer getHeader()
    {
        return header;
    }

    public final ContainerBox getParent()
    {
        return parent;
    }

    public final long getSize()
    {
        return (long)header.limit() + contentSize;
    }

    public final String getType()
    {
        return "mdat";
    }

    public final void parse(ReadableByteChannel readablebytechannel, ByteBuffer bytebuffer, long l, com.coremedia.iso.b b1)
    {
        header = bytebuffer;
        contentSize = l;
        if ((readablebytechannel instanceof FileChannel) && l > (long)AbstractBox.MEM_MAP_THRESHOLD)
        {
            fileChannel = (FileChannel)readablebytechannel;
            startPosition = ((FileChannel)readablebytechannel).position();
            ((FileChannel)readablebytechannel).position(l + ((FileChannel)readablebytechannel).position());
            return;
        } else
        {
            content = c.a(readablebytechannel, b.a(l));
            cache.put(Long.valueOf(0L), new SoftReference(content));
            return;
        }
    }

    public final void setParent(ContainerBox containerbox)
    {
        parent = containerbox;
    }

    static 
    {
        boolean flag;
        if (!com/coremedia/iso/boxes/mdat/MediaDataBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
