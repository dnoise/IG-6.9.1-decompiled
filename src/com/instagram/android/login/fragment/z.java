// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Handler;
import android.support.v4.app.Fragment;
import android.view.View;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.a.f;
import com.instagram.android.login.a.h;
import com.instagram.common.l.a.e;
import com.instagram.service.a.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            v, aa

final class z extends h
{

    final v a;

    z(v v1, Fragment fragment)
    {
        a = v1;
        super(fragment, null);
    }

    public final void a(com.instagram.android.login.c.h h1)
    {
        com.instagram.service.a.a.a();
        if (!com.instagram.service.a.a.d())
        {
            super.a(h1);
            return;
        }
        if (a.u())
        {
            f.a(a.l()).b(false);
            v.c(a).setEnabled(false);
        }
        if (a.n() != null)
        {
            Toast.makeText(a.n(), az.password_changed, 0).show();
        }
        v.d(a).post(new aa(this));
    }

    public final volatile void a(Object obj)
    {
        a((com.instagram.android.login.c.h)obj);
    }

    public final void b(e e1)
    {
        if (!e1.a())
        {
            com.instagram.o.e.a(az.request_error);
        }
        super.b(e1);
    }
}
