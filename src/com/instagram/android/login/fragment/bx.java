// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import com.facebook.as;
import com.instagram.common.ui.colorfilter.a;

public final class bx extends Enum
{

    public static final bx a;
    public static final bx b;
    public static final bx c;
    private static final bx e[];
    private final int d;

    private bx(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    private ColorFilter a(Context context)
    {
        return com.instagram.common.ui.colorfilter.a.a(context.getResources().getColor(d));
    }

    static ColorFilter a(bx bx1, Context context)
    {
        return bx1.a(context);
    }

    public static bx valueOf(String s)
    {
        return (bx)Enum.valueOf(com/instagram/android/login/fragment/bx, s);
    }

    public static bx[] values()
    {
        return (bx[])e.clone();
    }

    static 
    {
        a = new bx("Unchecked", 0, as.grey_2);
        b = new bx("Invalid", 1, as.red_medium);
        c = new bx("Valid", 2, as.green_medium);
        bx abx[] = new bx[3];
        abx[0] = a;
        abx[1] = b;
        abx[2] = c;
        e = abx;
    }
}
