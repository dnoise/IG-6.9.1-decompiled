// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes;

import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.boxes.mp4.a.c;
import com.googlecode.mp4parser.boxes.mp4.a.d;
import java.nio.ByteBuffer;

public class AC3SpecificBox extends AbstractBox
{

    int acmod;
    int bitRateCode;
    int bsid;
    int bsmod;
    int fscod;
    int lfeon;
    int reserved;

    public AC3SpecificBox()
    {
        super("dac3");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        c c1 = new c(bytebuffer);
        fscod = c1.a(2);
        bsid = c1.a(5);
        bsmod = c1.a(3);
        acmod = c1.a(3);
        lfeon = c1.a(1);
        bitRateCode = c1.a(5);
        reserved = c1.a(5);
    }

    public int getAcmod()
    {
        return acmod;
    }

    public int getBitRateCode()
    {
        return bitRateCode;
    }

    public int getBsid()
    {
        return bsid;
    }

    public int getBsmod()
    {
        return bsmod;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        d d1 = new d(bytebuffer);
        d1.a(fscod, 2);
        d1.a(bsid, 5);
        d1.a(bsmod, 3);
        d1.a(acmod, 3);
        d1.a(lfeon, 1);
        d1.a(bitRateCode, 5);
        d1.a(reserved, 5);
    }

    protected long getContentSize()
    {
        return 3L;
    }

    public int getFscod()
    {
        return fscod;
    }

    public int getLfeon()
    {
        return lfeon;
    }

    public int getReserved()
    {
        return reserved;
    }

    public void setAcmod(int i)
    {
        acmod = i;
    }

    public void setBitRateCode(int i)
    {
        bitRateCode = i;
    }

    public void setBsid(int i)
    {
        bsid = i;
    }

    public void setBsmod(int i)
    {
        bsmod = i;
    }

    public void setFscod(int i)
    {
        fscod = i;
    }

    public void setLfeon(int i)
    {
        lfeon = i;
    }

    public void setReserved(int i)
    {
        reserved = i;
    }

    public String toString()
    {
        return (new StringBuilder("AC3SpecificBox{fscod=")).append(fscod).append(", bsid=").append(bsid).append(", bsmod=").append(bsmod).append(", acmod=").append(acmod).append(", lfeon=").append(lfeon).append(", bitRateCode=").append(bitRateCode).append(", reserved=").append(reserved).append('}').toString();
    }
}
