// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c2dm.a;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.support.v4.app.ba;
import android.support.v4.app.bb;
import com.facebook.au;
import com.facebook.az;
import com.instagram.android.activity.MainTabActivity;
import com.instagram.common.g.b.h;
import com.instagram.common.u.i;
import com.instagram.notifications.a.b;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.android.c2dm.a:
//            c

public class a
    implements i
{

    private static final Class a = com/instagram/android/c2dm/a/a;
    private Context b;

    public a(Context context)
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
        ba ba1 = c.a(b, a(), s, list);
        b b1 = (b)list.get(-1 + list.size());
        if (b1.g() != null)
        {
            h.a().b(com.instagram.o.b.a(b, b1.g()));
        }
        if (list.size() == 1)
        {
            return ba1.d();
        } else
        {
            bb bb1 = (new bb(ba1)).a(b.getString(az.directshare_notification_permalink_aggregated));
            c.a(bb1, list);
            return bb1.a();
        }
    }

    public final Notification a(Map map, String s)
    {
        Intent intent = c.a(b, a());
        PendingIntent pendingintent = c.a(b, intent);
        Intent intent1 = new Intent(b, com/instagram/android/activity/MainTabActivity);
        intent1.setFlags(0x4000000);
        intent1.setData((new android.net.Uri.Builder()).scheme("ig").authority("inbox").build());
        ba ba1 = (new ba(b)).a().c(Integer.toString(map.size())).a(b.getString(az.app_name)).b(b.getString(az.directshare_notification_inbox_aggregated)).b(pendingintent).a(au.notification_icon);
        if (s != null)
        {
            List list1 = (List)map.get(s);
            if (list1 != null)
            {
                b b1 = (b)list1.get(-1 + list1.size());
                ba1.d(b1.e());
                if ("default".equals(b1.j()))
                {
                    ba1.c();
                }
                intent1.putExtra("from_notification_id", b1.k());
            }
        }
        ba1.a(PendingIntent.getActivity(b, 64278, intent1, 0x8000000));
        bb bb1 = new bb();
        List list;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); bb1.b(((b)list.get(-1 + list.size())).d()))
        {
            list = (List)((java.util.Map.Entry)iterator.next()).getValue();
        }

        ba1.a(bb1);
        return ba1.d();
    }

    public final Object a(String s)
    {
        return b(s);
    }

    public final String a()
    {
        return "directshare";
    }

    public final volatile String a(Object obj)
    {
        return a((b)obj);
    }

    public final boolean a(int j)
    {
        return j >= 2;
    }

    public final SharedPreferences b()
    {
        return com.instagram.l.b.a.a.a(a.getSimpleName());
    }

}
