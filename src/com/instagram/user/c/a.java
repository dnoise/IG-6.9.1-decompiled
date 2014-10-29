// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.c;

import android.os.Handler;
import android.os.Looper;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.instagram.common.j.b;
import com.instagram.common.j.g;
import com.instagram.common.y.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.user.c:
//            b, f, c, l, 
//            j, i, g, d, 
//            e

public class a
{

    private static final Handler A = new com.instagram.user.c.b(Looper.getMainLooper());
    String a;
    String b;
    String c;
    String d;
    Boolean e;
    String f;
    boolean g;
    boolean h;
    String i;
    String j;
    Integer k;
    Integer l;
    Integer m;
    f n;
    Integer o;
    Integer p;
    boolean q;
    String r;
    List s;
    com.instagram.user.c.e t;
    c u;
    c v;
    boolean w;
    boolean x;
    Boolean y;
    Boolean z;

    public a()
    {
        n = f.a;
        u = c.a;
        v = c.a;
    }

    public static a a(l l1)
    {
        return com.instagram.user.c.l.a(l1);
    }

    public static a a(JsonNode jsonnode, a a1)
    {
        if (a1 == null)
        {
            a1 = new a();
        }
        a1.a(jsonnode.get("username").asText());
        a1.b(com.instagram.common.y.e.d(jsonnode.get("full_name").asText()));
        a1.c(jsonnode.get("profile_pic_url").asText());
        a1.d(com.instagram.o.e.a.a(jsonnode));
        if (jsonnode.get("is_staff") != null)
        {
            a1.a(jsonnode.get("is_staff").asBoolean());
        }
        if (jsonnode.get("usertag_review_enabled") != null)
        {
            a1.b(jsonnode.get("usertag_review_enabled").asBoolean());
        }
        if (jsonnode.get("biography") != null && !jsonnode.get("biography").isNull())
        {
            a1.e(com.instagram.common.y.e.d(jsonnode.get("biography").asText()));
        }
        if (jsonnode.get("external_url") != null && !jsonnode.get("external_url").isNull())
        {
            a1.f(jsonnode.get("external_url").asText());
        }
        if (jsonnode.get("follower_count") != null)
        {
            a1.a(Integer.valueOf(jsonnode.get("follower_count").asInt()));
        }
        if (jsonnode.get("following_count") != null)
        {
            a1.b(Integer.valueOf(jsonnode.get("following_count").asInt()));
        }
        if (jsonnode.get("media_count") != null)
        {
            a1.c(Integer.valueOf(jsonnode.get("media_count").asInt()));
        }
        if (jsonnode.get("is_private") != null)
        {
            Iterator iterator;
            f f1;
            if (jsonnode.get("is_private").asBoolean())
            {
                f1 = f.c;
            } else
            {
                f1 = com.instagram.user.c.f.b;
            }
            a1.a(f1);
        }
        if (jsonnode.get("geo_media_count") != null)
        {
            a1.d(Integer.valueOf(jsonnode.get("geo_media_count").asInt()));
        }
        if (jsonnode.get("usertags_count") != null)
        {
            a1.e(Integer.valueOf(jsonnode.get("usertags_count").asInt()));
        }
        if (jsonnode.get("is_verified") != null)
        {
            a1.e(jsonnode.get("is_verified").asBoolean());
        }
        if (jsonnode.get("extra_display_name") != null)
        {
            a1.h(jsonnode.get("extra_display_name").asText());
        }
        if (jsonnode.get("chaining_suggestions") != null && jsonnode.get("chaining_suggestions").isArray())
        {
            ArrayList arraylist = new ArrayList();
            for (iterator = ((ArrayNode)jsonnode.get("chaining_suggestions")).iterator(); iterator.hasNext(); arraylist.add(a((JsonNode)iterator.next(), null))) { }
            a1.a(((List) (arraylist)));
        }
        return a1;
    }

    private void a(List list)
    {
        s = list;
    }

    public static a b(l l1)
    {
        a a1 = new a();
        l1.nextToken();
        a1.d(l1.getText());
        l1.nextToken();
        a1.c(l1.getText());
        l1.nextToken();
        a1.a(l1.getText());
        l1.nextToken();
        a1.b(com.instagram.common.y.e.d(l1.getText()));
        l1.nextToken();
        return b(a1);
    }

    private static a b(a a1)
    {
        i i1 = com.instagram.user.c.j.a();
        if (i1.a(a1.g()) == null)
        {
            i1.a(a1.g(), a1);
            return a1;
        } else
        {
            a a2 = i1.a(a1);
            j(a2.g());
            return a2;
        }
    }

    private void b(Boolean boolean1)
    {
        z = boolean1;
    }

    static void g(String s1)
    {
        i(s1);
    }

    private void h(String s1)
    {
        r = s1;
    }

    private static void i(String s1)
    {
        com.instagram.common.j.g.a().b(new com.instagram.user.c.g(s1));
    }

    private static void j(String s1)
    {
        android.os.Message message = A.obtainMessage(s1.hashCode(), s1);
        A.removeMessages(s1.hashCode());
        A.sendMessageDelayed(message, 1000L);
    }

    public final boolean A()
    {
        return y != null && y.booleanValue();
    }

    public final Integer B()
    {
        return o;
    }

    public final Integer C()
    {
        return p;
    }

    public final boolean D()
    {
        return q;
    }

    public final String E()
    {
        return r;
    }

    public final List F()
    {
        return s;
    }

    public final void G()
    {
        i(g());
    }

    public final void H()
    {
        com.instagram.common.j.g.a().b(new d(g()));
    }

    protected final a a()
    {
        if (t != null)
        {
            if (t.c != null)
            {
                a(t.c);
            }
            c c1;
            if (t.e != null)
            {
                f f1;
                if (t.e.booleanValue())
                {
                    f1 = f.c;
                } else
                {
                    f1 = com.instagram.user.c.f.b;
                }
                a(f1);
            }
            if (t.d != null)
            {
                c(t.d.booleanValue());
            }
            b(Boolean.valueOf(t.a));
            if (t.a)
            {
                c1 = com.instagram.user.c.c.e;
            } else
            if (t.b)
            {
                c1 = c.d;
            } else
            {
                c1 = c.c;
            }
            b(t());
            a(c1);
        }
        t = null;
        return b(this);
    }

    public final void a(a a1)
    {
        if (a1.g() != null)
        {
            d = a1.g();
        }
        if (a1.b() != null)
        {
            a = a1.b();
        }
        if (a1.c() != null)
        {
            b = a1.c();
        }
        if (a1.f() != null)
        {
            c = a1.f();
        }
        if (a1.h() != g)
        {
            g = a1.h();
        }
        if (a1.x() != null)
        {
            e = a1.x();
        }
        if (a1.y() != null)
        {
            f = a1.y();
        }
        if (a1.i() != h)
        {
            h = a1.i();
        }
        if (a1.j() != null)
        {
            i = a1.j();
        }
        if (a1.k() != null)
        {
            j = a1.k();
        }
        if (a1.l() != null)
        {
            k = a1.l();
        }
        if (a1.o() != null)
        {
            l = a1.o();
        }
        if (a1.p() != null)
        {
            m = a1.p();
        }
        if (a1.s() != n)
        {
            n = a1.s();
        }
        if (a1.B() != null)
        {
            o = a1.B();
        }
        if (a1.C() != null)
        {
            p = a1.C();
        }
        if (a1.E() != null)
        {
            r = a1.E();
        }
        if (a1.F() != null)
        {
            s = a1.F();
        }
        if (a1.u != c.a)
        {
            u = a1.u;
            v = a1.v;
        }
        if (a1.y != null)
        {
            y = a1.y;
        }
    }

    public final void a(c c1)
    {
        u = c1;
    }

    public final void a(f f1)
    {
        n = f1;
    }

    public final void a(Boolean boolean1)
    {
        y = boolean1;
    }

    public final void a(Integer integer)
    {
        k = integer;
    }

    public final void a(String s1)
    {
        a = s1;
    }

    public final void a(boolean flag)
    {
        g = flag;
    }

    public final String b()
    {
        return a;
    }

    public final void b(c c1)
    {
        v = c1;
    }

    public final void b(Integer integer)
    {
        l = integer;
    }

    public final void b(String s1)
    {
        b = s1;
    }

    public final void b(boolean flag)
    {
        h = flag;
    }

    public final String c()
    {
        return b;
    }

    public final void c(Integer integer)
    {
        m = integer;
    }

    public final void c(String s1)
    {
        c = s1;
    }

    public final void c(boolean flag)
    {
        w = flag;
    }

    public final String d()
    {
        if (b != null && !b.equals(""))
        {
            return b;
        } else
        {
            return b();
        }
    }

    public final void d(Integer integer)
    {
        o = integer;
    }

    public final void d(String s1)
    {
        d = s1;
    }

    public final void d(boolean flag)
    {
        x = flag;
    }

    public final void e(Integer integer)
    {
        p = integer;
    }

    public final void e(String s1)
    {
        i = s1;
    }

    public final void e(boolean flag)
    {
        q = flag;
    }

    public final boolean e()
    {
        return "http://images.ak.instagram.com/profiles/anonymousUser.jpg".equals(f());
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            a a1 = (a)obj;
            if (d == null ? a1.d != null : !d.equals(a1.d))
            {
                return false;
            }
        }
        return true;
    }

    public final String f()
    {
        return c;
    }

    public final void f(String s1)
    {
        j = s1;
    }

    public final String g()
    {
        return d;
    }

    public final boolean h()
    {
        return g;
    }

    public int hashCode()
    {
        if (d != null)
        {
            return d.hashCode();
        } else
        {
            return 0;
        }
    }

    public final boolean i()
    {
        return h;
    }

    public final String j()
    {
        return i;
    }

    public final String k()
    {
        return j;
    }

    public final Integer l()
    {
        return k;
    }

    public final void m()
    {
        if (k == null)
        {
            k = Integer.valueOf(0);
        }
        Integer _tmp = k;
        k = Integer.valueOf(1 + k.intValue());
    }

    public final void n()
    {
        if (k == null)
        {
            return;
        } else
        {
            Integer _tmp = k;
            k = Integer.valueOf(-1 + k.intValue());
            return;
        }
    }

    public final Integer o()
    {
        return l;
    }

    public final Integer p()
    {
        return m;
    }

    public final void q()
    {
        if (m == null)
        {
            m = Integer.valueOf(0);
        }
        Integer _tmp = m;
        m = Integer.valueOf(1 + m.intValue());
    }

    public final void r()
    {
        if (m == null)
        {
            return;
        } else
        {
            Integer _tmp = m;
            m = Integer.valueOf(-1 + m.intValue());
            return;
        }
    }

    public final f s()
    {
        return n;
    }

    public final c t()
    {
        return u;
    }

    public final c u()
    {
        return v;
    }

    public final boolean v()
    {
        return w;
    }

    public final void w()
    {
        boolean flag;
        if (!w)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        w = flag;
        G();
    }

    public final Boolean x()
    {
        return e;
    }

    public final String y()
    {
        return f;
    }

    public final boolean z()
    {
        return x;
    }

}
