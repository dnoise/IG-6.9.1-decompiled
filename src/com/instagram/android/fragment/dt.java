// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.widget.ListView;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.android.a.m;
import com.instagram.api.j.f;
import com.instagram.api.j.j;
import com.instagram.ui.d.b;
import java.util.ArrayList;

// Referenced classes of package com.instagram.android.fragment:
//            dn

final class dt extends f
{

    final dn a;

    dt(dn dn1)
    {
        a = dn1;
        super();
    }

    private void a(ArrayList arraylist)
    {
        if (arraylist == null)
        {
            arraylist = new ArrayList();
        }
        dn.a(a).a(arraylist);
        a.a(arraylist);
        if (com.instagram.android.fragment.dn.f(a))
        {
            a.v_().setSelection(0);
        }
    }

    public final void a()
    {
        dn.a(a, true);
        com.instagram.a.f.a(a.l()).b(true);
    }

    protected final void a(j j)
    {
        dn.g(a);
        Toast.makeText(a.l(), az.could_not_refresh_feed, 0).show();
        super.a(j);
    }

    protected final volatile void a(Object obj)
    {
        a((ArrayList)obj);
    }

    public final void b()
    {
        dn.a(a, false);
        dn.g(a);
        com.instagram.a.f.a(a.l()).b(false);
        com.instagram.ui.d.b.a(dn.c(a), a.E());
    }
}
