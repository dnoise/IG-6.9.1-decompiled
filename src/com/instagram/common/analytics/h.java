// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import com.instagram.common.h.a;

public final class h
{

    private static h b;
    private SharedPreferences a;

    private h(Context context)
    {
        a = context.getSharedPreferences("analyticsprefs", 0);
    }

    public static h a()
    {
        if (b == null)
        {
            b = new h(com.instagram.common.h.a.a());
        }
        return b;
    }

    public final String b()
    {
        return a.getString("logging_host", "");
    }
}
