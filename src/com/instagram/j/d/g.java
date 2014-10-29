// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.d;

import android.util.SparseArray;

public final class g extends Enum
{

    public static final g a;
    public static final g b;
    public static final g c;
    public static final g d;
    public static final g e;
    public static final g f;
    private static final SparseArray h;
    private static final g i[];
    public int g;

    private g(String s, int j, int k)
    {
        super(s, j);
        g = k;
    }

    static SparseArray a()
    {
        return h;
    }

    public static g valueOf(String s)
    {
        return (g)Enum.valueOf(com/instagram/j/d/g, s);
    }

    public static g[] values()
    {
        return (g[])i.clone();
    }

    static 
    {
        int j = 0;
        a = new g("STATIC_HTML", 0, 0);
        b = new g("USER_SINGLE_MEDIA", 1, 1);
        c = new g("USER_MULTI_MEDIA", 2, 2);
        d = new g("USER_FOLLOW", 3, 3);
        e = new g("USER_SIMPLE", 4, 4);
        f = new g("GROUPED_FRIEND_REQUEST", 5, 6);
        g ag[] = new g[6];
        ag[0] = a;
        ag[1] = b;
        ag[2] = c;
        ag[3] = d;
        ag[4] = e;
        ag[5] = f;
        i = ag;
        h = new SparseArray();
        g ag1[] = values();
        for (int k = ag1.length; j < k; j++)
        {
            g g1 = ag1[j];
            h.put(g1.g, g1);
        }

    }
}
