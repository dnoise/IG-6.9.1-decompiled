// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c2dm.a;

import android.app.Notification;
import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.app.ba;
import android.support.v4.app.bb;
import com.facebook.az;
import com.instagram.common.u.i;
import com.instagram.l.b.a.a;
import com.instagram.notifications.a.b;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.instagram.android.c2dm.a:
//            c

public class d
    implements i
{

    private static final Class a = com/instagram/android/c2dm/a/d;
    private Context b;

    public d(Context context)
    {
        b = context;
    }

    private static String a(b b1)
    {
        return b1.l();
    }

    private static b b(String s)
    {
        return com.instagram.notifications.a.b.a(s);
    }

    public final Notification a(String s, List list)
    {
        ba ba1 = com.instagram.android.c2dm.a.c.a(b, a(), s, list);
        if (list.size() == 1)
        {
            return ba1.d();
        } else
        {
            bb bb1 = new bb(ba1);
            Context context = b;
            int j = az.directshare_requested_direct_shares_aggregate_notification;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(list.size());
            bb1.a(context.getString(j, aobj));
            com.instagram.android.c2dm.a.c.a(bb1, list);
            return bb1.a();
        }
    }

    public final Notification a(Map map, String s)
    {
        throw new IllegalStateException("shouldn't be here");
    }

    public final Object a(String s)
    {
        return b(s);
    }

    public final String a()
    {
        return "directshare_request";
    }

    public final volatile String a(Object obj)
    {
        return a((b)obj);
    }

    public final boolean a(int j)
    {
        return false;
    }

    public final SharedPreferences b()
    {
        return com.instagram.l.b.a.a.a(a.getSimpleName());
    }

}
