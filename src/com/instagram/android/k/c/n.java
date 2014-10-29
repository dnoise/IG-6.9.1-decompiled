// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.c;

import android.app.Dialog;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.a.f;
import com.instagram.android.k.a.a;
import com.instagram.android.k.b.e;
import com.instagram.common.a.a.j;
import com.instagram.ui.dialog.b;
import java.util.List;

// Referenced classes of package com.instagram.android.k.c:
//            a, u, p, o

final class n extends j
{

    final com.instagram.android.k.c.a a;

    n(com.instagram.android.k.c.a a1)
    {
        a = a1;
        super();
    }

    private void a(e e1)
    {
        super.a(e1);
        List list = e1.b();
        com.instagram.android.k.c.a.j(a).a(e1.c());
        com.instagram.android.k.c.a.g(a).a_(list);
        com.instagram.android.k.c.a.k(a);
        if (com.instagram.android.k.c.a.l(a) && list.isEmpty())
        {
            com.instagram.android.k.c.a.m(a);
        } else
        if (com.instagram.android.k.c.a.n(a))
        {
            a.a(list);
            return;
        }
    }

    public final void a()
    {
        super.a();
        com.instagram.android.k.c.a.j(a).a(true);
        f.a(a.l()).b(true);
        if (com.instagram.android.k.c.a.g(a).isEmpty())
        {
            com.instagram.android.k.c.a.o(a);
        }
    }

    public final void a(com.instagram.common.l.a.e e1)
    {
        super.a(e1);
        com.instagram.android.k.c.a.j(a).a(false);
        f.a(a.l()).b(false);
        if (com.instagram.android.k.c.a.g(a).isEmpty())
        {
            com.instagram.android.k.c.a.o(a);
        }
    }

    public final volatile void a(Object obj)
    {
        a((e)obj);
    }

    public final void b(com.instagram.common.l.a.e e1)
    {
        super.b(e1);
        com.instagram.android.k.c.a.j(a).b(true);
        if (com.instagram.android.k.c.a.j(a).g())
        {
            com.instagram.android.k.c.a.g(a).notifyDataSetChanged();
        }
        if (com.instagram.android.k.c.a.h(a))
        {
            (new b(a.l())).b(az.request_error).b(az.try_again, new p(this)).a(true).c(az.skip, new o(this)).c().show();
            return;
        } else
        {
            Toast.makeText(a.l(), az.request_error, 1).show();
            return;
        }
    }
}
