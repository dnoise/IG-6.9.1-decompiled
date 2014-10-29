// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.h264;

import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes.h264:
//            a

public final class AvcConfigurationBox extends AbstractBox
{

    public static final String TYPE = "avcC";
    public a avcDecoderConfigurationRecord;

    public AvcConfigurationBox()
    {
        super("avcC");
        avcDecoderConfigurationRecord = new a();
    }

    public final void _parseDetails(ByteBuffer bytebuffer)
    {
        avcDecoderConfigurationRecord = new a(bytebuffer);
    }

    public final int getAvcLevelIndication()
    {
        return avcDecoderConfigurationRecord.d;
    }

    public final int getAvcProfileIndication()
    {
        return avcDecoderConfigurationRecord.b;
    }

    public final int getBitDepthChromaMinus8()
    {
        return avcDecoderConfigurationRecord.k;
    }

    public final int getBitDepthLumaMinus8()
    {
        return avcDecoderConfigurationRecord.j;
    }

    public final int getChromaFormat()
    {
        return avcDecoderConfigurationRecord.i;
    }

    public final int getConfigurationVersion()
    {
        return avcDecoderConfigurationRecord.a;
    }

    public final void getContent(ByteBuffer bytebuffer)
    {
        avcDecoderConfigurationRecord.a(bytebuffer);
    }

    public final long getContentSize()
    {
        return avcDecoderConfigurationRecord.a();
    }

    public final int getLengthSizeMinusOne()
    {
        return avcDecoderConfigurationRecord.e;
    }

    public final String[] getPPS()
    {
        return avcDecoderConfigurationRecord.b();
    }

    public final List getPictureParameterSets()
    {
        return Collections.unmodifiableList(avcDecoderConfigurationRecord.g);
    }

    public final List getPictureParameterSetsAsStrings()
    {
        return avcDecoderConfigurationRecord.f();
    }

    public final int getProfileCompatibility()
    {
        return avcDecoderConfigurationRecord.c;
    }

    public final String[] getSPS()
    {
        return avcDecoderConfigurationRecord.c();
    }

    public final List getSequenceParameterSetExts()
    {
        return avcDecoderConfigurationRecord.l;
    }

    public final List getSequenceParameterSetExtsAsStrings()
    {
        return avcDecoderConfigurationRecord.e();
    }

    public final List getSequenceParameterSets()
    {
        return Collections.unmodifiableList(avcDecoderConfigurationRecord.f);
    }

    public final List getSequenceParameterSetsAsStrings()
    {
        return avcDecoderConfigurationRecord.d();
    }

    public final a getavcDecoderConfigurationRecord()
    {
        return avcDecoderConfigurationRecord;
    }

    public final boolean hasExts()
    {
        return avcDecoderConfigurationRecord.h;
    }

    public final void setAvcLevelIndication(int i)
    {
        avcDecoderConfigurationRecord.d = i;
    }

    public final void setAvcProfileIndication(int i)
    {
        avcDecoderConfigurationRecord.b = i;
    }

    public final void setBitDepthChromaMinus8(int i)
    {
        avcDecoderConfigurationRecord.k = i;
    }

    public final void setBitDepthLumaMinus8(int i)
    {
        avcDecoderConfigurationRecord.j = i;
    }

    public final void setChromaFormat(int i)
    {
        avcDecoderConfigurationRecord.i = i;
    }

    public final void setConfigurationVersion(int i)
    {
        avcDecoderConfigurationRecord.a = i;
    }

    public final void setHasExts(boolean flag)
    {
        avcDecoderConfigurationRecord.h = flag;
    }

    public final void setLengthSizeMinusOne(int i)
    {
        avcDecoderConfigurationRecord.e = i;
    }

    public final void setPictureParameterSets(List list)
    {
        avcDecoderConfigurationRecord.g = list;
    }

    public final void setProfileCompatibility(int i)
    {
        avcDecoderConfigurationRecord.c = i;
    }

    public final void setSequenceParameterSetExts(List list)
    {
        avcDecoderConfigurationRecord.l = list;
    }

    public final void setSequenceParameterSets(List list)
    {
        avcDecoderConfigurationRecord.f = list;
    }
}
