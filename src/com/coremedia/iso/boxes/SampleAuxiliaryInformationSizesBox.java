// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.c.b;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class SampleAuxiliaryInformationSizesBox extends AbstractFullBox
{

    static final boolean $assertionsDisabled = false;
    public static final String TYPE = "saiz";
    private String auxInfoType;
    private String auxInfoTypeParameter;
    private int defaultSampleInfoSize;
    private int sampleCount;
    private List sampleInfoSizes;

    public SampleAuxiliaryInformationSizesBox()
    {
        super("saiz");
        sampleInfoSizes = new LinkedList();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        if ((1 & getFlags()) == 1)
        {
            auxInfoType = e.l(bytebuffer);
            auxInfoTypeParameter = e.l(bytebuffer);
        }
        defaultSampleInfoSize = (short)e.f(bytebuffer);
        sampleCount = b.a(e.b(bytebuffer));
        sampleInfoSizes.clear();
        if (defaultSampleInfoSize == 0)
        {
            for (int i = 0; i < sampleCount; i++)
            {
                sampleInfoSizes.add(Short.valueOf((short)e.f(bytebuffer)));
            }

        }
    }

    public String getAuxInfoType()
    {
        return auxInfoType;
    }

    public String getAuxInfoTypeParameter()
    {
        return auxInfoTypeParameter;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        if ((1 & getFlags()) == 1)
        {
            bytebuffer.put(IsoFile.fourCCtoBytes(auxInfoType));
            bytebuffer.put(IsoFile.fourCCtoBytes(auxInfoTypeParameter));
        }
        g.d(bytebuffer, defaultSampleInfoSize);
        if (defaultSampleInfoSize == 0)
        {
            g.b(bytebuffer, sampleInfoSizes.size());
            for (Iterator iterator = sampleInfoSizes.iterator(); iterator.hasNext(); g.d(bytebuffer, ((Short)iterator.next()).shortValue())) { }
        } else
        {
            g.b(bytebuffer, sampleCount);
        }
    }

    protected long getContentSize()
    {
        byte byte0 = 4;
        if ((1 & getFlags()) == 1)
        {
            byte0 = 12;
        }
        int i = byte0 + 5;
        int j;
        if (defaultSampleInfoSize == 0)
        {
            j = sampleInfoSizes.size();
        } else
        {
            j = 0;
        }
        return (long)(j + i);
    }

    public int getDefaultSampleInfoSize()
    {
        return defaultSampleInfoSize;
    }

    public int getSampleCount()
    {
        return sampleCount;
    }

    public List getSampleInfoSizes()
    {
        return sampleInfoSizes;
    }

    public void setAuxInfoType(String s)
    {
        auxInfoType = s;
    }

    public void setAuxInfoTypeParameter(String s)
    {
        auxInfoTypeParameter = s;
    }

    public void setDefaultSampleInfoSize(int i)
    {
        if (!$assertionsDisabled && i > 255)
        {
            throw new AssertionError();
        } else
        {
            defaultSampleInfoSize = i;
            return;
        }
    }

    public void setSampleCount(int i)
    {
        sampleCount = i;
    }

    public void setSampleInfoSizes(List list)
    {
        sampleInfoSizes = list;
    }

    public String toString()
    {
        return (new StringBuilder("SampleAuxiliaryInformationSizesBox{defaultSampleInfoSize=")).append(defaultSampleInfoSize).append(", sampleCount=").append(sampleCount).append(", auxInfoType='").append(auxInfoType).append('\'').append(", auxInfoTypeParameter='").append(auxInfoTypeParameter).append('\'').append('}').toString();
    }

    static 
    {
        boolean flag;
        if (!com/coremedia/iso/boxes/SampleAuxiliaryInformationSizesBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
