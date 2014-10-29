// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.v;

import android.content.SharedPreferences;

public final class b
{

    private final SharedPreferences a;
    private final String b;
    private final long c = 0L;

    public b(SharedPreferences sharedpreferences, String s)
    {
        a = sharedpreferences;
        b = s;
    }

    public final Long a()
    {
        return Long.valueOf(a.getLong(b, c));
    }

    public final void a(Long long1)
    {
        if (long1 == null)
        {
            b();
            return;
        } else
        {
            a.edit().putLong(b, long1.longValue()).commit();
            return;
        }
    }

    public final void b()
    {
        a.edit().remove(b).commit();
    }
}
