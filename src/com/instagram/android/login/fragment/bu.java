// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import com.instagram.android.g.e;
import com.instagram.common.a.a.j;
import com.instagram.quicksand.a;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.android.login.fragment:
//            an

final class bu extends j
{

    final an a;

    private bu(an an1)
    {
        a = an1;
        super();
    }

    bu(an an1, byte byte0)
    {
        this(an1);
    }

    private void a(e e1)
    {
        super.a(e1);
        com.instagram.android.login.fragment.an.a(a, new a(e1.b(), e1.f(), e1.d(), e1.c(), e1.e()));
        com.instagram.common.y.c.a.a().execute(an.D(a));
    }

    public final volatile void a(Object obj)
    {
        a((e)obj);
    }

    public final void b(com.instagram.common.l.a.e e1)
    {
        super.b(e1);
        if (an.V() > 0)
        {
            an.E(a);
        }
    }
}
