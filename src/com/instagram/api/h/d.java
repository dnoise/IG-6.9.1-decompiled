// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.h;

import android.content.Context;
import android.os.Build;
import com.instagram.common.s.a;
import java.net.URLEncoder;

// Referenced classes of package com.instagram.api.h:
//            c

public final class d
{

    public static String a(String s)
    {
        return a(s, false);
    }

    public static String a(String s, Context context)
    {
        String s1 = com.instagram.common.s.a.b(context);
        String as[] = s.split("#", 2);
        StringBuilder stringbuilder = new StringBuilder(as[0]);
        int i = as.length;
        String s2 = null;
        if (i == 2)
        {
            s2 = as[1];
        }
        if (!s.contains("?"))
        {
            stringbuilder.append("?android=1");
        } else
        {
            stringbuilder.append("&android=1");
        }
        stringbuilder.append((new StringBuilder("&instagram_android_version=")).append(b(s1)).toString());
        stringbuilder.append((new StringBuilder("&android_version=")).append(b(android.os.Build.VERSION.RELEASE)).toString());
        stringbuilder.append((new StringBuilder("&android_sdk=")).append(b(android.os.Build.VERSION.SDK)).toString());
        stringbuilder.append((new StringBuilder("&android_device_model=")).append(b(Build.MODEL)).toString());
        stringbuilder.append((new StringBuilder("&android_device_manuf=")).append(b(Build.MANUFACTURER)).toString());
        stringbuilder.append((new StringBuilder("&android_device_brand=")).append(b(Build.BRAND)).toString());
        stringbuilder.append((new StringBuilder("&android_device_name=")).append(b(Build.DEVICE)).toString());
        if (s2 != null)
        {
            stringbuilder.append("#");
            stringbuilder.append(s2);
        }
        return stringbuilder.toString();
    }

    public static String a(String s, boolean flag)
    {
        return com.instagram.api.h.c.a(s, flag);
    }

    private static String b(String s)
    {
        String s1;
        try
        {
            s1 = URLEncoder.encode(s, "utf-8");
        }
        catch (Exception exception)
        {
            return null;
        }
        return s1;
    }
}
