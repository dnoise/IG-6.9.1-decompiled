// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.y.e.a;

// Referenced classes of package com.instagram.android.nux:
//            g

public final class f extends b
{

    private final String a;

    public f(Context context, an an, com.instagram.api.j.a a1, String s)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
        a = s;
    }

    private static g d(j j1)
    {
        return com.instagram.android.nux.g.a(j1.l());
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        b1.a("fb_access_token", a);
        b1.a("device_id", com.instagram.common.z.a.a(k()));
    }

    public final Object b(j j1)
    {
        return d(j1);
    }

    public final boolean b()
    {
        return true;
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    public final boolean c(j j1)
    {
        return false;
    }

    protected final String c_()
    {
        return "fb/fb_signup/";
    }

    public final boolean e_()
    {
        return true;
    }
}
