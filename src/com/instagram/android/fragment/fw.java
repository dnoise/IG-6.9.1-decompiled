// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.instagram.android.feed.a.n;
import com.instagram.api.j.f;
import com.instagram.api.j.j;
import com.instagram.api.j.k;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.fragment:
//            fo

final class fw extends f
{

    final fo a;

    private fw(fo fo1)
    {
        a = fo1;
        super();
    }

    fw(fo fo1, byte byte0)
    {
        this(fo1);
    }

    private void a(a a1)
    {
        a a2 = a.au();
        a.ae = a1;
        com.instagram.android.fragment.fo.a(a, k.b);
        a a3 = a.au();
        fo.d(a);
        if (a3 != null && a2 == null)
        {
            ((n)a.W()).a(a3);
            a.c(true);
        }
        a.as();
    }

    public final void a()
    {
        super.a();
        com.instagram.android.fragment.fo.a(a, true);
    }

    protected final void a(j j1)
    {
        com.instagram.android.fragment.fo.a(a, j1.e());
        a a1 = a.au();
        if (a1 != null)
        {
            ((n)a.W()).a(a1);
            return;
        } else
        {
            ((n)a.W()).h(fo.e(a));
            return;
        }
    }

    protected final volatile void a(Object obj)
    {
        a((a)obj);
    }

    public final void b()
    {
        super.b();
        com.instagram.android.fragment.fo.a(a, false);
    }
}
