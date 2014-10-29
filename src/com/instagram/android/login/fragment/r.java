// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.app.Dialog;
import com.facebook.az;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            p, o

final class r
    implements Runnable
{

    final p a;

    r(p p1)
    {
        a = p1;
        super();
    }

    public final void run()
    {
        (new b(a.a.n())).a(az.error).b(az.no_users_found).b(az.ok, null).c().show();
    }
}
