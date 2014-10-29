// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import com.instagram.android.k.b.d;
import com.instagram.common.a.c.a;
import com.instagram.common.a.c.b;

public final class ac extends d
{

    private final String a;

    public ac(String s)
    {
        a = s;
    }

    protected final void a(b b1)
    {
        b1.a("q", a);
    }

    public final int c()
    {
        return a.c;
    }

    protected final String d_()
    {
        return "users/search/";
    }
}
