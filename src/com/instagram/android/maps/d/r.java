// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.d;

import com.instagram.android.a.o;
import com.instagram.android.maps.b.b;
import com.instagram.android.maps.b.h;
import com.instagram.android.maps.e.a;
import com.instagram.api.j.f;
import com.instagram.api.j.j;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.maps.d:
//            l

final class r extends f
{

    final l a;

    r(l l1)
    {
        a = l1;
        super();
    }

    private void a(List list)
    {
        com.instagram.android.maps.e.a.a().a(list);
        com.instagram.android.maps.b.a a1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); com.instagram.android.maps.d.l.f(a).a(new h(a1.b(), a1.c(), a1)))
        {
            a1 = (com.instagram.android.maps.b.a)iterator.next();
        }

        l.g(a).a(com.instagram.android.maps.d.l.f(a).b());
    }

    public final void a()
    {
        com.instagram.android.maps.d.l.a(a, true);
        super.a();
    }

    protected final void a(j j)
    {
        super.a(j);
        com.instagram.android.maps.d.l.h(a);
        l.c(a);
    }

    protected final volatile void a(Object obj)
    {
        a((List)obj);
    }

    public final void b()
    {
        com.instagram.android.maps.d.l.a(a, false);
        super.b();
    }
}
