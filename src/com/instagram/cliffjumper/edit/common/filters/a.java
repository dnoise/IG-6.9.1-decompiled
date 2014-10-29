// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.filters;

import com.facebook.au;
import com.facebook.az;

public final class a extends Enum
{

    public static final a a;
    public static final a b;
    public static final a c;
    public static final a d;
    public static final a e;
    public static final a f;
    public static final a g;
    public static final a h;
    private static final a k[];
    private final int i;
    private final int j;

    private a(String s, int l, int i1, int j1)
    {
        super(s, l);
        i = i1;
        j = j1;
    }

    public static a valueOf(String s)
    {
        return (a)Enum.valueOf(com/instagram/cliffjumper/edit/common/filters/a, s);
    }

    public static a[] values()
    {
        return (a[])k.clone();
    }

    public final int a()
    {
        return i;
    }

    public final int b()
    {
        return j;
    }

    static 
    {
        a = new a("BRIGHTNESS", 0, au.tool_brightness, az.brightness);
        b = new a("CONTRAST", 1, au.tool_contrast, az.contrast);
        c = new a("SATURATION", 2, au.tool_saturation, az.saturation);
        d = new a("WARMTH", 3, au.tool_warmth, az.warmth);
        e = new a("VIGNETTE", 4, au.tool_vignette, az.vignette);
        f = new a("SHARPEN", 5, au.tool_sharpen, az.sharpen);
        g = new a("SHADOWS", 6, au.tool_shadows, az.shadows);
        h = new a("HIGHLIGHTS", 7, au.tool_highlights, az.highlights);
        a aa[] = new a[8];
        aa[0] = a;
        aa[1] = b;
        aa[2] = c;
        aa[3] = d;
        aa[4] = e;
        aa[5] = f;
        aa[6] = g;
        aa[7] = h;
        k = aa;
    }
}
