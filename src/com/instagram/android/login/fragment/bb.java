// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.support.v4.app.s;
import com.instagram.android.login.a.a;
import com.instagram.api.j.j;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            an, bc

final class bb extends a
{

    final an a;

    bb(an an1, Context context, Handler handler, s s, Activity activity)
    {
        a = an1;
        super(context, handler, s, activity);
    }

    public final void a()
    {
        super.a();
        b.Y.c();
    }

    protected final void a(j j1)
    {
        super.a(j1);
        b.Z.b().a("message", j1.i()).a();
    }

    protected final void a(com.instagram.user.c.a a1)
    {
        super.a(a1);
        an.c(a).post(new bc(this));
    }

    protected final volatile void a(Object obj)
    {
        a((com.instagram.user.c.a)obj);
    }
}
