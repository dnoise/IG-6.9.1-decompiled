// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c2dm;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.instagram.android.c2dm.a.d;
import com.instagram.common.analytics.a;
import com.instagram.common.j.g;
import com.instagram.common.l.a.f;
import com.instagram.common.u.b;
import com.instagram.common.y.e;
import com.instagram.notifications.c2dm.IgPushRegistrationService;
import java.util.List;

// Referenced classes of package com.instagram.android.c2dm:
//            a

public class c
{

    private static final Class a = com/instagram/android/c2dm/c;
    private static c b;
    private final com.instagram.common.analytics.d c = com.instagram.common.analytics.a.a();
    private b d;

    private c(Context context)
    {
        d = com.instagram.common.u.b.a();
        d.a("directshare", new com.instagram.android.c2dm.a.a(context), c);
        d.a("directshare_request", new d(context), c);
        d.a("newstab", new com.instagram.android.c2dm.a.b(context), c);
    }

    public static c a()
    {
        if (b == null)
        {
            b = new c(com.instagram.common.h.a.a());
        }
        return b;
    }

    public static void a(Context context, String s, com.instagram.common.u.b.g g1)
    {
        Intent intent = new Intent(context, com/instagram/notifications/c2dm/IgPushRegistrationService);
        intent.putExtra("PushRegistrationService.DEVICE_TOKEN", s);
        intent.putExtra("PushRegistrationService.PUSH_DEVICE_TYPE", g1);
        context.startService(intent);
    }

    private void a(com.instagram.notifications.a.b b1)
    {
        if (com.instagram.notifications.a.a.a(b1.b()))
        {
            a("directshare", b1.f(), b1);
            return;
        }
        if (com.instagram.notifications.a.a.b(b1.b()))
        {
            b1.b("direct_request");
            a("directshare_request", "", b1);
            return;
        } else
        {
            a("newstab", b1.b(), b1);
            return;
        }
    }

    private void a(String s, String s1, com.instagram.notifications.a.b b1)
    {
        com.instagram.android.c2dm.a a1 = new com.instagram.android.c2dm.a(s, s1);
        if (g.a().a(a1))
        {
            Class _tmp = a;
            com.instagram.common.analytics.a.a().a(new com.instagram.common.u.a.a(b1, "notification_suppressed"));
            return;
        } else
        {
            com.instagram.j.e.a.a().c();
            d.a(s, s1, b1);
            return;
        }
    }

    public static String b(String s)
    {
        return com.instagram.common.y.e.a("direct?id=%s", new Object[] {
            s
        });
    }

    public final void a(Intent intent)
    {
        com.instagram.notifications.a.b b1 = com.instagram.notifications.a.b.a(intent);
        com.instagram.common.u.a.a a1 = new com.instagram.common.u.a.a(b1, "push_notification_received");
        if (b1 != null && b1.d() == null)
        {
            a1.a("bad_payload", "missing message");
        }
        com.instagram.user.c.a a2 = com.instagram.service.a.a.a().b();
        if (a2 == null || b1 != null && !a2.g().equals(b1.i()))
        {
            a1.a("mismatch", true);
            b1 = null;
        }
        com.instagram.common.analytics.a.a().a(a1);
        if (b1 != null)
        {
            a(b1);
        }
    }

    public final void a(String s)
    {
        d.b("directshare", b(s));
    }

    public final void b()
    {
        d.b();
        b = null;
    }

    public final void b(Intent intent)
    {
        Uri uri = intent.getData();
        f.a("ig".equals(uri.getScheme()));
        f.a("notif".equals(uri.getAuthority()));
        List list = uri.getPathSegments();
        boolean flag;
        String s;
        if (list.size() > 0 && list.size() <= 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f.a(flag);
        s = (String)list.get(0);
        if (list.size() == 2)
        {
            d.a(s, (String)list.get(1));
            return;
        } else
        {
            d.a(s);
            return;
        }
    }

    public final void c()
    {
        d.b("directshare");
    }

    public final void d()
    {
        d.b("directshare_request");
    }

    public final void e()
    {
        d.b("newstab");
    }

}
