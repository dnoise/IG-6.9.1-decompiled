// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y.a;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;

public final class a
{

    private static String a(Context context)
    {
        PackageManager packagemanager;
        ApplicationInfo applicationinfo;
        packagemanager = context.getPackageManager();
        applicationinfo = null;
        if (packagemanager == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        ApplicationInfo applicationinfo1 = packagemanager.getApplicationInfo(context.getApplicationInfo().packageName, 0);
        applicationinfo = applicationinfo1;
_L2:
        Object obj;
        if (applicationinfo != null)
        {
            obj = packagemanager.getApplicationLabel(applicationinfo);
        } else
        {
            obj = context.getString(0x104000f);
        }
        return String.valueOf(obj);
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        applicationinfo = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void a(Context context, String s)
    {
        b(context, s);
    }

    private static void b(Context context, String s)
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            boolean flag = TextUtils.isEmpty(null);
            String s1 = null;
            if (flag)
            {
                s1 = a(context);
            }
            ClipData clipdata = ClipData.newPlainText(s1, s);
            ((ClipboardManager)context.getSystemService("clipboard")).setPrimaryClip(clipdata);
            return;
        } else
        {
            ((android.text.ClipboardManager)context.getSystemService("clipboard")).setText(s);
            return;
        }
    }
}
