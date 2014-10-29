// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public final class AppleLosslessSpecificBox extends AbstractFullBox
{

    public static final String TYPE = "alac";
    private long bitRate;
    private int channels;
    private int historyMult;
    private int initialHistory;
    private int kModifier;
    private long maxCodedFrameSize;
    private long maxSamplePerFrame;
    private long sampleRate;
    private int sampleSize;
    private int unknown1;
    private int unknown2;

    public AppleLosslessSpecificBox()
    {
        super("alac");
    }

    public final void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        maxSamplePerFrame = e.b(bytebuffer);
        unknown1 = e.f(bytebuffer);
        sampleSize = e.f(bytebuffer);
        historyMult = e.f(bytebuffer);
        initialHistory = e.f(bytebuffer);
        kModifier = e.f(bytebuffer);
        channels = e.f(bytebuffer);
        unknown2 = e.d(bytebuffer);
        maxCodedFrameSize = e.b(bytebuffer);
        bitRate = e.b(bytebuffer);
        sampleRate = e.b(bytebuffer);
    }

    public final long getBitRate()
    {
        return bitRate;
    }

    public final int getChannels()
    {
        return channels;
    }

    protected final void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, maxSamplePerFrame);
        g.d(bytebuffer, unknown1);
        g.d(bytebuffer, sampleSize);
        g.d(bytebuffer, historyMult);
        g.d(bytebuffer, initialHistory);
        g.d(bytebuffer, kModifier);
        g.d(bytebuffer, channels);
        g.b(bytebuffer, unknown2);
        g.b(bytebuffer, maxCodedFrameSize);
        g.b(bytebuffer, bitRate);
        g.b(bytebuffer, sampleRate);
    }

    protected final long getContentSize()
    {
        return 28L;
    }

    public final int getHistoryMult()
    {
        return historyMult;
    }

    public final int getInitialHistory()
    {
        return initialHistory;
    }

    public final int getKModifier()
    {
        return kModifier;
    }

    public final long getMaxCodedFrameSize()
    {
        return maxCodedFrameSize;
    }

    public final long getMaxSamplePerFrame()
    {
        return maxSamplePerFrame;
    }

    public final long getSampleRate()
    {
        return sampleRate;
    }

    public final int getSampleSize()
    {
        return sampleSize;
    }

    public final int getUnknown1()
    {
        return unknown1;
    }

    public final int getUnknown2()
    {
        return unknown2;
    }

    public final void setBitRate(int i)
    {
        bitRate = i;
    }

    public final void setChannels(int i)
    {
        channels = i;
    }

    public final void setHistoryMult(int i)
    {
        historyMult = i;
    }

    public final void setInitialHistory(int i)
    {
        initialHistory = i;
    }

    public final void setKModifier(int i)
    {
        kModifier = i;
    }

    public final void setMaxCodedFrameSize(int i)
    {
        maxCodedFrameSize = i;
    }

    public final void setMaxSamplePerFrame(int i)
    {
        maxSamplePerFrame = i;
    }

    public final void setSampleRate(int i)
    {
        sampleRate = i;
    }

    public final void setSampleSize(int i)
    {
        sampleSize = i;
    }

    public final void setUnknown1(int i)
    {
        unknown1 = i;
    }

    public final void setUnknown2(int i)
    {
        unknown2 = i;
    }
}
