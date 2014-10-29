// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.boxes.ContainerBox;
import com.coremedia.iso.boxes.a;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes.sampleentry:
//            SampleEntry

public class VisualSampleEntry extends SampleEntry
    implements ContainerBox
{

    static final boolean $assertionsDisabled = false;
    public static final String TYPE1 = "mp4v";
    public static final String TYPE2 = "s263";
    public static final String TYPE3 = "avc1";
    public static final String TYPE_ENCRYPTED = "encv";
    private String compressorname;
    private int depth;
    private int frameCount;
    private int height;
    private double horizresolution;
    private long predefined[];
    private double vertresolution;
    private int width;

    public VisualSampleEntry(String s)
    {
        super(s);
        horizresolution = 72D;
        vertresolution = 72D;
        frameCount = 1;
        depth = 24;
        predefined = new long[3];
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        _parseReservedAndDataReferenceIndex(bytebuffer);
        long l = e.d(bytebuffer);
        if (!$assertionsDisabled && 0L != l)
        {
            throw new AssertionError("reserved byte not 0");
        }
        long l1 = e.d(bytebuffer);
        if (!$assertionsDisabled && 0L != l1)
        {
            throw new AssertionError("reserved byte not 0");
        }
        predefined[0] = e.b(bytebuffer);
        predefined[1] = e.b(bytebuffer);
        predefined[2] = e.b(bytebuffer);
        width = e.d(bytebuffer);
        height = e.d(bytebuffer);
        horizresolution = e.i(bytebuffer);
        vertresolution = e.i(bytebuffer);
        long l2 = e.b(bytebuffer);
        if (!$assertionsDisabled && 0L != l2)
        {
            throw new AssertionError("reserved byte not 0");
        }
        frameCount = e.d(bytebuffer);
        int i = e.f(bytebuffer);
        if (i > 31)
        {
            System.out.println((new StringBuilder("invalid compressor name displayable data: ")).append(i).toString());
            i = 31;
        }
        byte abyte0[] = new byte[i];
        bytebuffer.get(abyte0);
        compressorname = k.a(abyte0);
        if (i < 31)
        {
            bytebuffer.get(new byte[31 - i]);
        }
        depth = e.d(bytebuffer);
        long l3 = e.d(bytebuffer);
        if (!$assertionsDisabled && 65535L != l3)
        {
            throw new AssertionError();
        } else
        {
            _parseChildBoxes(bytebuffer);
            return;
        }
    }

    public String getCompressorname()
    {
        return compressorname;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        _writeReservedAndDataReferenceIndex(bytebuffer);
        g.b(bytebuffer, 0);
        g.b(bytebuffer, 0);
        g.b(bytebuffer, predefined[0]);
        g.b(bytebuffer, predefined[1]);
        g.b(bytebuffer, predefined[2]);
        g.b(bytebuffer, getWidth());
        g.b(bytebuffer, getHeight());
        g.a(bytebuffer, getHorizresolution());
        g.a(bytebuffer, getVertresolution());
        g.b(bytebuffer, 0L);
        g.b(bytebuffer, getFrameCount());
        g.d(bytebuffer, k.b(getCompressorname()));
        bytebuffer.put(k.a(getCompressorname()));
        for (int i = k.b(getCompressorname()); i < 31;)
        {
            i++;
            bytebuffer.put((byte)0);
        }

        g.b(bytebuffer, getDepth());
        g.b(bytebuffer, 65535);
        _writeChildBoxes(bytebuffer);
    }

    protected long getContentSize()
    {
        Iterator iterator = boxes.iterator();
        long l;
        for (l = 78L; iterator.hasNext(); l += ((a)iterator.next()).getSize()) { }
        return l;
    }

    public int getDepth()
    {
        return depth;
    }

    public int getFrameCount()
    {
        return frameCount;
    }

    public int getHeight()
    {
        return height;
    }

    public double getHorizresolution()
    {
        return horizresolution;
    }

    public double getVertresolution()
    {
        return vertresolution;
    }

    public int getWidth()
    {
        return width;
    }

    public void setCompressorname(String s)
    {
        compressorname = s;
    }

    public void setDepth(int i)
    {
        depth = i;
    }

    public void setFrameCount(int i)
    {
        frameCount = i;
    }

    public void setHeight(int i)
    {
        height = i;
    }

    public void setHorizresolution(double d)
    {
        horizresolution = d;
    }

    public void setVertresolution(double d)
    {
        vertresolution = d;
    }

    public void setWidth(int i)
    {
        width = i;
    }

    static 
    {
        boolean flag;
        if (!com/coremedia/iso/boxes/sampleentry/VisualSampleEntry.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
