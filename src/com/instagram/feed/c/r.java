// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.c;

import com.instagram.common.analytics.b;
import com.instagram.common.l.a.f;
import com.instagram.feed.d.l;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.feed.c:
//            g, e

public final class r
{

    private final String a;
    private final com.instagram.feed.g.a b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private Long h;
    private int i;
    private int j;
    private int k;
    private int l;
    private double m;
    private Boolean n;
    private Boolean o;
    private String p;
    private String q;
    private String r;
    private String s;

    r(String s1, com.instagram.feed.g.a a1)
    {
        i = -1;
        j = -1;
        k = -1;
        l = -1;
        m = -1D;
        a = s1;
        b = a1;
    }

    private static String a(l l1, com.instagram.feed.g.a a1)
    {
        if (com.instagram.feed.c.g.b(l1, a1))
        {
            return "ad";
        }
        if (com.instagram.feed.c.g.c(l1, a1))
        {
            return "organic";
        } else
        {
            return "none";
        }
    }

    private static String b(l l1, com.instagram.feed.g.a a1)
    {
        if (com.instagram.feed.c.g.b(l1, a1))
        {
            return l1.ai();
        }
        if (com.instagram.feed.c.g.c(l1, a1))
        {
            return l1.aj();
        }
        if (l1.ag())
        {
            return l1.i();
        } else
        {
            return null;
        }
    }

    private static String e(int i1)
    {
        if (i1 == 1)
        {
            return "MEDIA_ERROR_UNKNOWN";
        }
        if (i1 == 100)
        {
            return "MEDIA_ERROR_SERVER_DIED";
        } else
        {
            return null;
        }
    }

    private static String f(int i1)
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.instagram.common.l.a.f.b(flag);
        if (i1 == -1004)
        {
            return "MEDIA_ERROR_IO";
        }
        if (i1 == -1007)
        {
            return "MEDIA_ERROR_MALFORMED";
        }
        if (i1 == -1010)
        {
            return "MEDIA_ERROR_UNSUPPORTED";
        }
        if (i1 == -110)
        {
            return "MEDIA_ERROR_TIMED_OUT";
        } else
        {
            return null;
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
        if (h != null)
        {
            b1.a("m_ts", h.longValue());
        }
        if (e != null)
        {
            b1.a("tracking_token", e);
        }
        if (f != null)
        {
            b1.a("follow_status", f);
        }
        if (i != -1)
        {
            b1.a("m_ix", i);
        }
        if (g != null)
        {
            b1.a("response", g);
        }
        if (j != -1)
        {
            b1.a("time", (float)j / 1000F);
        }
        if (k != -1)
        {
            b1.a("duration", (float)k / 1000F);
        }
        if (m != -1D)
        {
            b1.a("timeAsPercent", m);
        }
        if (n != null)
        {
            String s2;
            if (n.booleanValue())
            {
                s2 = "1";
            } else
            {
                s2 = "0";
            }
            b1.a("playing_audio", s2);
        }
        if (q != null)
        {
            b1.a("original_start_reason", q);
        }
        if (p != null)
        {
            b1.a("reason", p);
        }
        if (o != null)
        {
            String s1;
            if (o.booleanValue())
            {
                s1 = "1";
            } else
            {
                s1 = "0";
            }
            b1.a("initial", s1);
        }
        if (l != -1)
        {
            b1.a("lsp", (float)l / 1000F);
        }
        if (s != null)
        {
            b1.a("system_volume", s);
        }
        if (!com.instagram.common.s.b.d())
        {
            b1.a("production_build", "0");
        }
        b1.a("a_i", r);
        return b1;
    }

    public final r a(double d1)
    {
        m = d1;
        return this;
    }

    public final r a(int i1)
    {
        i = i1;
        return this;
    }

    public final r a(int i1, int j1)
    {
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            p = f(j1);
        }
        if (p == null)
        {
            p = e(i1);
        }
        return this;
    }

    public final r a(l l1)
    {
        c = l1.d();
        d = l1.c().g();
        h = l1.m();
        f = com.instagram.feed.c.e.a(l1.c().t());
        e = b(l1, b);
        r = a(l1, b);
        return this;
    }

    public final r a(String s1)
    {
        s = s1;
        return this;
    }

    public final r a(boolean flag)
    {
        n = Boolean.valueOf(flag);
        return this;
    }

    public final r b(int i1)
    {
        j = i1;
        return this;
    }

    public final r b(String s1)
    {
        q = s1;
        return this;
    }

    public final r b(boolean flag)
    {
        o = Boolean.valueOf(flag);
        return this;
    }

    public final r c(int i1)
    {
        k = i1;
        return this;
    }

    public final r c(String s1)
    {
        p = s1;
        return this;
    }

    public final r d(int i1)
    {
        l = i1;
        return this;
    }
}
