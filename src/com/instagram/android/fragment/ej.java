// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.Fragment;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Filter;
import com.facebook.az;
import com.instagram.android.c.b.b;
import com.instagram.android.j.d;
import com.instagram.android.j.e;
import com.instagram.android.j.f;
import com.instagram.android.k.a.a;
import com.instagram.common.a.a.g;
import com.instagram.common.a.a.k;
import java.util.List;

// Referenced classes of package com.instagram.android.fragment:
//            ea, ek, ef

public final class ej extends ea
{

    protected a a;
    private k b;
    private e c;

    public ej()
    {
    }

    static e a(ej ej1)
    {
        return ej1.c;
    }

    public final void H()
    {
        super.H();
        if (a != null)
        {
            a.d();
        }
        c = null;
    }

    protected final int V()
    {
        return az.search_for_a_user;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        b = new g(n(), z());
        if (ac())
        {
            c = new e();
            Y().a(c);
        }
    }

    protected final void a(AdapterView adapterview, int i)
    {
        com.instagram.user.c.a a1 = (com.instagram.user.c.a)adapterview.getItemAtPosition(i);
        List list = ((a)c()).f();
        String as[] = new String[list.size()];
        for (int j = 0; j < list.size(); j++)
        {
            as[j] = ((com.instagram.user.c.a)list.get(j)).g();
        }

        Y().a(this, c().getCount(), a1.g(), i - 1, ad(), as);
        f.a(a1);
        com.instagram.o.f.f.a().a(r().p(), a1.g()).a();
    }

    protected final void a(String s)
    {
        if (!com.instagram.common.y.e.c(s))
        {
            Y().a(this, c().getCount(), s);
            b.a((new b(s, Y().a(), ac())).a(new ek(this, s, SystemClock.elapsedRealtime())));
        }
    }

    public final int b()
    {
        return com.instagram.android.fragment.ef.b;
    }

    protected final BaseAdapter c()
    {
        if (a == null)
        {
            if (ac())
            {
                a = new d(n(), z(), r().p(), c);
            } else
            {
                a = (new com.instagram.android.k.a.e(n())).a(z()).a(r().p()).a();
            }
        }
        return a;
    }

    protected final Filter d()
    {
        return a.getFilter();
    }

    protected final void d(String s)
    {
        List list = c.a(s);
        if (list == null || list.isEmpty())
        {
            ab();
        }
    }

    public final String j_()
    {
        return "search_users";
    }

    public final void m_()
    {
        super.m_();
        if (ac())
        {
            c.a();
        }
    }
}
