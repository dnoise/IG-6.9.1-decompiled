// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.content.Context;
import android.os.Handler;
import android.support.v4.app.s;
import android.view.View;
import com.facebook.av;
import com.instagram.android.login.a.d;
import com.instagram.api.j.j;

// Referenced classes of package com.instagram.android.login.fragment:
//            cf, bz

final class cg extends d
{

    final cf a;

    cg(cf cf1, Context context, Handler handler, s s)
    {
        a = cf1;
        super(context, handler, s);
    }

    public final void a()
    {
        if (a.a.E() != null)
        {
            a.a.E().findViewById(av.fragment_user_password_recovery_button_connect_with_facebook).setEnabled(false);
        }
        super.a();
    }

    protected final void a(j j)
    {
        if (a.a.E() != null)
        {
            a.a.E().findViewById(av.fragment_user_password_recovery_button_connect_with_facebook).setEnabled(true);
        }
        super.a(j);
    }
}
