// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.app.Dialog;
import com.facebook.az;
import com.instagram.api.j.a;
import com.instagram.api.j.j;
import com.instagram.o.e;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.fragment:
//            fo

final class fu extends a
{

    final fo a;

    private fu(fo fo1)
    {
        a = fo1;
        super();
    }

    fu(fo fo1, byte byte0)
    {
        this(fo1);
    }

    private void c()
    {
        a.ae.d(false);
        e.a(az.directshare_action_completed);
    }

    protected final void a(j j)
    {
        (new b(a.n())).a(az.error).b(az.request_error).b(az.dismiss, null).a(false).c().show();
    }

    protected final void a(Object obj)
    {
        c();
    }
}
