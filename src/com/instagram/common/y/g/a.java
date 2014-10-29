// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y.g;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.instagram.common.y.e;

public final class a
{

    public static String a(NetworkInfo networkinfo)
    {
        if (networkinfo == null)
        {
            return "None";
        }
        if (e.c(networkinfo.getSubtypeName()))
        {
            return networkinfo.getTypeName();
        } else
        {
            Object aobj[] = new Object[2];
            aobj[0] = networkinfo.getTypeName();
            aobj[1] = networkinfo.getSubtypeName();
            return e.a("%s(%s)", aobj);
        }
    }

    public static boolean a(Context context)
    {
        NetworkInfo networkinfo = d(context);
        return networkinfo != null && networkinfo.isConnected();
    }

    public static boolean b(Context context)
    {
        NetworkInfo networkinfo = d(context);
        return networkinfo != null && networkinfo.isConnected() && networkinfo.getType() == 1;
    }

    public static boolean c(Context context)
    {
        if (android.os.Build.VERSION.SDK_INT < 17) goto _L2; else goto _L1
_L1:
        if (android.provider.Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) == 0) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (android.provider.Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) == 0)
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    private static NetworkInfo d(Context context)
    {
        return ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
    }
}
