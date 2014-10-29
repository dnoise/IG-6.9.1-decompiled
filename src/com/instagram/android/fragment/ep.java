// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Handler;
import com.instagram.a.f;
import com.instagram.android.feed.b.a.c;
import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;

// Referenced classes of package com.instagram.android.fragment:
//            eo, eq

final class ep extends j
{

    final eo a;

    ep(eo eo1)
    {
        a = eo1;
        super();
    }

    private void a(c c1)
    {
label0:
        {
            if (c1 != null)
            {
                if (!c1.d())
                {
                    break label0;
                }
                eo.a(a, c1.b());
                a.c(true);
            }
            return;
        }
        eo.a(a).post(new eq(this, c1));
    }

    public final void a()
    {
        eo.a(a, true);
        if (a.u())
        {
            f.a(a.l()).b(true);
        }
    }

    public final void a(e e)
    {
        eo.a(a, false);
        if (a.u())
        {
            f.a(a.l()).b(false);
        }
    }

    public final volatile void a(Object obj)
    {
        a((c)obj);
    }

    public final void b(e e)
    {
        a.aj();
    }
}
