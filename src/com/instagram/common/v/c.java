// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.v;

import android.content.SharedPreferences;

public final class c
{

    private final SharedPreferences a;
    private final String b;
    private final String c = null;

    public c(SharedPreferences sharedpreferences, String s)
    {
        a = sharedpreferences;
        b = s;
    }

    public final String a()
    {
        return a.getString(b, c);
    }

    public final void a(String s)
    {
        a.edit().putString(b, s).commit();
    }

    public final void b()
    {
        a.edit().remove(b).commit();
    }
}
