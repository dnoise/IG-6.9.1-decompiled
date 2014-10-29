// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import android.app.AlarmManager;
import android.content.Context;
import android.os.Handler;
import android.widget.TextView;
import com.instagram.common.d.g;
import com.instagram.common.d.h;
import com.instagram.common.d.j;
import com.instagram.common.p.b.a;
import com.instagram.common.p.b.b;
import com.instagram.common.y.c.d;
import com.instagram.common.y.c.e;
import java.io.IOException;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.instagram.common.analytics:
//            d, ac, y, ap, 
//            al, ae, ad, k, 
//            m, ar, b, i, 
//            l, aj, af, ag, 
//            ah, ai, h, am, 
//            e

public final class ab
    implements com.instagram.common.analytics.d, a
{

    private final Context a;
    private final AlarmManager b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;
    private com.instagram.common.analytics.e g;
    private String h;
    private String i;
    private ap j;
    private final ae k = new ae(this);
    private y l;
    private i m;
    private i n;
    private boolean o;
    private final Handler p = new ac(this);
    private final Queue q = new ConcurrentLinkedQueue();
    private final d r = com.instagram.common.y.c.e.a().a("InstagramAnalyticsLogger").c();
    private final AtomicBoolean s = new AtomicBoolean(false);
    private final Runnable t = new ad(this, (byte)0);
    private final k u;
    private final m v;

    public ab(Context context, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7)
    {
        a = context.getApplicationContext();
        b = (AlarmManager)a.getSystemService("alarm");
        c = s1;
        e = s3;
        d = s2;
        f = s4;
        d(s6);
        c(s7);
        l = new y();
        j = new ap();
        al al1 = new al(this);
        (new j(context)).a().a("android.intent.action.DATE_CHANGED", al1).a("android.intent.action.TIME_SET", al1).a().b();
        u = new k(context.getApplicationContext());
        v = new m(context.getApplicationContext(), f, s5);
        com.instagram.common.p.b.b.a().a(this);
        h();
    }

    static i a(ab ab1, i i1)
    {
        ab1.n = i1;
        return i1;
    }

    private void a(int i1)
    {
        long l1 = System.currentTimeMillis();
        com.instagram.common.analytics.b b1;
        com.instagram.common.analytics.b b2;
        if (i1 == com.instagram.common.analytics.ar.d)
        {
            b1 = null;
        } else
        {
            b1 = l.a(l1, h);
        }
        if (b1 != null)
        {
            b(b1);
        }
        b2 = j.a(l1, i1);
        if (b2 != null)
        {
            a(b2);
        }
    }

    static void a(ab ab1)
    {
        ab1.o();
    }

    static void a(ab ab1, int i1)
    {
        ab1.a(i1);
    }

    static void a(ab ab1, com.instagram.common.analytics.b b1)
    {
        ab1.c(b1);
    }

    static void a(ab ab1, Runnable runnable)
    {
        ab1.a(runnable);
    }

    static void a(ab ab1, String s1)
    {
        ab1.d(s1);
    }

    private void a(Runnable runnable)
    {
        q.add(runnable);
        o();
    }

    private static String b(String s1)
    {
        if (com.instagram.common.y.e.c(s1))
        {
            s1 = "0";
        }
        return s1;
    }

    static AtomicBoolean b(ab ab1)
    {
        return ab1.s;
    }

    static void b(ab ab1, String s1)
    {
        ab1.c(s1);
    }

    static Queue c(ab ab1)
    {
        return ab1.q;
    }

    private void c(com.instagram.common.analytics.b b1)
    {
        b1.a(h);
    }

    private void c(String s1)
    {
        i = b(s1);
    }

    static i d(ab ab1)
    {
        return ab1.n;
    }

    private void d(String s1)
    {
        h = b(s1);
    }

    static k e(ab ab1)
    {
        return ab1.u;
    }

    static m f(ab ab1)
    {
        return ab1.v;
    }

    static com.instagram.common.analytics.e g(ab ab1)
    {
        return ab1.g;
    }

    static i h(ab ab1)
    {
        return ab1.m;
    }

    private void h()
    {
        if (m != null)
        {
            j();
        }
        m = i();
    }

    static Handler i(ab ab1)
    {
        return ab1.p;
    }

    private i i()
    {
        i i1 = new i();
        i1.b(d);
        i1.c(e);
        i1.e(i);
        i1.d(f);
        i1.a(c);
        return i1;
    }

    private void j()
    {
        if (m.b().isEmpty())
        {
            break MISSING_BLOCK_LABEL_32;
        }
        m;
        u.a(m);
        return;
        IOException ioexception;
        ioexception;
        com.facebook.e.a.a.a("InstagramAnalyticsLogger", "Unable to store batch", ioexception);
        return;
    }

    static void j(ab ab1)
    {
        ab1.k();
    }

    private void k()
    {
        j();
        m.a();
    }

    static void k(ab ab1)
    {
        ab1.m();
    }

    static i l(ab ab1)
    {
        return ab1.i();
    }

    private void l()
    {
        com.instagram.common.analytics.l.b.a(a, b);
    }

    private void m()
    {
        com.instagram.common.analytics.l.a.a(a, b);
    }

    static void m(ab ab1)
    {
        ab1.h();
    }

    private void n()
    {
        a(new aj(this, (byte)0));
    }

    static void n(ab ab1)
    {
        ab1.j();
    }

    private void o()
    {
        if (s.compareAndSet(false, true))
        {
            r.execute(t);
        }
    }

    static void o(ab ab1)
    {
        ab1.l();
    }

    public final void a()
    {
        a(ar.c);
        n();
        g();
    }

    public final void a(TextView textview)
    {
        textview.addTextChangedListener(k);
    }

    public final void a(com.instagram.common.analytics.b b1)
    {
        a(((Runnable) (new af(this, b1, (byte)0))));
    }

    public final void a(com.instagram.common.analytics.e e1)
    {
        g = e1;
    }

    public final void a(String s1)
    {
        a(((Runnable) (new ag(this, s1, (byte)0))));
    }

    public final void a(String s1, String s2)
    {
        l.a();
        a(((Runnable) (new ah(this, s1, s2, (byte)0))));
    }

    public final void b()
    {
        if (!o)
        {
            o = true;
            return;
        } else
        {
            a(com.instagram.common.analytics.ar.a);
            n();
            return;
        }
    }

    public final void b(TextView textview)
    {
        textview.removeTextChangedListener(k);
    }

    public final void b(com.instagram.common.analytics.b b1)
    {
        a(new ai(this, b1, (byte)0));
    }

    public final void c()
    {
        a(ar.f);
        l.a();
        a(new ah(this, null, null, (byte)0));
    }

    public final void d()
    {
        a(new ag(this, null, (byte)0));
    }

    public final void e()
    {
        a(com.instagram.common.analytics.ar.b);
    }

    public final String f()
    {
        return com.instagram.common.analytics.h.a().b();
    }

    public final void g()
    {
        a(new am(this, (byte)0));
    }
}
