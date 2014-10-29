// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.d;

import java.util.HashMap;
import java.util.Map;

public final class i extends Enum
{

    public static final i a;
    public static final i b;
    public static final i c;
    public static final i d;
    public static final i e;
    private static final Map g;
    private static final i h[];
    private String f;

    private i(String s, int j, String s1)
    {
        super(s, j);
        f = s1;
    }

    static Map a()
    {
        return g;
    }

    public static i valueOf(String s)
    {
        return (i)Enum.valueOf(com/instagram/j/d/i, s);
    }

    public static i[] values()
    {
        return (i[])h.clone();
    }

    static 
    {
        int j = 0;
        a = new i("USER", 0, "user");
        b = new i("LOCATION", 1, "location");
        c = new i("PHOTOMAP", 2, "photomap");
        d = new i("HASHTAG", 3, "hashtag");
        e = new i("MENTION", 4, "mention");
        i ai[] = new i[5];
        ai[0] = a;
        ai[1] = b;
        ai[2] = c;
        ai[3] = d;
        ai[4] = e;
        h = ai;
        g = new HashMap();
        i ai1[] = values();
        for (int k = ai1.length; j < k; j++)
        {
            i l = ai1[j];
            g.put(l.f, l);
        }

    }
}
