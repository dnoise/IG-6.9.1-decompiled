// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y.d;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.Iterator;
import java.util.List;

public final class a
{

    private static final String a[] = {
        "com.android.vending", "com.google.android.gms", "com.google.market"
    };
    private static final Uri b = (new android.net.Uri.Builder()).scheme("market").authority("details").build();

    public static Intent a(Uri uri, String s)
    {
        return new Intent("android.intent.action.VIEW", uri.buildUpon().appendQueryParameter("id", s).build());
    }

    private static ActivityInfo a(PackageManager packagemanager, Intent intent)
    {
        for (Iterator iterator = b(packagemanager, intent).iterator(); iterator.hasNext();)
        {
            ResolveInfo resolveinfo = (ResolveInfo)iterator.next();
            if (resolveinfo.activityInfo != null && "com.android.vending".equals(resolveinfo.activityInfo.packageName))
            {
                return resolveinfo.activityInfo;
            }
        }

        return null;
    }

    public static boolean a(PackageManager packagemanager)
    {
        return a(packagemanager, a(b, "foo")) != null;
    }

    public static boolean a(PackageManager packagemanager, String s)
    {
        if (packagemanager == null)
        {
            return false;
        }
        boolean flag;
        try
        {
            flag = packagemanager.getApplicationInfo(s, 0).enabled;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        return flag;
    }

    public static String b(PackageManager packagemanager)
    {
        String as[];
        int i;
        int j;
        ResolveInfo resolveinfo = packagemanager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.instagram.android")), 32);
        if (resolveinfo == null || resolveinfo.activityInfo == null || resolveinfo.activityInfo.name == null)
        {
            return "no_app_store_found_on_device";
        }
        if (!resolveinfo.activityInfo.name.contains("ResolverActivity") && resolveinfo.activityInfo.packageName != null)
        {
            return resolveinfo.activityInfo.packageName;
        }
        as = a;
        i = as.length;
        j = 0;
_L2:
        String s;
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        s = as[j];
        packagemanager.getPackageInfo(s, 1);
        return s;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        return "unknown_third_party_store";
    }

    private static List b(PackageManager packagemanager, Intent intent)
    {
        return packagemanager.queryIntentActivities(intent, 0x10000);
    }

}
