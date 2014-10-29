// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.app.Dialog;
import android.telephony.PhoneNumberUtils;
import com.facebook.az;
import com.instagram.a.f;
import com.instagram.api.j.a;
import com.instagram.api.j.j;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            ad, ak

final class aj extends a
{

    final ad a;

    private aj(ad ad1)
    {
        a = ad1;
        super();
    }

    aj(ad ad1, byte byte0)
    {
        this(ad1);
    }

    private void c()
    {
        f.a(a.l()).b(false);
        b b1 = (new b(a.n())).a(az.password_reset_sent_short);
        ad ad1 = a;
        int i = az.password_reset_sent;
        Object aobj[] = new Object[1];
        aobj[0] = PhoneNumberUtils.formatNumber(com.instagram.android.login.fragment.ad.f(a));
        b1.a(ad1.a(i, aobj)).b(az.ok, new ak(this)).c().show();
    }

    public final void a()
    {
        f.a(a.l()).b(true);
    }

    protected final void a(j j1)
    {
        f.a(a.l()).b(false);
        com.instagram.o.a.a.a(a.n(), j1.b(), j1.i(), null);
    }

    protected final void a(Object obj)
    {
        c();
    }
}
