// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.j;

import android.content.Context;
import android.support.v4.app.ao;
import com.instagram.api.b.b;
import com.instagram.api.i.c;
import com.instagram.o.d.a;
import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package com.instagram.api.j:
//            j, a, c

public abstract class l
    implements ao
{

    private final Context a;
    private final com.instagram.api.j.c b;
    private final com.instagram.api.j.a c;

    public l(Context context, com.instagram.api.j.c c1, com.instagram.api.j.a a1)
    {
        a = context;
        b = c1;
        c = a1;
    }

    public final com.instagram.api.j.a a()
    {
        return c;
    }

    public void a(android.support.v4.a.c c1, j j1)
    {
        if (!j1.j()) goto _L2; else goto _L1
_L1:
        j1.a(false);
        c.b();
        if (j1.k() != null)
        {
            for (Iterator iterator = j1.k().iterator(); iterator.hasNext(); com.instagram.api.i.c.a((b)iterator.next())) { }
        }
        if (j1.a() != null) goto _L4; else goto _L3
_L3:
        j1.f();
        c.a(j1);
_L6:
        return;
_L4:
        if (j1.a().equals("fail"))
        {
            if (j1.i() != null)
            {
                if (j1.i().equals("login_required"))
                {
                    com.instagram.common.y.f.b.a(b());
                    return;
                }
                if (j1.i().equals("checkpoint_required"))
                {
                    com.instagram.o.d.a.a(b(), j1.m(), j1.n());
                    return;
                }
            }
            if (b.c(j1))
            {
                com.instagram.o.a.a.a(b(), j1.b(), j1.i(), null);
            }
        }
        if (j1.g())
        {
            c.a(j1.h());
            return;
        } else
        {
            j1.f();
            c.a(j1);
            return;
        }
_L2:
        if (j1.g() && c != null)
        {
            c.a(j1.h());
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public volatile void a(android.support.v4.a.c c1, Object obj)
    {
        a(c1, (j)obj);
    }

    protected final Context b()
    {
        return a;
    }
}
