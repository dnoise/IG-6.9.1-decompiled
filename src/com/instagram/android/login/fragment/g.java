// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.content.Context;
import android.os.Handler;
import android.support.v4.app.k;
import android.support.v4.app.s;
import android.view.View;
import com.facebook.av;
import com.instagram.android.login.a.d;
import com.instagram.api.j.j;

// Referenced classes of package com.instagram.android.login.fragment:
//            f, a

final class g extends d
{

    final f a;

    g(f f1, Context context, Handler handler, s s)
    {
        a = f1;
        super(context, handler, s);
    }

    public final void a()
    {
        View view = a.a.l().findViewById(av.fragment_forgot_password_facebook);
        if (view != null)
        {
            view.setEnabled(false);
        }
        super.a();
    }

    protected final void a(j j)
    {
        View view = a.a.E().findViewById(av.fragment_forgot_password_facebook);
        if (view != null)
        {
            view.setEnabled(true);
        }
        super.a(j);
    }
}
