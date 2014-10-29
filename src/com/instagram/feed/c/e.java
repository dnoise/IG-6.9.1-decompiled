// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.c;

import com.facebook.e.a.a;
import com.instagram.common.analytics.b;
import com.instagram.feed.d.l;
import com.instagram.user.c.c;

// Referenced classes of package com.instagram.feed.c:
//            f, g

public final class e
{

    private final String a;
    private final com.instagram.feed.g.a b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private Long i;
    private long j;
    private int k;
    private int l;
    private int m;
    private double n;
    private Boolean o;

    e(String s, com.instagram.feed.g.a a1)
    {
        j = -1L;
        k = -1;
        l = -1;
        m = -1;
        n = -1D;
        o = null;
        a = s;
        b = a1;
    }

    static String a(c c1)
    {
        switch (com.instagram.feed.c.f.a[c1.ordinal()])
        {
        default:
            com.facebook.e.a.a.a("InsightsEventBuilder", "Follow status: %s not handled. Using 'unknown' instead.", new Object[] {
                c1
            });
            return "unknown";

        case 1: // '\001'
            return "unknown";

        case 2: // '\002'
            return "fetching";

        case 3: // '\003'
            return "not_following";

        case 4: // '\004'
            return "following";

        case 5: // '\005'
            return "requested";
        }
    }

    public final b a()
    {
        b b1 = new b(a, b);
        if (c != null)
        {
            b1.a("m_pk", c);
        }
        if (d != null)
        {
            b1.a("a_pk", d);
        }
        if (i != null)
        {
            b1.a("m_ts", i.longValue());
        }
        if (k != -1)
        {
            b1.a("m_t", k);
        }
        if (e != null)
        {
            b1.a("tracking_token", e);
        }
        if (f != null)
        {
            b1.a("source_of_action", f);
        }
        if (g != null)
        {
            b1.a("follow_status", g);
        }
        if (l != -1)
        {
            b1.a("m_ix", l);
        }
        if (j != -1L)
        {
            b1.a("timespent", j);
        }
        if (h != null)
        {
            b1.a("response", h);
        }
        if (m != -1)
        {
            b1.a("time", m);
        }
        if (n != -1D)
        {
            b1.a("timeAsPercent", n);
        }
        if (k == com.instagram.model.a.a.b.a() && o != null)
        {
            String s;
            if (o.booleanValue())
            {
                s = "1";
            } else
            {
                s = "0";
            }
            b1.a("audio_enabled", s);
        }
        if (!com.instagram.common.s.b.d())
        {
            b1.a("production_build", "0");
        }
        return b1;
    }

    public final e a(int i1)
    {
        l = i1;
        return this;
    }

    public final e a(long l1)
    {
        j = l1;
        return this;
    }

    public final e a(l l1)
    {
        c = l1.d();
        d = l1.c().g();
        i = l1.m();
        k = l1.w().a();
        f = b.j_();
        g = a(l1.c().t());
        String s;
        if (com.instagram.feed.c.g.b(l1, b))
        {
            s = l1.ai();
        } else
        {
            s = l1.aj();
        }
        e = s;
        return this;
    }

    public final e a(String s)
    {
        e = s;
        return this;
    }

    public final e b(String s)
    {
        h = s;
        return this;
    }
}
