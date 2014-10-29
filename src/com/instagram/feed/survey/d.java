// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import com.fasterxml.jackson.a.l;

public final class d extends Enum
{

    public static final d a;
    public static final d b;
    private static final d d[];
    final String c;

    private d(String s, int i, String s1)
    {
        super(s, i);
        c = s1;
    }

    static d a(l l1)
    {
        String s = l1.getValueAsString();
        if ("single".equals(s))
        {
            return a;
        }
        if ("multiple".equals(s))
        {
            return b;
        } else
        {
            throw new UnsupportedOperationException();
        }
    }

    public static d valueOf(String s)
    {
        return (d)Enum.valueOf(com/instagram/feed/survey/d, s);
    }

    public static d[] values()
    {
        return (d[])d.clone();
    }

    static 
    {
        a = new d("SINGLE", 0, "single");
        b = new d("MULTIPLE", 1, "multiple");
        d ad[] = new d[2];
        ad[0] = a;
        ad[1] = b;
        d = ad;
    }
}
