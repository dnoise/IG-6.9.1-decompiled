// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso;

import com.coremedia.iso.boxes.MovieBox;
import com.coremedia.iso.boxes.a;
import com.googlecode.mp4parser.AbstractContainerBox;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso:
//            i, b, a

public class IsoFile extends AbstractContainerBox
    implements Closeable
{

    static final boolean $assertionsDisabled;
    protected b boxParser;
    ReadableByteChannel byteChannel;

    public IsoFile()
    {
        super("");
        boxParser = new i();
    }

    public IsoFile(File file)
    {
        super("");
        boxParser = new i();
        byteChannel = (new FileInputStream(file)).getChannel();
        boxParser = createBoxParser();
        parse();
    }

    public IsoFile(ReadableByteChannel readablebytechannel)
    {
        super("");
        boxParser = new i();
        byteChannel = readablebytechannel;
        boxParser = createBoxParser();
        parse();
    }

    public IsoFile(ReadableByteChannel readablebytechannel, b b1)
    {
        super("");
        boxParser = new i();
        byteChannel = readablebytechannel;
        boxParser = b1;
        parse();
    }

    public static String bytesToFourCC(byte abyte0[])
    {
        byte abyte1[] = {
            0, 0, 0, 0
        };
        if (abyte0 != null)
        {
            System.arraycopy(abyte0, 0, abyte1, 0, Math.min(abyte0.length, 4));
        }
        String s;
        try
        {
            s = new String(abyte1, "ISO-8859-1");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new Error("Required character encoding is missing", unsupportedencodingexception);
        }
        return s;
    }

    public static byte[] fourCCtoBytes(String s)
    {
        byte abyte0[] = new byte[4];
        if (s != null)
        {
            for (int j = 0; j < Math.min(4, s.length()); j++)
            {
                abyte0[j] = (byte)s.charAt(j);
            }

        }
        return abyte0;
    }

    private void parse()
    {
        boolean flag = false;
_L2:
        if (flag)
        {
            break; /* Loop/switch isn't completed */
        }
        a a1 = boxParser.a(byteChannel, this);
        if (a1 != null)
        {
            try
            {
                boxes.add(a1);
            }
            catch (EOFException eofexception)
            {
                flag = true;
            }
        } else
        {
            flag = true;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
    }

    public void close()
    {
        byteChannel.close();
    }

    protected b createBoxParser()
    {
        return new i();
    }

    public void getBox(WritableByteChannel writablebytechannel)
    {
        Iterator iterator = boxes.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            a a1 = (a)iterator.next();
            if (writablebytechannel instanceof FileChannel)
            {
                long l = ((FileChannel)writablebytechannel).position();
                a1.getBox(writablebytechannel);
                long l1 = ((FileChannel)writablebytechannel).position() - l;
                if (!$assertionsDisabled && l1 != a1.getSize())
                {
                    throw new AssertionError();
                }
            } else
            {
                a1.getBox(writablebytechannel);
            }
        } while (true);
    }

    public IsoFile getIsoFile()
    {
        return this;
    }

    public MovieBox getMovieBox()
    {
        for (Iterator iterator = boxes.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1 instanceof MovieBox)
            {
                return (MovieBox)a1;
            }
        }

        return null;
    }

    public long getNumOfBytesToFirstChild()
    {
        return 0L;
    }

    public long getSize()
    {
        Iterator iterator = boxes.iterator();
        long l;
        for (l = 0L; iterator.hasNext(); l += ((a)iterator.next()).getSize()) { }
        return l;
    }

    public void parse(ReadableByteChannel readablebytechannel, ByteBuffer bytebuffer, long l, com.coremedia.iso.a a1)
    {
        throw new IOException("This method is not meant to be called. Use #parse() directly.");
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("IsoFile[");
        if (boxes == null)
        {
            stringbuilder.append("unparsed");
        } else
        {
            int j = 0;
            while (j < boxes.size()) 
            {
                if (j > 0)
                {
                    stringbuilder.append(";");
                }
                stringbuilder.append(((a)boxes.get(j)).toString());
                j++;
            }
        }
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    static 
    {
        boolean flag;
        if (!com/coremedia/iso/IsoFile.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
