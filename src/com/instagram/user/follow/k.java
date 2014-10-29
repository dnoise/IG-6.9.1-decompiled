// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.follow;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.y.e.a;

// Referenced classes of package com.instagram.user.follow:
//            m, l, n

public final class k extends b
{

    private com.instagram.user.c.a a;
    private int d;

    public k(Context context, an an, int i, com.instagram.user.c.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), m());
        d = i;
        a = a1;
    }

    private static String a(int i)
    {
        switch (com.instagram.user.follow.m.a[i - 1])
        {
        default:
            return null;

        case 1: // '\001'
            return "create";

        case 2: // '\002'
        case 3: // '\003'
            return "destroy";

        case 4: // '\004'
            return "ignore";

        case 5: // '\005'
            return "approve";
        }
    }

    private static com.instagram.api.j.a m()
    {
        return new l();
    }

    public final void a(j j1)
    {
        com.instagram.user.follow.n.a();
        com.instagram.user.follow.n.b(a);
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        b1.a("user_id", a.g());
    }

    public final Object b(j j1)
    {
        com.instagram.user.follow.n.a().a(a, j1.l().get("friendship_status"), this);
        return null;
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
        Object aobj[] = new Object[2];
        aobj[0] = a(d);
        aobj[1] = a.g();
        return String.format("friendships/%s/%s/", aobj);
    }

    public final void g()
    {
        super.g();
        com.instagram.common.t.b b1 = com.instagram.common.t.b.a();
        if (b1 != null)
        {
            (new com.instagram.common.analytics.b("follow_button_tapped", b1.b())).a("request_type", a(d)).a("nav_events", b1.c()).a();
        }
    }
}
