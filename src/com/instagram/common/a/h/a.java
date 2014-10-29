// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.h;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import com.instagram.common.y.e;
import com.instagram.common.y.f;
import java.util.Locale;

public final class a
{

    public static String a(Context context, String s)
    {
        String s1 = com.instagram.common.s.a.b(context);
        int k;
        DisplayMetrics displaymetrics;
        displaymetrics = f.c(context);
        k = displaymetrics.densityDpi;
        int i = displaymetrics.widthPixels;
        int l = displaymetrics.heightPixels;
_L1:
        String s2;
        String s3;
        String s4;
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(k);
        aobj[1] = Integer.valueOf(i);
        aobj[2] = Integer.valueOf(l);
        s2 = e.a("%sdpi; %sx%s", aobj);
        s3 = Locale.getDefault().toString();
        s4 = "(unknown build)";
        String s7;
        String s6 = Build.MANUFACTURER;
        if (!Build.MANUFACTURER.equals(Build.BRAND))
        {
            Object aobj3[] = new Object[2];
            aobj3[0] = Build.MANUFACTURER;
            aobj3[1] = Build.BRAND;
            s6 = e.a("%s/%s", aobj3);
        }
        Object aobj2[] = new Object[8];
        aobj2[0] = Integer.valueOf(android.os.Build.VERSION.SDK_INT);
        aobj2[1] = android.os.Build.VERSION.RELEASE;
        aobj2[2] = s2;
        aobj2[3] = s6;
        aobj2[4] = Build.MODEL;
        aobj2[5] = Build.DEVICE;
        aobj2[6] = Build.HARDWARE;
        aobj2[7] = s3;
        s7 = e.a("(%s/%s; %s; %s; %s; %s; %s; %s)", aobj2);
        s4 = s7;
_L2:
        return e.a("%s %s Android %s", new Object[] {
            s, s1, s4
        });
        Exception exception;
        exception;
        int j;
        i = 0;
        j = 0;
_L3:
        k = j;
        l = 0;
          goto _L1
        Exception exception1;
        exception1;
        String s5;
        Object aobj1[] = new Object[2];
        aobj1[0] = Integer.valueOf(android.os.Build.VERSION.SDK_INT);
        aobj1[1] = android.os.Build.VERSION.RELEASE;
        s5 = e.a("(%s/%s)", aobj1);
        s4 = s5;
          goto _L2
        Exception exception2;
        exception2;
          goto _L2
        Exception exception3;
        exception3;
        j = k;
        i = 0;
          goto _L3
        Exception exception4;
        exception4;
        j = k;
          goto _L3
    }
}
