// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.v;

import android.content.SharedPreferences;

public final class a
{

    private final SharedPreferences a;
    private final String b;
    private final boolean c = false;

    public a(SharedPreferences sharedpreferences, String s)
    {
        a = sharedpreferences;
        b = s;
    }

    private void b()
    {
        a.edit().remove(b).commit();
    }

    public final Boolean a()
    {
        return Boolean.valueOf(a.getBoolean(b, c));
    }

    public final void a(Boolean boolean1)
    {
        if (boolean1 == null)
        {
            b();
            return;
        } else
        {
            a.edit().putBoolean(b, boolean1.booleanValue()).commit();
            return;
        }
    }
}
