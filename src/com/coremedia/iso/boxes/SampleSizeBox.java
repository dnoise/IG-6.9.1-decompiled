// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.c.b;
import java.nio.ByteBuffer;

public class SampleSizeBox extends AbstractFullBox
{

    public static final String TYPE = "stsz";
    int sampleCount;
    private long sampleSize;
    private long sampleSizes[];

    public SampleSizeBox()
    {
        super("stsz");
        sampleSizes = new long[0];
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        sampleSize = e.b(bytebuffer);
        sampleCount = b.a(e.b(bytebuffer));
        if (sampleSize == 0L)
        {
            sampleSizes = new long[sampleCount];
            for (int i = 0; i < sampleCount; i++)
            {
                sampleSizes[i] = e.b(bytebuffer);
            }

        }
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, sampleSize);
        if (sampleSize == 0L)
        {
            g.b(bytebuffer, sampleSizes.length);
            long al[] = sampleSizes;
            int i = al.length;
            for (int j = 0; j < i; j++)
            {
                g.b(bytebuffer, al[j]);
            }

        } else
        {
            g.b(bytebuffer, sampleCount);
        }
    }

    protected long getContentSize()
    {
        int i;
        if (sampleSize == 0L)
        {
            i = 4 * sampleSizes.length;
        } else
        {
            i = 0;
        }
        return (long)(i + 12);
    }

    public long getSampleCount()
    {
        if (sampleSize > 0L)
        {
            return (long)sampleCount;
        } else
        {
            return (long)sampleSizes.length;
        }
    }

    public long getSampleSize()
    {
        return sampleSize;
    }

    public long getSampleSizeAtIndex(int i)
    {
        if (sampleSize > 0L)
        {
            return sampleSize;
        } else
        {
            return sampleSizes[i];
        }
    }

    public long[] getSampleSizes()
    {
        return sampleSizes;
    }

    public void setSampleSize(long l)
    {
        sampleSize = l;
    }

    public void setSampleSizes(long al[])
    {
        sampleSizes = al;
    }

    public String toString()
    {
        return (new StringBuilder("SampleSizeBox[sampleSize=")).append(getSampleSize()).append(";sampleCount=").append(getSampleCount()).append("]").toString();
    }
}
