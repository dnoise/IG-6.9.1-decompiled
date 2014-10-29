// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.s;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.facebook.d.d.b;
import com.facebook.d.d.c;

public final class a
{

    public static int a(Context context)
    {
        int i;
        try
        {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return -1;
        }
        return i;
    }

    public static String b(Context context)
    {
        String s;
        try
        {
            s = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return "0.0.0 (Unknown)";
        }
        return s;
    }

    public static String c(Context context)
    {
        String s = (new c(context.getApplicationContext())).a("com.facebook.versioncontrol.branch");
        if (s == null)
        {
            s = "";
        }
        return s;
    }

    public static String d(Context context)
    {
        return com.facebook.d.d.b.a(context);
    }
}
