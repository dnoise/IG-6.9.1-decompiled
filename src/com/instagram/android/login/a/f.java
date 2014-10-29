// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.a;

import android.app.Dialog;
import com.facebook.az;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.login.a:
//            d

final class f
    implements Runnable
{

    final d a;

    f(d d1)
    {
        a = d1;
        super();
    }

    public final void run()
    {
        (new b(d.a(a))).a(az.error).b(az.facebook_account_not_linked_use_current_password_instead).b(az.ok, null).c().show();
    }
}
