// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u.b;

import android.content.Context;
import android.content.pm.PackageManager;

// Referenced classes of package com.instagram.common.u.b:
//            d, b, e

public final class f
{

    private static e a;

    public static e a(Context context)
    {
        com/instagram/common/u/b/f;
        JVM INSTR monitorenter ;
        e e;
        if (a == null)
        {
            a = b(context);
        }
        e = a;
        com/instagram/common/u/b/f;
        JVM INSTR monitorexit ;
        return e;
        Exception exception;
        exception;
        throw exception;
    }

    private static boolean a(Context context, String s)
    {
        PackageManager packagemanager = context.getPackageManager();
        try
        {
            packagemanager.getPackageInfo(s, 128);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        return true;
    }

    private static e b(Context context)
    {
        if (a(context, "com.nokia.pushnotifications.service"))
        {
            return d.a();
        } else
        {
            return com.instagram.common.u.b.b.a();
        }
    }
}
