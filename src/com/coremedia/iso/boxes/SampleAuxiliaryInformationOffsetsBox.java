// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.c.b;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class SampleAuxiliaryInformationOffsetsBox extends AbstractFullBox
{

    public static final String TYPE = "saio";
    private long auxInfoType;
    private long auxInfoTypeParameter;
    private List offsets;

    public SampleAuxiliaryInformationOffsetsBox()
    {
        super("saio");
        offsets = new LinkedList();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        if ((1 & getFlags()) == 1)
        {
            auxInfoType = e.b(bytebuffer);
            auxInfoTypeParameter = e.b(bytebuffer);
        }
        int i = b.a(e.b(bytebuffer));
        offsets.clear();
        int j = 0;
        while (j < i) 
        {
            if (getVersion() == 0)
            {
                offsets.add(Long.valueOf(e.b(bytebuffer)));
            } else
            {
                offsets.add(Long.valueOf(e.h(bytebuffer)));
            }
            j++;
        }
    }

    public long getAuxInfoType()
    {
        return auxInfoType;
    }

    public long getAuxInfoTypeParameter()
    {
        return auxInfoTypeParameter;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        if ((1 & getFlags()) == 1)
        {
            g.b(bytebuffer, auxInfoType);
            g.b(bytebuffer, auxInfoTypeParameter);
        }
        g.b(bytebuffer, offsets.size());
        for (Iterator iterator = offsets.iterator(); iterator.hasNext();)
        {
            Long long1 = (Long)iterator.next();
            if (getVersion() == 0)
            {
                g.b(bytebuffer, long1.longValue());
            } else
            {
                g.a(bytebuffer, long1.longValue());
            }
        }

    }

    protected long getContentSize()
    {
        int i;
        int j;
        byte byte0;
        if (getVersion() == 0)
        {
            i = 4 * offsets.size();
        } else
        {
            i = 8 * offsets.size();
        }
        j = i + 8;
        if ((1 & getFlags()) == 1)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        return (long)(byte0 + j);
    }

    public List getOffsets()
    {
        return offsets;
    }

    public void setAuxInfoType(long l)
    {
        auxInfoType = l;
    }

    public void setAuxInfoTypeParameter(long l)
    {
        auxInfoTypeParameter = l;
    }

    public void setOffsets(List list)
    {
        offsets = list;
    }
}
