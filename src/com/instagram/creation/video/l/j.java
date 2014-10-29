// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.l;

import android.app.Activity;
import android.view.Display;
import android.view.WindowManager;

public final class j
{

    public static int a(Activity activity)
    {
        switch (activity.getWindowManager().getDefaultDisplay().getRotation())
        {
        case 0: // '\0'
        default:
            return 0;

        case 1: // '\001'
            return 90;

        case 2: // '\002'
            return 180;

        case 3: // '\003'
            return 270;
        }
    }

    public static void a(boolean flag)
    {
        if (!flag)
        {
            throw new AssertionError();
        } else
        {
            return;
        }
    }

    public static boolean a(int i)
    {
        return i >>> 24 == 255;
    }

    public static int b(int i)
    {
        if (i <= 0 || i > 0x40000000)
        {
            throw new IllegalArgumentException((new StringBuilder("n is invalid: ")).append(i).toString());
        } else
        {
            int k = i - 1;
            int l = k | k >> 16;
            int i1 = l | l >> 8;
            int j1 = i1 | i1 >> 4;
            int k1 = j1 | j1 >> 2;
            return 1 + (k1 | k1 >> 1);
        }
    }
}
