// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.util.a;

import android.os.Build;

public final class a
{

    private static Boolean a = null;
    private static Boolean b = null;

    public static boolean a()
    {
        if (a == null)
        {
            boolean flag;
            if (Build.MODEL.contains("GT-S5360") || Build.MODEL.contains("GT-S5830M") || Build.MODEL.contains("GT-S5830i") || Build.MODEL.contains("GT-S5830C") || Build.MODEL.contains("GT-S5570I") || Build.MODEL.contains("GT-S5363") || Build.MODEL.contains("GT-S5367") || Build.MODEL.contains("GT-S6102") || Build.MODEL.contains("GT-S6102B") || Build.MODEL.contains("GT-S5300") || Build.MODEL.contains("GT-S5839i") || Build.MODEL.contains("GT-S6802B") || Build.MODEL.contains("Vodafone Smart II") || Build.MODEL.contains("ZTE V768") || Build.MODEL.contains("GT-S5369") || Build.MODEL.contains("GT-B5330") || Build.MODEL.contains("GT-B5512B") || Build.MODEL.contains("GT-S5302B") || Build.MODEL.contains("GT-S6802") || Build.MODEL.contains("ONE TOUCH 983") || Build.MODEL.contains("ALCATEL_one_touch_983") || Build.MODEL.contains("TREND") || Build.MODEL.contains("OMNI") || Build.MODEL.contains("MS1") || Build.MODEL.contains("PSPR355") || Build.MODEL.contains("Multilaser Orion"))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a = Boolean.valueOf(flag);
        }
        return a.booleanValue();
    }

    public static boolean b()
    {
        if (b == null)
        {
            b = Boolean.valueOf(Build.MODEL.startsWith("LG-E61"));
        }
        return b.booleanValue();
    }

}
