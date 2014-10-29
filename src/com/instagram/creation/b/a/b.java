// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.a;

import com.instagram.model.a.a;
import com.instagram.venue.model.Venue;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.creation.b.a:
//            d, g, c, a, 
//            i

public class b
    implements com.instagram.model.a.b
{

    private int A;
    private String B;
    private com.instagram.model.people.b C;
    private String D;
    private List E;
    private com.instagram.creation.b.a.a F;
    private List G;
    private boolean H;
    private g I;
    private int J;
    private volatile d a;
    private volatile d b;
    private a c;
    private String d;
    private String e;
    private String f;
    private int g;
    private int h;
    private i i;
    private String j;
    private String k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private double r;
    private double s;
    private Venue t;
    private String u;
    private String v;
    private volatile boolean w;
    private volatile int x;
    private volatile c y;
    private int z;

    private b(String s1)
    {
        a = com.instagram.creation.b.a.d.a;
        b = com.instagram.creation.b.a.d.a;
        C = new com.instagram.model.people.b();
        D = null;
        E = new ArrayList();
        I = new g();
        f = s1;
        B = s1;
    }

    private void R()
    {
        if (y != null)
        {
            y.a(this);
        }
    }

    public static b a(String s1)
    {
        b b1 = new b(s1);
        b1.c = a.a;
        return b1;
    }

    public static b b(String s1)
    {
        b b1 = new b(s1);
        b1.c = a.b;
        return b1;
    }

    public final d A()
    {
        return b;
    }

    public final String B()
    {
        return j;
    }

    public final String C()
    {
        return k;
    }

    public final List D()
    {
        return G;
    }

    public final com.instagram.model.people.b E()
    {
        return C;
    }

    public final boolean F()
    {
        return C.size() > 0;
    }

    public final boolean G()
    {
        return z != 0 && A != 0;
    }

    public final int H()
    {
        return z;
    }

    public final int I()
    {
        return A;
    }

    public final List J()
    {
        return E;
    }

    public final com.instagram.creation.b.a.a K()
    {
        return F;
    }

    public final String L()
    {
        return D;
    }

    public final String M()
    {
        return u;
    }

    public final g N()
    {
        return I;
    }

    public final boolean O()
    {
        return c == a.b;
    }

    public final boolean P()
    {
        return H;
    }

    public final int Q()
    {
        return J;
    }

    public final String a()
    {
        return f;
    }

    public final void a(double d1)
    {
        r = d1;
    }

    public final void a(int i1)
    {
        g = i1;
    }

    public final void a(com.instagram.creation.b.a.a a1)
    {
        F = a1;
    }

    public final void a(c c1)
    {
        y = c1;
    }

    public final void a(d d1)
    {
        a = d1;
        R();
    }

    public final void a(i i1)
    {
        i = i1;
    }

    public final void a(Venue venue)
    {
        t = venue;
    }

    public final void a(ArrayList arraylist)
    {
        C = new com.instagram.model.people.b(arraylist);
    }

    public final void a(List list)
    {
        G = list;
    }

    public final void a(boolean flag)
    {
        l = flag;
    }

    public final String b()
    {
        return B;
    }

    public final void b(double d1)
    {
        s = d1;
    }

    public final void b(int i1)
    {
        h = i1;
    }

    public final void b(d d1)
    {
        b = d1;
    }

    public final void b(List list)
    {
        E = list;
    }

    public final void b(boolean flag)
    {
        m = flag;
    }

    public final int c()
    {
        return g;
    }

    public final void c(int i1)
    {
        x = i1;
        R();
    }

    public final void c(String s1)
    {
        B = s1;
    }

    public final void c(boolean flag)
    {
        n = flag;
    }

    public final int d()
    {
        return h;
    }

    public final void d(int i1)
    {
        z = i1;
    }

    public final void d(String s1)
    {
        v = s1;
    }

    public final void d(boolean flag)
    {
        o = flag;
    }

    public final i e()
    {
        return i;
    }

    public final void e(int i1)
    {
        A = i1;
    }

    public final void e(String s1)
    {
        d = s1;
    }

    public final void e(boolean flag)
    {
        p = flag;
    }

    public final void f(int i1)
    {
        J = i1;
    }

    public final void f(String s1)
    {
        e = s1;
    }

    public final void f(boolean flag)
    {
        q = flag;
    }

    public final boolean f()
    {
        return r != 0.0D && s != 0.0D;
    }

    public final void g()
    {
        r = 0.0D;
        s = 0.0D;
    }

    public final void g(String s1)
    {
        j = s1;
    }

    public final void g(boolean flag)
    {
        w = flag;
        R();
    }

    public final Double h()
    {
        return Double.valueOf(r);
    }

    public final void h(String s1)
    {
        k = s1;
    }

    public final void h(boolean flag)
    {
        H = flag;
    }

    public final Double i()
    {
        return Double.valueOf(s);
    }

    public final void i(String s1)
    {
        D = s1;
    }

    public final Venue j()
    {
        return t;
    }

    public final void j(String s1)
    {
        u = s1;
    }

    public final String k()
    {
        return d;
    }

    public final String l()
    {
        return e;
    }

    public final String m()
    {
        return v;
    }

    public final a n()
    {
        return c;
    }

    public final boolean o()
    {
        return t != null;
    }

    public final boolean p()
    {
        return true;
    }

    public final boolean q()
    {
        return l;
    }

    public final boolean r()
    {
        return p;
    }

    public final boolean s()
    {
        return m;
    }

    public final boolean t()
    {
        return n;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("Media type:");
        String s1;
        StringBuilder stringbuilder1;
        if (c == a.a)
        {
            s1 = "Photo";
        } else
        {
            s1 = "Video";
        }
        stringbuilder1 = stringbuilder.append(s1).append("\nServer Status: ").append(a.toString()).append("\nTarget Status: ").append(b.toString());
        if (c == a.b)
        {
            stringbuilder1.append("\nSession name: ").append(D);
            stringbuilder1.append("\nRendered Video Path: ").append(e);
        }
        return stringbuilder1.toString();
    }

    public final boolean u()
    {
        return o;
    }

    public final boolean v()
    {
        return q;
    }

    public final boolean w()
    {
        return w;
    }

    public final int x()
    {
        return x;
    }

    public final c y()
    {
        return y;
    }

    public final d z()
    {
        return a;
    }
}
