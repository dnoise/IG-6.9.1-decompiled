// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import com.instagram.common.a.a.k;
import com.instagram.common.a.a.o;
import com.instagram.common.y.d;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.instagram.feed.d:
//            aj, l, al

public final class ak
{

    private static ak a;
    private final k b = new o();
    private final Map c = new HashMap();

    private ak()
    {
    }

    public static ak a()
    {
        if (a == null)
        {
            b();
        }
        return a;
    }

    private void a(aj aj1)
    {
        this;
        JVM INSTR monitorenter ;
        c(aj1);
        l l1 = aj1.h();
        if (aj1.j() > l1.ap())
        {
            l1.c(aj1.j());
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void a(ak ak1, aj aj1)
    {
        ak1.a(aj1);
    }

    private static void b()
    {
        com/instagram/feed/d/ak;
        JVM INSTR monitorenter ;
        ak ak1 = a;
        if (ak1 == null) goto _L2; else goto _L1
_L1:
        com/instagram/feed/d/ak;
        JVM INSTR monitorexit ;
        return;
_L2:
        a = new ak();
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private void b(aj aj1)
    {
        this;
        JVM INSTR monitorenter ;
        c(aj1);
        l l1 = aj1.h();
        if (!c.containsKey(l1.d()))
        {
            l1.b(l1.ap());
            c();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void b(ak ak1, aj aj1)
    {
        ak1.b(aj1);
    }

    private static void b(l l1)
    {
        l1.b(l1.ao());
        c();
    }

    private static void c()
    {
        d.a("InboxFragment.UPDATE_INBOX");
    }

    private void c(aj aj1)
    {
        this;
        JVM INSTR monitorenter ;
        if ((aj)c.get(aj1.h().d()) == aj1)
        {
            c.remove(aj1.h().d());
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(l l1)
    {
        this;
        JVM INSTR monitorenter ;
        if (l1.an() < l1.ao())
        {
            aj aj1 = new aj(l1);
            aj1.a(new al(this, aj1, (byte)0));
            c.put(l1.d(), aj1);
            b(l1);
            b.a(aj1);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    final void a(l l1, long l2)
    {
        this;
        JVM INSTR monitorenter ;
        if (!c.containsKey(l1.d()))
        {
            l1.b(l2);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
