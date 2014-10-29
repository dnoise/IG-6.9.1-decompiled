// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.c;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.a.l;
import com.instagram.api.j.g;
import com.instagram.api.j.p;
import com.instagram.common.a.c.b;
import com.instagram.common.y.e.a;

// Referenced classes of package com.instagram.android.login.c:
//            k

public final class j extends g
{

    private String a;
    private k d;

    public j(Context context, an an, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
        d = new k(this);
    }

    protected final void a(b b1)
    {
        b1.a("q", a);
    }

    public final void a(String s)
    {
        a = s;
        g();
    }

    public final boolean a(String s, l l1, p p1)
    {
        if ("user".equals(s))
        {
            l1.nextToken();
            d.a(com.instagram.user.c.a.a(l1));
            p1.a(d);
            return true;
        }
        if ("has_valid_phone".equals(s))
        {
            l1.nextToken();
            d.a(l1.getBooleanValue());
            return true;
        }
        if ("can_email_reset".equals(s))
        {
            l1.nextToken();
            d.b(l1.getBooleanValue());
            return true;
        }
        if ("can_sms_reset".equals(s))
        {
            l1.nextToken();
            d.c(l1.getBooleanValue());
            return true;
        } else
        {
            return false;
        }
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
        return "users/lookup/";
    }

    public final boolean e_()
    {
        return true;
    }
}
