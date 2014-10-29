// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.e;

import com.instagram.common.a.c.b;
import com.instagram.common.y.e;

public abstract class a extends com.instagram.common.a.a.a
{

    private final String a;

    protected a(String s)
    {
        a = s;
    }

    public b a()
    {
        b b1 = new b();
        b1.a("access_token", a);
        return b1;
    }

    protected abstract String b();

    public int c()
    {
        return com.instagram.common.a.c.a.c;
    }

    public final String g_()
    {
        Object aobj[] = new Object[2];
        aobj[0] = "https://graph.facebook.com/";
        aobj[1] = b();
        return e.a("%s%s", aobj);
    }
}
