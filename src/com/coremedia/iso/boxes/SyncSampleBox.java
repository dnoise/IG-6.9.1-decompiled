// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.c.b;
import java.nio.ByteBuffer;

public class SyncSampleBox extends AbstractFullBox
{

    public static final String TYPE = "stss";
    private long sampleNumber[];

    public SyncSampleBox()
    {
        super("stss");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        int i = b.a(e.b(bytebuffer));
        sampleNumber = new long[i];
        for (int j = 0; j < i; j++)
        {
            sampleNumber[j] = e.b(bytebuffer);
        }

    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, sampleNumber.length);
        long al[] = sampleNumber;
        int i = al.length;
        for (int j = 0; j < i; j++)
        {
            g.b(bytebuffer, al[j]);
        }

    }

    protected long getContentSize()
    {
        return (long)(8 + 4 * sampleNumber.length);
    }

    public long[] getSampleNumber()
    {
        return sampleNumber;
    }

    public void setSampleNumber(long al[])
    {
        sampleNumber = al;
    }

    public String toString()
    {
        return (new StringBuilder("SyncSampleBox[entryCount=")).append(sampleNumber.length).append("]").toString();
    }
}
