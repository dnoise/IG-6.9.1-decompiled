// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.instagram.a.f;
import com.instagram.api.j.a;
import com.instagram.g.c;
import com.instagram.user.c.i;
import com.instagram.user.c.j;

// Referenced classes of package com.instagram.android.fragment:
//            ac, am, ao

final class al extends a
{

    final ac a;

    al(ac ac1)
    {
        a = ac1;
        super();
    }

    private void a(com.instagram.user.c.a a1)
    {
        j.a().b(a1);
        com.instagram.android.fragment.ac.a(a).post(new am(this));
    }

    public final void a()
    {
        ac.b(a, true);
        f.a(a.l()).b(true);
    }

    protected final void a(com.instagram.api.j.j j1)
    {
        f.a(a.l()).b(false);
        if (c.b(j1))
        {
            c.a(a.p(), j1);
        }
    }

    protected final volatile void a(Object obj)
    {
        a((com.instagram.user.c.a)obj);
    }

    public final void b()
    {
        ac.b(a, false);
    }
}
