// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.apple;

import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;

public class GenericMediaHeaderTextAtom extends AbstractBox
{

    public static final String TYPE = "text";
    int unknown_1;
    int unknown_2;
    int unknown_3;
    int unknown_4;
    int unknown_5;
    int unknown_6;
    int unknown_7;
    int unknown_8;
    int unknown_9;

    public GenericMediaHeaderTextAtom()
    {
        super("text");
        unknown_1 = 0x10000;
        unknown_5 = 0x10000;
        unknown_9 = 0x40000000;
    }

    protected void _parseDetails(ByteBuffer bytebuffer)
    {
        unknown_1 = bytebuffer.getInt();
        unknown_2 = bytebuffer.getInt();
        unknown_3 = bytebuffer.getInt();
        unknown_4 = bytebuffer.getInt();
        unknown_5 = bytebuffer.getInt();
        unknown_6 = bytebuffer.getInt();
        unknown_7 = bytebuffer.getInt();
        unknown_8 = bytebuffer.getInt();
        unknown_9 = bytebuffer.getInt();
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        bytebuffer.putInt(unknown_1);
        bytebuffer.putInt(unknown_2);
        bytebuffer.putInt(unknown_3);
        bytebuffer.putInt(unknown_4);
        bytebuffer.putInt(unknown_5);
        bytebuffer.putInt(unknown_6);
        bytebuffer.putInt(unknown_7);
        bytebuffer.putInt(unknown_8);
        bytebuffer.putInt(unknown_9);
    }

    protected long getContentSize()
    {
        return 36L;
    }

    public int getUnknown_1()
    {
        return unknown_1;
    }

    public int getUnknown_2()
    {
        return unknown_2;
    }

    public int getUnknown_3()
    {
        return unknown_3;
    }

    public int getUnknown_4()
    {
        return unknown_4;
    }

    public int getUnknown_5()
    {
        return unknown_5;
    }

    public int getUnknown_6()
    {
        return unknown_6;
    }

    public int getUnknown_7()
    {
        return unknown_7;
    }

    public int getUnknown_8()
    {
        return unknown_8;
    }

    public int getUnknown_9()
    {
        return unknown_9;
    }

    public void setUnknown_1(int i)
    {
        unknown_1 = i;
    }

    public void setUnknown_2(int i)
    {
        unknown_2 = i;
    }

    public void setUnknown_3(int i)
    {
        unknown_3 = i;
    }

    public void setUnknown_4(int i)
    {
        unknown_4 = i;
    }

    public void setUnknown_5(int i)
    {
        unknown_5 = i;
    }

    public void setUnknown_6(int i)
    {
        unknown_6 = i;
    }

    public void setUnknown_7(int i)
    {
        unknown_7 = i;
    }

    public void setUnknown_8(int i)
    {
        unknown_8 = i;
    }

    public void setUnknown_9(int i)
    {
        unknown_9 = i;
    }
}
