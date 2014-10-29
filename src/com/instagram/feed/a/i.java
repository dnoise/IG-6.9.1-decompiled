// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.a;

import com.instagram.api.k.a.d;
import com.instagram.feed.f.a;
import com.instagram.feed.f.b;
import java.util.List;

public class i extends d
{

    private a a;
    List e;
    Boolean s;
    boolean t;
    String u;
    Integer v;

    public i()
    {
        a = com.instagram.feed.f.a.a();
    }

    protected i c()
    {
        if (t)
        {
            a.e();
        }
        if (u != null)
        {
            a.a(b.c, u);
        } else
        if (s != null)
        {
            if (!s.booleanValue())
            {
                a.a(b.a, null);
                return this;
            }
            if (a.b() == b.a)
            {
                a.a(b.b, null);
                return this;
            }
        }
        return this;
    }

    public final List t()
    {
        return e;
    }

    public final a u()
    {
        if (a.b() == b.b)
        {
            a.a(e);
        }
        return a;
    }
}
