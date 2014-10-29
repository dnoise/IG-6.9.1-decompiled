// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.b.c;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.support.v4.app.k;
import android.support.v4.app.s;
import android.widget.Toast;
import com.instagram.common.analytics.g;
import com.instagram.common.t.b;
import com.instagram.common.y.e;

public final class a
{

    private static final a a = new a();
    private final Context b = com.instagram.common.h.a.a();
    private com.instagram.common.analytics.b c;
    private Toast d;
    private long e;
    private final b f = com.instagram.common.t.b.a();

    public a()
    {
    }

    public static a a()
    {
        return a;
    }

    private void a(g g1, long l)
    {
        if (!com.instagram.common.s.b.d() && com.instagram.l.a.a.a().f())
        {
            if (d == null)
            {
                d = Toast.makeText(b, "", 0);
            }
            Toast toast = d;
            Object aobj[] = new Object[4];
            aobj[0] = c.b();
            aobj[1] = g1.j_();
            aobj[2] = c.b("click_point");
            aobj[3] = (new StringBuilder()).append(l).append("ms").toString();
            toast.setText(com.instagram.common.y.e.a("%s to %s via %s (%s)", aobj));
            d.show();
        }
    }

    public final void a(Activity activity)
    {
        a(activity, "button");
    }

    public final void a(Activity activity, String s1)
    {
        g g1 = com.instagram.b.b.a.a(activity);
        if (g1 != null)
        {
            a(g1, ((k)activity).d().g(), s1);
        }
    }

    public final void a(g g1)
    {
        this;
        JVM INSTR monitorenter ;
        if (c != null)
        {
            long l = SystemClock.elapsedRealtime() - e;
            f.a(g1, c.b(), c.b("click_point"));
            c.a("dest_module", g1.j_()).a("nav_time_taken", l).a();
            a(g1, l);
        }
        c = null;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(g g1, int i, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        if (com.instagram.common.y.e.c(s1))
        {
            s1 = "button";
        }
        e = SystemClock.elapsedRealtime();
        c = (new com.instagram.common.analytics.b("navigation", g1)).a("click_point", s1).a("nav_depth", i);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

}
