// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.aa;

import android.content.Context;
import com.instagram.common.analytics.g;
import com.instagram.common.v.b;
import com.instagram.common.v.c;
import java.util.HashMap;
import java.util.UUID;

// Referenced classes of package com.instagram.common.aa:
//            b

public final class a
{

    private static final HashMap a = new HashMap();
    private final c b;
    private final b c;
    private final g d;
    private String e;
    private long f;

    private a(String s)
    {
        String s1 = (new StringBuilder("waterfall_")).append(s).toString();
        d = new com.instagram.common.aa.b(this, s1);
        android.content.SharedPreferences sharedpreferences = com.instagram.common.h.a.a().getSharedPreferences(s1, 0);
        b = new c(sharedpreferences, "id");
        c = new b(sharedpreferences, "start_time");
    }

    public static a a(String s)
    {
        com/instagram/common/aa/a;
        JVM INSTR monitorenter ;
        a a1 = (a)a.get(s);
        if (a1 == null) goto _L2; else goto _L1
_L1:
        com/instagram/common/aa/a;
        JVM INSTR monitorexit ;
        return a1;
_L2:
        a1 = new a(s);
        a.put(s, a1);
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private com.instagram.common.analytics.b a(com.instagram.common.analytics.b b1)
    {
        this;
        JVM INSTR monitorenter ;
        com.instagram.common.analytics.b b2;
        b();
        long l = System.currentTimeMillis();
        b2 = b1.a("waterfall_id", e).a("start_time", f).a("current_time", l).a("elapsed_time", l - f);
        this;
        JVM INSTR monitorexit ;
        return b2;
        Exception exception;
        exception;
        throw exception;
    }

    private void b()
    {
        this;
        JVM INSTR monitorenter ;
        if (e == null)
        {
            e = b.a();
            f = c.a().longValue();
            if (e == null)
            {
                e = UUID.randomUUID().toString();
                f = System.currentTimeMillis();
                b.a(e);
                c.a(Long.valueOf(f));
            }
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a()
    {
        this;
        JVM INSTR monitorenter ;
        b.b();
        c.b();
        e = null;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final com.instagram.common.analytics.b b(String s)
    {
        return a(new com.instagram.common.analytics.b(s, d));
    }

}
