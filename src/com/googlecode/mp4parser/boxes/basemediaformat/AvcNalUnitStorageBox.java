// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.basemediaformat;

import com.coremedia.iso.boxes.h264.AvcConfigurationBox;
import com.coremedia.iso.boxes.h264.a;
import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;
import java.util.List;

public class AvcNalUnitStorageBox extends AbstractBox
{

    a avcDecoderConfigurationRecord;

    public AvcNalUnitStorageBox()
    {
        super("avcn");
    }

    public AvcNalUnitStorageBox(AvcConfigurationBox avcconfigurationbox)
    {
        super("avcn");
        avcDecoderConfigurationRecord = avcconfigurationbox.getavcDecoderConfigurationRecord();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        avcDecoderConfigurationRecord = new a(bytebuffer);
    }

    public a getAvcDecoderConfigurationRecord()
    {
        return avcDecoderConfigurationRecord;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        avcDecoderConfigurationRecord.a(bytebuffer);
    }

    protected long getContentSize()
    {
        return avcDecoderConfigurationRecord.a();
    }

    public int getLengthSizeMinusOne()
    {
        return avcDecoderConfigurationRecord.e;
    }

    public String[] getPPS()
    {
        return avcDecoderConfigurationRecord.b();
    }

    public List getPictureParameterSetsAsStrings()
    {
        return avcDecoderConfigurationRecord.f();
    }

    public String[] getSPS()
    {
        return avcDecoderConfigurationRecord.c();
    }

    public List getSequenceParameterSetExtsAsStrings()
    {
        return avcDecoderConfigurationRecord.e();
    }

    public List getSequenceParameterSetsAsStrings()
    {
        return avcDecoderConfigurationRecord.d();
    }

    public String toString()
    {
        return (new StringBuilder("AvcNalUnitStorageBox{SPS=")).append(avcDecoderConfigurationRecord.d()).append(",PPS=").append(avcDecoderConfigurationRecord.f()).append(",lengthSize=").append(1 + avcDecoderConfigurationRecord.e).append('}').toString();
    }
}
