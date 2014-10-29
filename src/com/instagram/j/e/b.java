// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.e;

import android.os.SystemClock;
import com.instagram.common.p.b.a;

// Referenced classes of package com.instagram.j.e:
//            a

public final class b
    implements a
{

    final com.instagram.j.e.a a;

    public b(com.instagram.j.e.a a1)
    {
        a = a1;
        super();
    }

    private boolean c()
    {
        return SystemClock.elapsedRealtime() - com.instagram.j.e.a.d(a).longValue() >= 0x493e0L;
    }

    public final void a()
    {
    }

    public final void b()
    {
        if (com.instagram.j.e.a.c(a) || c())
        {
            com.instagram.j.e.a.a().b();
        }
    }
}
