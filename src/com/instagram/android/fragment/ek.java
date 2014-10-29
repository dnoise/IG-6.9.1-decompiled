// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.instagram.android.c.b.c;
import com.instagram.android.feed.a;
import com.instagram.android.j.e;
import com.instagram.common.a.a.j;

// Referenced classes of package com.instagram.android.fragment:
//            ej

public final class ek extends j
{

    final ej a;
    private final String b;
    private final long c;

    public ek(ej ej1, String s, long l)
    {
        a = ej1;
        super();
        b = s;
        c = l;
    }

    private void a(c c1)
    {
        super.a(c1);
        if (a.ac())
        {
            com.instagram.android.fragment.ej.a(a).a(b, c1.a());
        }
        if (c())
        {
            a.e(false);
            a.Y().a(a, b, c);
            a.a.d(c1.a());
            a.Z();
            a.aa();
        }
    }

    private boolean c()
    {
        return b.equals(a.ad());
    }

    public final void a()
    {
        super.a();
        a.d(true);
        a.c(true);
    }

    public final void a(com.instagram.common.l.a.e e1)
    {
        super.a(e1);
        if (c())
        {
            a.d(false);
            a.c(false);
        }
    }

    public final volatile void a(Object obj)
    {
        a((c)obj);
    }

    public final void b(com.instagram.common.l.a.e e1)
    {
        super.b(e1);
        if (c())
        {
            a.e(true);
        }
    }
}
