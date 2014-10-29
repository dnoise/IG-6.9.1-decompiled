// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a.c;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.facebook.a.a;

public final class g
{

    private final Context a;

    public g(Context context)
    {
        a = context;
    }

    public final PackageInfo a()
    {
        PackageManager packagemanager = a.getPackageManager();
        if (packagemanager == null)
        {
            return null;
        }
        PackageInfo packageinfo;
        try
        {
            packageinfo = packagemanager.getPackageInfo(a.getPackageName(), 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            String _tmp = a.a;
            (new StringBuilder("Failed to find PackageInfo for current App : ")).append(a.getPackageName());
            return null;
        }
        catch (RuntimeException runtimeexception)
        {
            return null;
        }
        return packageinfo;
    }

    public final boolean a(String s)
    {
        PackageManager packagemanager = a.getPackageManager();
        if (packagemanager != null)
        {
            int i;
            try
            {
                i = packagemanager.checkPermission(s, a.getPackageName());
            }
            catch (RuntimeException runtimeexception)
            {
                return false;
            }
            if (i == 0)
            {
                return true;
            }
        }
        return false;
    }
}
