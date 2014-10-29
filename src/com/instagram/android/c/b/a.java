// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.b;

import com.fasterxml.jackson.a.l;
import com.instagram.api.k.a.b;
import com.instagram.api.k.a.d;
import com.instagram.api.k.a.f;

public final class a extends b
{

    private final String a;
    private final String b;
    private final String d;

    public a(String s, String s1, String s2)
    {
        a = s;
        b = s1;
        d = s2;
    }

    protected final d a(l l)
    {
        return f.a(l);
    }

    protected final void a(com.instagram.api.b.a a1)
    {
        a1.a("old_password", a);
        a1.a("new_password1", b);
        a1.a("new_password2", d);
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    protected final String d_()
    {
        return "accounts/change_password/";
    }

    public final boolean e_()
    {
        return true;
    }
}
