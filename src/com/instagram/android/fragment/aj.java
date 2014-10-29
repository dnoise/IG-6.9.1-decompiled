// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;
import android.widget.Toast;
import com.facebook.av;
import com.facebook.az;
import com.instagram.a.f;
import com.instagram.android.g.b.c;
import com.instagram.api.j.a;
import com.instagram.api.j.j;
import com.instagram.ui.widget.refresh.RefreshButton;

// Referenced classes of package com.instagram.android.fragment:
//            ac

final class aj extends a
{

    final ac a;

    aj(ac ac1)
    {
        a = ac1;
        super();
    }

    private void a(c c1)
    {
        com.instagram.android.fragment.ac.a(a, c1);
        if (a.u())
        {
            f.a(a.l()).b();
        }
        ac.h(a);
        ac.i(a);
    }

    public final void a()
    {
        com.instagram.android.fragment.ac.a(a, true);
        f.a(a.l()).b(true);
        a.E().findViewById(av.loading_spinner).setVisibility(0);
    }

    protected final void a(j j)
    {
        super.a(j);
        if (a.u())
        {
            f.a(a.l()).b(false);
            ac.d(a).setVisibility(0);
        }
        Toast.makeText(a.n(), az.request_error, 1).show();
    }

    protected final volatile void a(Object obj)
    {
        a((c)obj);
    }

    public final void b()
    {
        com.instagram.android.fragment.ac.a(a, false);
        a.E().findViewById(av.loading_spinner).setVisibility(8);
    }
}
