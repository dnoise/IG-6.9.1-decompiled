// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.b;

import android.os.Handler;
import com.instagram.common.g.a.g;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.common.g.b:
//            s, c, d, k, 
//            h, r

final class m
    implements s, Runnable
{

    final h a;
    private final Map b;
    private final String c;
    private final String d;
    private final String e;
    private volatile int f;
    private volatile boolean g;
    private volatile boolean h;
    private d i;

    private m(h h1, String s1, String s2, String s3)
    {
        a = h1;
        super();
        b = new HashMap();
        f = 0;
        g = false;
        h = false;
        c = s1;
        d = s2;
        e = s3;
    }

    m(h h1, String s1, String s2, String s3, byte byte0)
    {
        this(h1, s1, s2, s3);
    }

    private void a()
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = b.entrySet().iterator();
_L2:
        String s1;
        k k1;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_111;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            c c1 = (c)entry.getKey();
            s1 = (String)entry.getValue();
            k1 = c1.d();
        } while (k1 == null);
        if (i != null)
        {
            k1.a(s1, i.a());
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_101;
        Exception exception;
        exception;
        throw exception;
        k1.a();
        if (true) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
    }

    private void a(c c1, g g1)
    {
label0:
        {
            boolean flag;
            boolean flag1;
            k k1;
            if (h || c1.g())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            h = flag;
            if (!g)
            {
                boolean flag2 = c1.e();
                flag1 = false;
                if (!flag2)
                {
                    break label0;
                }
            }
            flag1 = true;
        }
        g = flag1;
        k1 = c1.d();
        if (k1 != null)
        {
            k1.a(g1.c, f);
        }
        this;
        JVM INSTR monitorenter ;
        b.put(c1, g1.c);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void a(m m1)
    {
        m1.a();
    }

    static void a(m m1, c c1, g g1)
    {
        m1.a(c1, g1);
    }

    private void b()
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = b.entrySet().iterator();
_L2:
        k k1;
        String s1;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_87;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            k1 = ((c)entry.getKey()).d();
            s1 = (String)entry.getValue();
        } while (k1 == null);
        k1.a(s1, f);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    static void b(m m1)
    {
        m1.b();
    }

    public final void a(int j)
    {
        f = j;
        com.instagram.common.g.b.h.f(a).sendMessage(com.instagram.common.g.b.h.f(a).obtainMessage(2, this));
    }

    public final void run()
    {
        a(0);
        i = (new r(com.instagram.common.g.b.h.a(a), this, h, g, d, e, c)).a();
        synchronized (com.instagram.common.g.b.h.b(a))
        {
            com.instagram.common.g.b.h.c(a).remove(d);
            com.instagram.common.g.b.h.d(a).remove(this);
            com.instagram.common.g.b.h.e(a);
        }
        com.instagram.common.g.b.h.f(a).sendMessage(com.instagram.common.g.b.h.f(a).obtainMessage(1, this));
    }
}
