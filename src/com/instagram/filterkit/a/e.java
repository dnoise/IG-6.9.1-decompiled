// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.a;


final class e extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    private static final e d[];

    private e(String s, int i)
    {
        super(s, i);
    }

    public static e valueOf(String s)
    {
        return (e)Enum.valueOf(com/instagram/filterkit/a/e, s);
    }

    public static e[] values()
    {
        return (e[])d.clone();
    }

    static 
    {
        a = new e("SURFACE_TEXTURE", 0);
        b = new e("SURFACE_HOLDER", 1);
        c = new e("PBUFFER", 2);
        e ae[] = new e[3];
        ae[0] = a;
        ae[1] = b;
        ae[2] = c;
        d = ae;
    }
}
