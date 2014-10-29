// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.b;


public final class d extends Enum
{

    public static final d a;
    public static final d b;
    private static final d d[];
    public final String c;

    private d(String s, int i, String s1)
    {
        super(s, i);
        c = s1;
    }

    public static d valueOf(String s)
    {
        return (d)Enum.valueOf(com/instagram/creation/video/g/b/d, s);
    }

    public static d[] values()
    {
        return (d[])d.clone();
    }

    static 
    {
        a = new d("DECODER", 0, "decoder");
        b = new d("ENCODER", 1, "encoder");
        d ad[] = new d[2];
        ad[0] = a;
        ad[1] = b;
        d = ad;
    }
}
