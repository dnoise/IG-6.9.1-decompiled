// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.tiltshift;

import com.facebook.au;

public final class l extends Enum
{

    public static final l a;
    public static final l b;
    public static final l c;
    private static final l f[];
    private final int d;
    private final int e;

    private l(String s, int i, int j, int k)
    {
        super(s, i);
        d = j;
        e = k;
    }

    public static l a(int i)
    {
        for (int j = 0; j < values().length; j++)
        {
            if (values()[j].a() == i)
            {
                return values()[j];
            }
        }

        throw new IndexOutOfBoundsException();
    }

    public static l valueOf(String s)
    {
        return (l)Enum.valueOf(com/instagram/cliffjumper/edit/photo/tiltshift/l, s);
    }

    public static l[] values()
    {
        return (l[])f.clone();
    }

    public final int a()
    {
        return d;
    }

    public final int b()
    {
        return e;
    }

    static 
    {
        a = new l("OFF", 0, -1, au.mode_tilt_off);
        b = new l("RADIAL", 1, 1, au.mode_tilt_radial_off);
        c = new l("LINE", 2, 0, au.mode_tilt_linear_off);
        l al[] = new l[3];
        al[0] = a;
        al[1] = b;
        al[2] = c;
        f = al;
    }
}
