// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.m;

import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;
import com.instagram.m.a.b;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.m:
//            d, k, e

final class o extends j
{

    final k a;

    private o(k k1)
    {
        a = k1;
        super();
    }

    o(k k1, byte byte0)
    {
        this(k1);
    }

    private void a(b b1)
    {
        for (Iterator iterator = b1.b().iterator(); iterator.hasNext(); k.d())
        {
            d d1 = (d)iterator.next();
            k.a(a).a(d1);
        }

        k.a(a).c();
    }

    public final void a()
    {
        super.a();
        k.a(a, true);
    }

    public final void a(e e1)
    {
        super.a(e1);
        k.a(a, false);
    }

    public final volatile void a(Object obj)
    {
        a((b)obj);
    }

    public final void b(e e1)
    {
        if (e1.a())
        {
            k.d();
            ((b)e1.b()).k();
        }
    }
}
