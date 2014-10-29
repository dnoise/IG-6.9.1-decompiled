// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.util.DisplayMetrics;
import com.fasterxml.jackson.a.r;
import com.instagram.common.i.c;
import com.instagram.common.j.b;
import com.instagram.common.j.g;
import com.instagram.common.y.d;
import com.instagram.common.y.e;
import com.instagram.model.b.a;
import com.instagram.model.people.PeopleTag;
import com.instagram.venue.model.Venue;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.instagram.feed.d:
//            ai, e, ah, ad, 
//            b, c, n, p, 
//            s, ak, t, r, 
//            m, v, j, o

public final class l
    implements ai
{

    private static int C;
    String A;
    String B;
    private CharSequence D;
    private int E;
    private String F;
    private String G;
    private String H;
    private String I;
    private String J;
    private Uri K;
    private String L;
    private com.instagram.feed.d.e M;
    private com.instagram.feed.d.e N;
    private com.instagram.feed.d.e O;
    private com.instagram.feed.d.e P;
    private final com.instagram.feed.d.e Q = new com.instagram.feed.d.e();
    private boolean R;
    private int S;
    private a T;
    private long U;
    String a;
    com.instagram.user.c.a b;
    com.instagram.model.a.a c;
    long d;
    List e;
    List f;
    int g;
    Set h;
    int i;
    Integer j;
    com.instagram.feed.d.b k;
    List l;
    boolean m;
    long n;
    Venue o;
    Double p;
    Double q;
    p r;
    boolean s;
    com.instagram.feed.d.r t;
    boolean u;
    String v;
    List w;
    long x;
    long y;
    String z;

    l()
    {
        P = new com.instagram.feed.d.e();
        n = -1L;
        S = 2;
    }

    public static l a(com.fasterxml.jackson.a.l l1)
    {
        return a(l1, true);
    }

    public static l a(com.fasterxml.jackson.a.l l1, boolean flag)
    {
        l l2 = com.instagram.feed.d.ah.a(l1);
        if (flag && l2 != null && l2.d() != null)
        {
            l2 = com.instagram.feed.d.ad.a().b(l2);
        }
        return l2;
    }

    public static String a(String s1)
    {
        return (new StringBuilder("Media.ADDED_COMMENTS|")).append(s1).toString();
    }

    private static void a(com.instagram.feed.d.e e1, com.instagram.feed.d.b b1)
    {
        if (e1 == null)
        {
            return;
        } else
        {
            e1.a(b1);
            return;
        }
    }

    private static boolean a(com.instagram.feed.d.e e1, String s1)
    {
        if (e1 == null)
        {
            return false;
        } else
        {
            return e1.a(s1);
        }
    }

    private void ar()
    {
        if (w != null)
        {
            Iterator iterator = w.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                a a1 = (a)iterator.next();
                if (!a1.a().equals(c()))
                {
                    continue;
                }
                T = a1;
                iterator.remove();
                break;
            } while (true);
            if (T == null)
            {
                com.instagram.common.i.c.b("sender not in recipient list", (new StringBuilder("media id=")).append(d()).toString());
            }
            Collections.sort(w);
        }
    }

    private String as()
    {
        return H;
    }

    private void at()
    {
        Intent intent = new Intent(a(d()));
        intent.putExtra("id", d());
        com.instagram.common.y.d.a(intent);
    }

    private void au()
    {
        Intent intent = new Intent(b(d()));
        intent.putExtra("id", d());
        com.instagram.common.y.d.a(intent);
    }

    private com.instagram.feed.d.e av()
    {
        com.instagram.feed.d.e e1 = new com.instagram.feed.d.e();
        if (k != null && k.h() == c.f)
        {
            e1.a(k);
        }
        Iterator iterator = M.c().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            com.instagram.feed.d.b b1 = (com.instagram.feed.d.b)iterator.next();
            if (b1.h() == c.f)
            {
                e1.a(b1);
            }
        } while (true);
        return e1;
    }

    private com.instagram.feed.d.e aw()
    {
        com.instagram.feed.d.e e1 = new com.instagram.feed.d.e();
        if (k != null && k.h() == c.f)
        {
            e1.a(k);
        }
        Iterator iterator = M.c().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            com.instagram.feed.d.b b1 = (com.instagram.feed.d.b)iterator.next();
            if (b1.h().a())
            {
                e1.a(b1);
            }
        } while (true);
        return e1;
    }

    static long b(com.fasterxml.jackson.a.l l1)
    {
        if (l1.getCurrentToken() == r.h)
        {
            return Long.parseLong(l1.getValueAsString());
        } else
        {
            return 0xf4240L * l1.getValueAsLong();
        }
    }

    public static String b(String s1)
    {
        return (new StringBuilder("Media.REMOVED_COMMENTS|")).append(s1).toString();
    }

    private void b(l l1)
    {
        if (l1.w != null)
        {
            c(l1);
        }
        w = l1.w;
    }

    private void c(l l1)
    {
        com.instagram.user.c.a a1 = com.instagram.service.a.a.a().b();
        if (!a1.equals(l1.al().a()))
        {
            a a2 = g(a1.g());
            a a3 = l1.g(a1.g());
            boolean flag;
            if (a2.b() || a3.b())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag != a3.b())
            {
                a3.a(com.instagram.model.b.c.a, flag);
                Collections.sort(l1.w);
            }
        }
    }

    public static boolean d(String s1)
    {
        while ("comments".equals(s1) || "comment_count".equals(s1) || "has_more_comments".equals(s1) || "caption".equals(s1) || "next_max_id".equals(s1)) 
        {
            return true;
        }
        return false;
    }

    public final com.instagram.feed.d.e A()
    {
        if (O == null && M != null)
        {
            O = av();
        }
        return O;
    }

    public final Venue B()
    {
        return o;
    }

    public final int C()
    {
        return E;
    }

    public final com.instagram.feed.d.e D()
    {
        if (N == null)
        {
            N = aw();
        }
        return N;
    }

    public final void E()
    {
        Integer _tmp = j;
        j = Integer.valueOf(1 + j.intValue());
        b();
        a(true);
    }

    public final void F()
    {
        b();
        a(true);
    }

    public final void G()
    {
        b();
        a(true);
    }

    public final void H()
    {
        b();
        Integer _tmp = j;
        j = Integer.valueOf(-1 + j.intValue());
        a(true);
    }

    public final void I()
    {
        b();
        a(true);
    }

    public final void J()
    {
        R = true;
    }

    public final void K()
    {
        S = 1 + S;
        if (P.a() > 0)
        {
            M.a(P);
        }
        P.b();
        R = false;
        a(true);
    }

    public final void L()
    {
        R = false;
        a(true);
    }

    public final boolean M()
    {
        return R;
    }

    public final int N()
    {
        if (o.g() != null)
        {
            return com.instagram.feed.d.n.c;
        } else
        {
            return com.instagram.feed.d.n.b;
        }
    }

    public final boolean O()
    {
        return c().equals(com.instagram.service.a.a.a().b());
    }

    public final boolean P()
    {
        return Q() != null && R() != null;
    }

    public final Double Q()
    {
        Venue venue = B();
        if (venue != null && venue.g() != null)
        {
            return venue.g();
        } else
        {
            return p;
        }
    }

    public final Double R()
    {
        Venue venue = B();
        if (venue != null && venue.h() != null)
        {
            return venue.h();
        } else
        {
            return q;
        }
    }

    public final Uri S()
    {
        return K;
    }

    public final boolean T()
    {
        return K != null && (new File(K.getPath())).exists();
    }

    public final void U()
    {
        o = null;
        p = null;
        q = null;
        a(false);
    }

    public final ArrayList V()
    {
        if (r != null)
        {
            return r.a;
        } else
        {
            return null;
        }
    }

    public final boolean W()
    {
        ArrayList arraylist = V();
        return arraylist != null && arraylist.size() > 0;
    }

    public final Integer X()
    {
        int i1;
        if (r == null || r.a == null)
        {
            i1 = 0;
        } else
        {
            i1 = r.a.size();
        }
        return Integer.valueOf(i1);
    }

    public final boolean Y()
    {
        return s;
    }

    public final boolean Z()
    {
        return u;
    }

    final l a()
    {
        if (e != null)
        {
            Iterator iterator2 = e.iterator();
            do
            {
                if (!iterator2.hasNext())
                {
                    break;
                }
                s s2 = (s)iterator2.next();
                if (s2.b == 7)
                {
                    H = s2.a;
                } else
                if (s2.b == 6)
                {
                    G = s2.a;
                } else
                if (s2.b == 5)
                {
                    F = s2.a;
                }
            } while (true);
        }
        if (f != null)
        {
            Iterator iterator1 = f.iterator();
            do
            {
                if (!iterator1.hasNext())
                {
                    break;
                }
                s s1 = (s)iterator1.next();
                if (s1.b == 102)
                {
                    J = s1.a;
                } else
                if (s1.b == 101)
                {
                    I = s1.a;
                }
            } while (true);
        }
        if (c == null)
        {
            c = com.instagram.model.a.a.a;
        }
        b();
        com.instagram.feed.d.b b1 = k;
        boolean flag = false;
        int i1;
        if (b1 != null)
        {
            if (com.instagram.common.y.e.c(k.f()))
            {
                k = null;
                flag = true;
            } else
            {
                k.a(this);
                flag = false;
            }
        }
        if (l != null)
        {
            Iterator iterator = l.iterator();
            i1 = ((flag) ? 1 : 0);
            while (iterator.hasNext()) 
            {
                com.instagram.feed.d.b b2 = (com.instagram.feed.d.b)iterator.next();
                if (com.instagram.common.y.e.c(b2.f()))
                {
                    iterator.remove();
                    i1++;
                } else
                {
                    b2.a(this);
                }
            }
            M = new com.instagram.feed.d.e(l);
            l = null;
        } else
        {
            i1 = ((flag) ? 1 : 0);
        }
        if (j != null && j.intValue() > 0 && i1 > 0)
        {
            j = Integer.valueOf(j.intValue() - i1);
        }
        ar();
        U = x;
        return this;
    }

    public final String a(Context context)
    {
        if (context.getResources().getDisplayMetrics().widthPixels <= 480)
        {
            return J;
        } else
        {
            return I;
        }
    }

    public final void a(int i1)
    {
        E = i1;
    }

    public final void a(long l1)
    {
        y = l1;
    }

    public final void a(Uri uri)
    {
        K = uri;
    }

    public final void a(com.instagram.feed.d.b b1)
    {
        a(M, b1);
        a(N, b1);
        a(O, b1);
        at();
    }

    public final void a(l l1)
    {
        c = l1.w();
        if (l1.a != null)
        {
            a = l1.d();
        }
        if (l1.H != null)
        {
            H = l1.as();
        }
        if (l1.G != null)
        {
            G = l1.G;
        }
        if (l1.F != null)
        {
            F = l1.F;
        }
        d = l1.d;
        D = null;
        c(com.instagram.common.h.a.a());
        if (l1.b != null)
        {
            b = l1.b;
        }
        h = l1.h;
        i = l1.i;
        g = l1.g;
        M = l1.M;
        com.instagram.feed.d.b b1;
        for (Iterator iterator = Q.c().iterator(); iterator.hasNext(); M.a(b1.b()))
        {
            b1 = (com.instagram.feed.d.b)iterator.next();
        }

        if (M != null)
        {
            for (Iterator iterator1 = M.c().iterator(); iterator1.hasNext(); ((com.instagram.feed.d.b)iterator1.next()).a(this)) { }
        }
        o = l1.o;
        p = l1.p;
        q = l1.q;
        j = l1.j;
        k = l1.k;
        if (k != null)
        {
            k.a(this);
        }
        n = l1.n;
        m = l1.m;
        r = l1.r;
        s = l1.s;
        u = l1.u;
        S = l1.S;
        if (c == com.instagram.model.a.a.b)
        {
            I = l1.I;
            J = l1.J;
        }
        if (l1.t != null)
        {
            t = l1.t;
        }
        v = l1.v;
        T = l1.T;
        b(l1);
        if (ak())
        {
            com.instagram.feed.d.ak.a().a(this, l1.x);
        }
        y = l1.y;
        U = l1.U;
        b();
    }

    public final void a(boolean flag)
    {
        com.instagram.common.j.g.a().b(new t(a, flag));
    }

    public final boolean a(com.instagram.user.c.a a1)
    {
label0:
        {
            if (r == null || r.a == null)
            {
                break label0;
            }
            Iterator iterator = r.a.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
            } while (!((PeopleTag)iterator.next()).d().equals(a1.g()));
            return true;
        }
        return false;
    }

    public final boolean aa()
    {
        return t != null;
    }

    public final String ab()
    {
        if (t != null)
        {
            return t.a;
        } else
        {
            return null;
        }
    }

    public final boolean ac()
    {
        return t != null && t.b;
    }

    public final List ad()
    {
        if (t != null)
        {
            return t.d;
        } else
        {
            return null;
        }
    }

    public final List ae()
    {
        if (t != null)
        {
            return t.i;
        } else
        {
            return null;
        }
    }

    public final boolean af()
    {
        return t != null && t.g;
    }

    public final boolean ag()
    {
        return B != null;
    }

    public final boolean ah()
    {
        return v != null;
    }

    public final String ai()
    {
        return t.h;
    }

    public final String aj()
    {
        return v;
    }

    public final boolean ak()
    {
        return w != null;
    }

    public final a al()
    {
        return T;
    }

    public final List am()
    {
        return w;
    }

    public final long an()
    {
        return x;
    }

    public final long ao()
    {
        return y;
    }

    public final long ap()
    {
        return U;
    }

    public final long aq()
    {
        return D().d();
    }

    public final String b(Context context)
    {
        if (C == 0)
        {
            C = com.instagram.o.b.a(context);
        }
        switch (com.instagram.feed.d.m.a[-1 + C])
        {
        default:
            return H;

        case 1: // '\001'
            return G;
        }
    }

    public final void b()
    {
        N = null;
        O = null;
    }

    public final void b(long l1)
    {
        x = l1;
        com.instagram.feed.d.v.a(this);
    }

    public final void b(com.instagram.feed.d.b b1)
    {
        Q.a(b1);
        c(b1.b());
        a(true);
    }

    public final void b(boolean flag)
    {
        s = flag;
    }

    public final com.instagram.user.c.a c()
    {
        return b;
    }

    public final CharSequence c(Context context)
    {
        if (D == null)
        {
            D = com.instagram.o.g.a.a(context, m().longValue());
        }
        return D;
    }

    public final void c(long l1)
    {
        U = l1;
    }

    public final void c(com.fasterxml.jackson.a.l l1)
    {
        String s1;
        int i1;
        s1 = l1.getCurrentName();
        i1 = 0;
        if (!"comments".equals(s1)) goto _L2; else goto _L1
_L1:
        l1.nextToken();
        com.instagram.feed.d.e e1 = new com.instagram.feed.d.e();
        do
        {
            if (l1.nextToken() == r.e)
            {
                break;
            }
            com.instagram.feed.d.b b2 = com.instagram.feed.d.j.a(l1);
            if (b2 == null)
            {
                break;
            }
            if (!com.instagram.common.y.e.c(b2.f()))
            {
                b2.a(this);
                e1.a(b2);
            } else
            {
                i1++;
            }
        } while (true);
        if (M == null)
        {
            M = e1;
        } else
        {
            M.a(e1);
        }
_L4:
        b();
        if (j != null && j.intValue() > 0 && i1 > 0)
        {
            j = Integer.valueOf(j.intValue() - i1);
        }
        return;
_L2:
        if ("comment_count".equals(s1))
        {
            l1.nextToken();
            j = Integer.valueOf(l1.getValueAsInt());
            i1 = 0;
        } else
        if ("has_more_comments".equals(s1))
        {
            l1.nextToken();
            m = l1.getValueAsBoolean();
            i1 = 0;
        } else
        if ("caption".equals(s1))
        {
            l1.nextToken();
            com.instagram.feed.d.j.a(l1);
            com.instagram.feed.d.b b1 = k;
            i1 = 0;
            if (b1 != null)
            {
                if (!com.instagram.common.y.e.c(k.f()))
                {
                    k.a(this);
                    i1 = 0;
                } else
                {
                    i1 = 1;
                    k = null;
                }
            }
        } else
        {
            boolean flag = "next_max_id".equals(s1);
            i1 = 0;
            if (flag)
            {
                l1.nextToken();
                n = l1.getValueAsLong();
                i1 = 0;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void c(com.instagram.feed.d.b b1)
    {
        if (M.a(b1) && R)
        {
            P.a(b1);
        }
        b();
        a(true);
    }

    public final void c(String s1)
    {
        a(M, s1);
        a(N, s1);
        a(O, s1);
        au();
    }

    public final String d()
    {
        return a;
    }

    public final com.instagram.feed.d.b e(String s1)
    {
label0:
        {
            if (M == null)
            {
                break label0;
            }
            Iterator iterator = M.c().iterator();
            com.instagram.feed.d.b b1;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                b1 = (com.instagram.feed.d.b)iterator.next();
            } while (!s1.equals(b1.b()));
            return b1;
        }
        return null;
    }

    public final String e()
    {
        return F;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        l l1;
        if (obj == null || getClass() != obj.getClass())
        {
            return false;
        }
        l1 = (l)obj;
        if (a == null) goto _L4; else goto _L3
_L3:
        if (a.equals(l1.a)) goto _L1; else goto _L5
_L5:
        return false;
_L4:
        if (l1.a == null)
        {
            return true;
        }
        if (true) goto _L5; else goto _L6
_L6:
    }

    public final String f()
    {
        return a;
    }

    public final void f(String s1)
    {
        L = s1;
    }

    final a g(String s1)
    {
        for (Iterator iterator = w.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (a1.a().g().equals(s1))
            {
                return a1;
            }
        }

        return null;
    }

    public final boolean g()
    {
        return c == com.instagram.model.a.a.b;
    }

    public final String h()
    {
        return z;
    }

    public final int hashCode()
    {
        if (a != null)
        {
            return a.hashCode();
        } else
        {
            return 0;
        }
    }

    public final String i()
    {
        return B;
    }

    public final int j()
    {
        return g;
    }

    public final Set k()
    {
        if (h == null)
        {
            return null;
        } else
        {
            return Collections.unmodifiableSet(h);
        }
    }

    public final Long l()
    {
        return Long.valueOf(d);
    }

    public final Long m()
    {
        return Long.valueOf(d / 0xf4240L);
    }

    public final boolean n()
    {
        return m;
    }

    public final long o()
    {
        return n;
    }

    public final int p()
    {
        return S;
    }

    public final int q()
    {
        return i;
    }

    public final boolean r()
    {
        return i == com.instagram.feed.d.o.a;
    }

    public final Integer s()
    {
        return j;
    }

    public final com.instagram.feed.d.e t()
    {
        return M;
    }

    public final com.instagram.feed.d.b u()
    {
        return k;
    }

    public final String v()
    {
        return A;
    }

    public final com.instagram.model.a.a w()
    {
        return c;
    }

    public final boolean x()
    {
        return L != null && (new File(L)).exists();
    }

    public final String y()
    {
        return L;
    }

    public final void z()
    {
        a(false);
    }
}
