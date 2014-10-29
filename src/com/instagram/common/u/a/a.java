// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u.a;

import com.instagram.common.analytics.b;

public final class a extends b
{

    private final com.instagram.common.u.c.a a;

    public a(com.instagram.common.u.c.a a1, String s)
    {
        super("push_notification", null);
        a = a1;
        g();
        a("step", s);
    }

    private void g()
    {
        if (a != null)
        {
            String s = a.a();
            if (s != null)
            {
                a("pi", s);
            }
        }
    }
}
