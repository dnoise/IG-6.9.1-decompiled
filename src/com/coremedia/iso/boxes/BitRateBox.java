// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;

public final class BitRateBox extends AbstractBox
{

    public static final String TYPE = "btrt";
    private long avgBitrate;
    private long bufferSizeDb;
    private long maxBitrate;

    public BitRateBox()
    {
        super("btrt");
    }

    public final void _parseDetails(ByteBuffer bytebuffer)
    {
        bufferSizeDb = e.b(bytebuffer);
        maxBitrate = e.b(bytebuffer);
        avgBitrate = e.b(bytebuffer);
    }

    public final long getAvgBitrate()
    {
        return avgBitrate;
    }

    public final long getBufferSizeDb()
    {
        return bufferSizeDb;
    }

    protected final void getContent(ByteBuffer bytebuffer)
    {
        g.b(bytebuffer, bufferSizeDb);
        g.b(bytebuffer, maxBitrate);
        g.b(bytebuffer, avgBitrate);
    }

    protected final long getContentSize()
    {
        return 12L;
    }

    public final long getMaxBitrate()
    {
        return maxBitrate;
    }

    public final void setAvgBitrate(long l)
    {
        avgBitrate = l;
    }

    public final void setBufferSizeDb(long l)
    {
        bufferSizeDb = l;
    }

    public final void setMaxBitrate(long l)
    {
        maxBitrate = l;
    }
}
