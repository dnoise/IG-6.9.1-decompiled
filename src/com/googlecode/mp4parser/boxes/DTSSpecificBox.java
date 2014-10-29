// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.boxes.mp4.a.c;
import com.googlecode.mp4parser.boxes.mp4.a.d;
import java.nio.ByteBuffer;

public class DTSSpecificBox extends AbstractBox
{

    long DTSSamplingFrequency;
    int LBRDurationMod;
    long avgBitRate;
    int channelLayout;
    int coreLFEPresent;
    int coreLayout;
    int coreSize;
    int frameDuration;
    long maxBitRate;
    int multiAssetFlag;
    int pcmSampleDepth;
    int representationType;
    int reserved;
    int reservedBoxPresent;
    int stereoDownmix;
    int streamConstruction;

    public DTSSpecificBox()
    {
        super("ddts");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        DTSSamplingFrequency = e.b(bytebuffer);
        maxBitRate = e.b(bytebuffer);
        avgBitRate = e.b(bytebuffer);
        pcmSampleDepth = e.f(bytebuffer);
        c c1 = new c(bytebuffer);
        frameDuration = c1.a(2);
        streamConstruction = c1.a(5);
        coreLFEPresent = c1.a(1);
        coreLayout = c1.a(6);
        coreSize = c1.a(14);
        stereoDownmix = c1.a(1);
        representationType = c1.a(3);
        channelLayout = c1.a(16);
        multiAssetFlag = c1.a(1);
        LBRDurationMod = c1.a(1);
        reservedBoxPresent = c1.a(1);
        reserved = c1.a(5);
    }

    public long getAvgBitRate()
    {
        return avgBitRate;
    }

    public int getChannelLayout()
    {
        return channelLayout;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        g.b(bytebuffer, DTSSamplingFrequency);
        g.b(bytebuffer, maxBitRate);
        g.b(bytebuffer, avgBitRate);
        g.d(bytebuffer, pcmSampleDepth);
        d d1 = new d(bytebuffer);
        d1.a(frameDuration, 2);
        d1.a(streamConstruction, 5);
        d1.a(coreLFEPresent, 1);
        d1.a(coreLayout, 6);
        d1.a(coreSize, 14);
        d1.a(stereoDownmix, 1);
        d1.a(representationType, 3);
        d1.a(channelLayout, 16);
        d1.a(multiAssetFlag, 1);
        d1.a(LBRDurationMod, 1);
        d1.a(reservedBoxPresent, 1);
        d1.a(reserved, 5);
    }

    protected long getContentSize()
    {
        return 20L;
    }

    public int getCoreLFEPresent()
    {
        return coreLFEPresent;
    }

    public int getCoreLayout()
    {
        return coreLayout;
    }

    public int getCoreSize()
    {
        return coreSize;
    }

    public long getDTSSamplingFrequency()
    {
        return DTSSamplingFrequency;
    }

    public int getFrameDuration()
    {
        return frameDuration;
    }

    public int getLBRDurationMod()
    {
        return LBRDurationMod;
    }

    public long getMaxBitRate()
    {
        return maxBitRate;
    }

    public int getMultiAssetFlag()
    {
        return multiAssetFlag;
    }

    public int getPcmSampleDepth()
    {
        return pcmSampleDepth;
    }

    public int getRepresentationType()
    {
        return representationType;
    }

    public int getReserved()
    {
        return reserved;
    }

    public int getReservedBoxPresent()
    {
        return reservedBoxPresent;
    }

    public int getStereoDownmix()
    {
        return stereoDownmix;
    }

    public int getStreamConstruction()
    {
        return streamConstruction;
    }

    public void setAvgBitRate(long l)
    {
        avgBitRate = l;
    }

    public void setChannelLayout(int i)
    {
        channelLayout = i;
    }

    public void setCoreLFEPresent(int i)
    {
        coreLFEPresent = i;
    }

    public void setCoreLayout(int i)
    {
        coreLayout = i;
    }

    public void setCoreSize(int i)
    {
        coreSize = i;
    }

    public void setDTSSamplingFrequency(long l)
    {
        DTSSamplingFrequency = l;
    }

    public void setFrameDuration(int i)
    {
        frameDuration = i;
    }

    public void setLBRDurationMod(int i)
    {
        LBRDurationMod = i;
    }

    public void setMaxBitRate(long l)
    {
        maxBitRate = l;
    }

    public void setMultiAssetFlag(int i)
    {
        multiAssetFlag = i;
    }

    public void setPcmSampleDepth(int i)
    {
        pcmSampleDepth = i;
    }

    public void setRepresentationType(int i)
    {
        representationType = i;
    }

    public void setReserved(int i)
    {
        reserved = i;
    }

    public void setReservedBoxPresent(int i)
    {
        reservedBoxPresent = i;
    }

    public void setStereoDownmix(int i)
    {
        stereoDownmix = i;
    }

    public void setStreamConstruction(int i)
    {
        streamConstruction = i;
    }
}
