// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

// Referenced classes of package com.instagram.o:
//            d, c

public final class b
{

    public static int a(Context context)
    {
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        if (Math.abs(306 - displaymetrics.widthPixels) < Math.abs(640 - displaymetrics.widthPixels))
        {
            return d.a;
        } else
        {
            return d.b;
        }
    }

    public static String a(Context context, String s)
    {
        if (s == null || !s.endsWith("_8.jpg")) goto _L2; else goto _L1
_L1:
        c.a[-1 + a(context)];
        JVM INSTR tableswitch 1 1: default 40
    //                   1 42;
           goto _L2 _L3
_L2:
        return s;
_L3:
        return s.replace("_8.jpg", "_6.jpg");
    }
}
