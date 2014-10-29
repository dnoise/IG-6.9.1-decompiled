// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.c;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.y.e.a;

public final class o extends b
{

    private String a;
    private String d;

    public o(Context context, an an, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        if (a != null)
        {
            b1.a("user_id", a);
        } else
        {
            b1.a("user_email", d);
        }
        b1.a("device_id", com.instagram.common.z.a.a(k()));
        b1.a("guid", com.instagram.common.z.a.b(k()));
    }

    public final void a(String s)
    {
        a = s;
        super.g();
    }

    public final Object b(j j)
    {
        return null;
    }

    public final void b(String s)
    {
        d = s;
        super.g();
    }

    public final boolean b()
    {
        return true;
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    protected final String c_()
    {
        return "accounts/send_password_reset/";
    }

    public final boolean e_()
    {
        return true;
    }
}
