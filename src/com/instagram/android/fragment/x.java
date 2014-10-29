// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.Context;
import android.os.Handler;
import android.support.v4.app.s;
import android.view.View;
import com.instagram.android.login.a.d;
import com.instagram.api.j.j;

// Referenced classes of package com.instagram.android.fragment:
//            w, o

final class x extends d
{

    final w a;

    x(w w1, Context context, Handler handler, s s)
    {
        a = w1;
        super(context, handler, s);
    }

    public final void a()
    {
        if (a.a.E() != null)
        {
            o.f(a.a).setEnabled(false);
        }
        super.a();
    }

    protected final void a(j j)
    {
        if (a.a.E() != null)
        {
            o.f(a.a).setEnabled(true);
        }
        super.a(j);
    }
}
