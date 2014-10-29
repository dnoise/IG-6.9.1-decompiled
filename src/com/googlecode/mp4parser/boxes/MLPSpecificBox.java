// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes;

import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.boxes.mp4.a.c;
import com.googlecode.mp4parser.boxes.mp4.a.d;
import java.nio.ByteBuffer;

public class MLPSpecificBox extends AbstractBox
{

    int format_info;
    int peak_data_rate;
    int reserved;
    int reserved2;

    public MLPSpecificBox()
    {
        super("dmlp");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        c c1 = new c(bytebuffer);
        format_info = c1.a(32);
        peak_data_rate = c1.a(15);
        reserved = c1.a(1);
        reserved2 = c1.a(32);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        d d1 = new d(bytebuffer);
        d1.a(format_info, 32);
        d1.a(peak_data_rate, 15);
        d1.a(reserved, 1);
        d1.a(reserved2, 32);
    }

    protected long getContentSize()
    {
        return 10L;
    }

    public int getFormat_info()
    {
        return format_info;
    }

    public int getPeak_data_rate()
    {
        return peak_data_rate;
    }

    public int getReserved()
    {
        return reserved;
    }

    public int getReserved2()
    {
        return reserved2;
    }

    public void setFormat_info(int i)
    {
        format_info = i;
    }

    public void setPeak_data_rate(int i)
    {
        peak_data_rate = i;
    }

    public void setReserved(int i)
    {
        reserved = i;
    }

    public void setReserved2(int i)
    {
        reserved2 = i;
    }
}
