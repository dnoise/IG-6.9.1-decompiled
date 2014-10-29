// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.j;

import com.facebook.ar;
import com.facebook.az;

final class b extends Enum
{

    public static final b a;
    public static final b b;
    public static final b c;
    private static final b g[];
    public final int d;
    public final int e;
    public final int f;

    private b(String s, int i, int j, int k, int l)
    {
        super(s, i);
        d = j;
        f = k;
        e = l;
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/instagram/android/j/b, s);
    }

    public static b[] values()
    {
        return (b[])g.clone();
    }

    static 
    {
        a = new b("EatingDisorder", 0, ar.eating_disorder_warning, ar.eating_disorders_tags, az.eating_disorder_url);
        b = new b("SelfHarm", 1, ar.self_harm_warning, ar.self_harm_tags, az.self_harm_url);
        c = new b("RegulatedGoods", 2, ar.regulated_goods_warning, ar.regulated_goods_tags, az.regulated_goods_url);
        b ab[] = new b[3];
        ab[0] = a;
        ab[1] = b;
        ab[2] = c;
        g = ab;
    }
}
