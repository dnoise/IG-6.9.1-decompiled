// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c2dm.a;

import android.app.Notification;
import android.content.Context;
import android.content.SharedPreferences;
import com.instagram.common.u.i;
import com.instagram.l.b.a.a;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.instagram.android.c2dm.a:
//            c

public class b
    implements i
{

    private static final Class a = com/instagram/android/c2dm/a/b;
    private Context b;

    public b(Context context)
    {
        b = context;
    }

    private static String a(com.instagram.notifications.a.b b1)
    {
        return b1.l();
    }

    private static com.instagram.notifications.a.b b(String s)
    {
        return com.instagram.notifications.a.b.a(s);
    }

    public final Notification a(String s, List list)
    {
        android.support.v4.app.ba ba = com.instagram.android.c2dm.a.c.a(b, a(), s, list);
        return com.instagram.android.c2dm.a.c.a(b, list, ba);
    }

    public final Notification a(Map map, String s)
    {
        return null;
    }

    public final Object a(String s)
    {
        return b(s);
    }

    public final String a()
    {
        return "newstab";
    }

    public final volatile String a(Object obj)
    {
        return a((com.instagram.notifications.a.b)obj);
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
