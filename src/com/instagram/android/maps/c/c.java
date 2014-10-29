// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.c;

import android.app.Dialog;
import android.os.Handler;
import android.support.v4.app.k;
import com.facebook.az;
import com.instagram.common.y.e.a;
import com.instagram.ui.dialog.b;
import com.instagram.ui.dialog.f;

// Referenced classes of package com.instagram.android.maps.c:
//            d, g, k, j, 
//            l, e

public final class c
{

    private final k a;
    private final int b;
    private final f c;
    private final Handler d = new d(this);
    private String e;

    public c(k k1, int i)
    {
        a = k1;
        b = i;
        c = new f(k1);
    }

    static String a(c c1, String s)
    {
        c1.e = s;
        return s;
    }

    static void a(c c1)
    {
        c1.c();
    }

    static void a(c c1, boolean flag)
    {
        c1.a(flag);
    }

    private void a(boolean flag)
    {
        d.post(new g(this, flag));
    }

    static Handler b(c c1)
    {
        return c1.d;
    }

    private void b()
    {
        (new b(a)).a(az.error).b(az.request_error).b(az.ok, null).c().show();
    }

    static int c(c c1)
    {
        return c1.b;
    }

    private void c()
    {
        (new com.instagram.android.maps.c.k(this, a, a.e(), new j(this))).a(e);
    }

    static k d(c c1)
    {
        return c1.a;
    }

    static f e(c c1)
    {
        return c1.c;
    }

    static void f(c c1)
    {
        c1.b();
    }

    public final void a()
    {
        (new l(this, a, a.e(), com.instagram.common.y.e.a.a(), new e(this))).a(com.instagram.android.maps.e.a.a().k());
    }
}
