// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.net.Uri;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.az;
import com.instagram.android.login.b.b;
import com.instagram.api.h.d;
import com.instagram.api.j.a;
import com.instagram.api.j.j;
import com.instagram.o.e;

// Referenced classes of package com.instagram.android.login.fragment:
//            bz

final class ch extends a
{

    final bz a;

    private ch(bz bz1)
    {
        a = bz1;
        super();
    }

    ch(bz bz1, byte byte0)
    {
        this(bz1);
    }

    private void c()
    {
        if (a.E() != null)
        {
            com.instagram.android.login.fragment.bz.e(a).setText(com.instagram.android.login.fragment.bz.d(a));
            String s = a.c(az.instagram_help_center);
            Uri uri = Uri.parse(d.a("http://help.instagram.com/374546259294234/", a.l()));
            android.text.SpannableStringBuilder spannablestringbuilder = com.instagram.android.login.b.b.a(s, bz.f(a), uri);
            TextView textview = (TextView)a.E().findViewById(av.fragment_user_password_recovery_textview_request_sent);
            textview.setMovementMethod(new LinkMovementMethod());
            textview.setVisibility(0);
            textview.setText(spannablestringbuilder);
        }
    }

    public final void a()
    {
        bz.h(a);
        bz.i(a).setEnabled(false);
        bz.g(a).setVisibility(0);
        super.a();
    }

    protected final void a(j j1)
    {
        if (j1 == null || j1.c() == null)
        {
            e.a(az.request_error);
        }
        if (a.E() != null)
        {
            bz.i(a).setEnabled(true);
        }
        super.a(j1);
    }

    protected final void a(Object obj)
    {
        c();
    }

    public final void b()
    {
        super.b();
        if (a.E() != null)
        {
            bz.g(a).setVisibility(8);
        }
    }
}
