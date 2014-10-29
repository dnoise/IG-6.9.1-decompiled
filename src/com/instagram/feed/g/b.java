// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.g;

import android.content.SharedPreferences;
import com.instagram.feed.d.l;
import com.instagram.l.b.a.a;

public final class b
{

    private static b a;
    private SharedPreferences b;

    private b()
    {
        b = com.instagram.l.b.a.a.a("starredHidePreferences");
    }

    public static b a()
    {
        if (a == null)
        {
            a = new b();
        }
        return a;
    }

    public final boolean a(l l1)
    {
        return b.getBoolean(l1.d(), false);
    }

    public final void b(l l1)
    {
        b.edit().putBoolean(l1.d(), true).commit();
    }
}
