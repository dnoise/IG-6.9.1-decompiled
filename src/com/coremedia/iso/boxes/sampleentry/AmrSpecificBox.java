// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;

public class AmrSpecificBox extends AbstractBox
{

    public static final String TYPE = "damr";
    private int decoderVersion;
    private int framesPerSample;
    private int modeChangePeriod;
    private int modeSet;
    private String vendor;

    public AmrSpecificBox()
    {
        super("damr");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        byte abyte0[] = new byte[4];
        bytebuffer.get(abyte0);
        vendor = IsoFile.bytesToFourCC(abyte0);
        decoderVersion = e.f(bytebuffer);
        modeSet = e.d(bytebuffer);
        modeChangePeriod = e.f(bytebuffer);
        framesPerSample = e.f(bytebuffer);
    }

    public void getContent(ByteBuffer bytebuffer)
    {
        bytebuffer.put(IsoFile.fourCCtoBytes(vendor));
        g.d(bytebuffer, decoderVersion);
        g.b(bytebuffer, modeSet);
        g.d(bytebuffer, modeChangePeriod);
        g.d(bytebuffer, framesPerSample);
    }

    protected long getContentSize()
    {
        return 9L;
    }

    public int getDecoderVersion()
    {
        return decoderVersion;
    }

    public int getFramesPerSample()
    {
        return framesPerSample;
    }

    public int getModeChangePeriod()
    {
        return modeChangePeriod;
    }

    public int getModeSet()
    {
        return modeSet;
    }

    public String getVendor()
    {
        return vendor;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("AmrSpecificBox[vendor=").append(getVendor());
        stringbuilder.append(";decoderVersion=").append(getDecoderVersion());
        stringbuilder.append(";modeSet=").append(getModeSet());
        stringbuilder.append(";modeChangePeriod=").append(getModeChangePeriod());
        stringbuilder.append(";framesPerSample=").append(getFramesPerSample());
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
