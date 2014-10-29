// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.b;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.instagram.android.directshare.c.t;
import com.instagram.android.fragment.cr;
import com.instagram.common.analytics.d;
import com.instagram.feed.c.c;
import com.instagram.p.b;
import com.instagram.service.persistentcookiestore.PersistentCookieStore;
import com.instagram.user.userservice.b.f;
import java.io.File;

public final class a
    implements com.instagram.common.y.f.a
{

    private static a a;

    public a()
    {
    }

    public static a a()
    {
        if (a == null)
        {
            a = new a();
        }
        return a;
    }

    public final void a(Context context)
    {
        b.a();
        PersistentCookieStore.c().d();
        com.instagram.service.a.a.a().e();
        com.instagram.common.analytics.a.a().c();
        c.a();
        com.instagram.l.b.a.a().h();
        com.instagram.h.a.a.a();
        com.instagram.l.b.a.b();
        (new f()).a(true);
        (new com.instagram.user.userservice.a.d()).a(true);
        com.instagram.share.b.a.l();
        CookieSyncManager.createInstance(context);
        CookieManager.getInstance().removeAllCookie();
        File file = cr.b(context);
        if (file.exists())
        {
            file.delete();
        }
        t.a().g();
        com.instagram.j.e.a.a().l();
        com.instagram.android.c2dm.c.a().b();
    }
}
