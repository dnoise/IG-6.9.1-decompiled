// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.c;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.y.e.a;

// Referenced classes of package com.instagram.android.login.c:
//            f

public final class e extends b
{

    private String a;
    private String d;
    private String e;

    public e(Context context, an an, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
    }

    private static f d(j j1)
    {
        return new f((com.instagram.user.c.a)com.instagram.service.b.a.a().treeToValue(j1.l().get("user"), com/instagram/user/c/a), j1.l().get("token").asText());
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        super.a(b1);
        b1.a("fb_access_token", a);
        if (d != null)
        {
            b1.a("user_id", d);
        }
        if (e != null)
        {
            b1.a("user_email", e);
        }
    }

    public final void a(String s)
    {
        a = s;
        g();
    }

    public final void a(String s, String s1)
    {
        a = s;
        d = s1;
        g();
    }

    public final Object b(j j1)
    {
        return d(j1);
    }

    public final void b(String s, String s1)
    {
        a = s;
        e = s1;
        g();
    }

    public final boolean b()
    {
        return true;
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    public final boolean c(j j1)
    {
        return false;
    }

    protected final String c_()
    {
        return "fb/verify_access_token/";
    }

    public final boolean e_()
    {
        return true;
    }
}
