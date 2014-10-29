// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.d.d;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.util.Log;

public class c
{

    private final Context a;

    public c(Context context)
    {
        a = context;
    }

    private static void a(Exception exception)
    {
        Log.e(com/facebook/d/d/c.getName(), "Error reading <meta-data> from AndroidManifest.xml.", exception);
    }

    public final String a(String s)
    {
        return a(s, a.getPackageName());
    }

    public final String a(String s, String s1)
    {
        ApplicationInfo applicationinfo;
        String s2;
        try
        {
            applicationinfo = a.getPackageManager().getApplicationInfo(s1, 128);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            a(((Exception) (namenotfoundexception)));
            return null;
        }
        catch (RuntimeException runtimeexception)
        {
            if (runtimeexception.getCause() instanceof DeadObjectException)
            {
                a(((Exception) (runtimeexception)));
                return null;
            } else
            {
                throw runtimeexception;
            }
        }
        s2 = null;
        if (applicationinfo != null)
        {
            Bundle bundle = applicationinfo.metaData;
            s2 = null;
            if (bundle != null)
            {
                Object obj = applicationinfo.metaData.get(s);
                s2 = null;
                if (obj != null)
                {
                    s2 = obj.toString();
                }
            }
        }
        return s2;
    }
}
