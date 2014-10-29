// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.f;

import com.instagram.common.a.a.k;
import com.instagram.common.a.a.o;
import com.instagram.f.a.a.d;
import java.util.HashMap;

// Referenced classes of package com.instagram.android.directshare.f:
//            b, c

public class a
{

    private static final Class a = com/instagram/android/directshare/f/a;
    private static a b;
    private k c;
    private HashMap d;

    private a()
    {
        d = new HashMap();
        c = new o();
    }

    public static a a()
    {
        if (b == null)
        {
            c();
        }
        return b;
    }

    static HashMap a(a a1)
    {
        return a1.d;
    }

    private void a(long l)
    {
        if (!d.containsKey(Long.valueOf(l)))
        {
            Class _tmp = a;
            Long.valueOf(l);
            c.a((new d(l)).a(new b(this, l)));
            return;
        } else
        {
            Class _tmp1 = a;
            Long.valueOf(l);
            return;
        }
    }

    private static void c()
    {
        com/instagram/android/directshare/f/a;
        JVM INSTR monitorenter ;
        a a1 = b;
        if (a1 == null) goto _L2; else goto _L1
_L1:
        com/instagram/android/directshare/f/a;
        JVM INSTR monitorexit ;
        return;
_L2:
        b = new a();
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final void b()
    {
        com.instagram.common.x.a.a().b();
        if (com.instagram.android.directshare.f.c.b() > 0)
        {
            Class _tmp = a;
            a(com.instagram.android.directshare.f.c.a());
        }
    }

}
