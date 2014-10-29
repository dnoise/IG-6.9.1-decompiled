// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.jpeg;

import com.instagram.common.l.a.f;

public class NativeImage
{

    private int mBufferId;
    private int mHeight;
    private int mWidth;

    public NativeImage(int i, int j, int k)
    {
        mBufferId = i;
        mWidth = j;
        mHeight = k;
    }

    public void assertDimensions(int i, int j)
    {
        boolean flag = true;
        boolean flag1;
        if (getWidth() == i)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        f.a(flag1);
        if (getHeight() != j)
        {
            flag = false;
        }
        f.a(flag);
    }

    public int getBufferId()
    {
        return mBufferId;
    }

    public int getHeight()
    {
        return mHeight;
    }

    public int getWidth()
    {
        return mWidth;
    }
}
