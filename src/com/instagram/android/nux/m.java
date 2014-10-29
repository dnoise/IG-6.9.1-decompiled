// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

final class m
{

    public final int a;
    public final int b;
    public final int c;
    public Bitmap d;

    public m(int i, int j, int k)
    {
        a = i;
        b = j;
        c = k;
    }

    public final void a()
    {
        if (d != null)
        {
            d.recycle();
            d = null;
        }
    }

    public final void a(Resources resources)
    {
        if (d == null)
        {
            d = BitmapFactory.decodeResource(resources, a);
        }
    }
}
