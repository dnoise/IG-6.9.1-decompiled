// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

// Referenced classes of package com.instagram.common.analytics:
//            b

final class i
{

    private UUID a;
    private int b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private long h;
    private long i;
    private List j;

    public i()
    {
        j = new ArrayList(50);
        b = 0;
    }

    public final void a()
    {
        if (!j.isEmpty())
        {
            j.clear();
            b = 1 + b;
        }
    }

    public final void a(b b1)
    {
        j.add(b1);
    }

    public final void a(String s)
    {
        c = s;
    }

    public final List b()
    {
        return j;
    }

    public final void b(String s)
    {
        d = s;
    }

    public final UUID c()
    {
        this;
        JVM INSTR monitorenter ;
        UUID uuid;
        if (a == null)
        {
            a = UUID.randomUUID();
        }
        uuid = a;
        this;
        JVM INSTR monitorexit ;
        return uuid;
        Exception exception;
        exception;
        throw exception;
    }

    public final void c(String s)
    {
        e = s;
    }

    public final int d()
    {
        return b;
    }

    public final void d(String s)
    {
        f = s;
    }

    public final long e()
    {
        return h;
    }

    public final void e(String s)
    {
        g = s;
    }

    public final long f()
    {
        return SystemClock.elapsedRealtime() - i;
    }

    public final void g()
    {
        h = System.currentTimeMillis();
        i = SystemClock.elapsedRealtime();
    }

    public final String h()
    {
        return c;
    }

    public final String i()
    {
        return d;
    }

    public final String j()
    {
        return f;
    }

    public final String k()
    {
        return g;
    }

    public final String l()
    {
        return e;
    }

    public final String toString()
    {
        return (new StringBuilder("ID: ")).append(c()).append(" Sequence: ").append(b).append(" (").append(j.size()).append(" events)\nDevice ID: ").append(c).append(" FB: ").append(g).append(" Version: ").append(d).append(" Build Number: ").append(e).toString();
    }
}
