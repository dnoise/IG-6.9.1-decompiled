// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.render;


public final class b extends Enum
{

    public static final b a;
    public static final b b;
    public static final b c;
    public static final b d;
    public static final b e;
    private static final b f[];

    private b(String s, int i)
    {
        super(s, i);
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/instagram/cliffjumper/edit/photo/render/b, s);
    }

    public static b[] values()
    {
        return (b[])f.clone();
    }

    static 
    {
        a = new b("SUCCESS", 0);
        b = new b("FAIL", 1);
        c = new b("NATIVE_LIBRARY_FAIL", 2);
        d = new b("RENDER_EXCEPTION", 3);
        e = new b("UNSET", 4);
        b ab[] = new b[5];
        ab[0] = a;
        ab[1] = b;
        ab[2] = c;
        ab[3] = d;
        ab[4] = e;
        f = ab;
    }
}
