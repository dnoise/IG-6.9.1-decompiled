// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.support.v4.app.s;
import com.instagram.android.login.a.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            ci, cl

final class ck extends a
{

    final ci a;

    ck(ci ci1, Context context, Handler handler, s s, Activity activity)
    {
        a = ci1;
        super(context, handler, s, activity);
    }

    protected final void a(com.instagram.user.c.a a1)
    {
        super.a(a1);
        ci.d(a).post(new cl(this));
    }

    protected final volatile void a(Object obj)
    {
        a((com.instagram.user.c.a)obj);
    }
}
