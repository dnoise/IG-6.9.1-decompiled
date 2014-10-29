// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.util;

import android.os.Bundle;
import android.support.v4.app.ag;
import android.support.v4.app.f;
import android.support.v4.app.s;
import com.facebook.av;
import com.instagram.b.c.a;
import com.instagram.common.analytics.g;

public final class b
{

    private final s a;
    private f b;
    private Bundle c;
    private String d;
    private String e;

    public b(s s1)
    {
        d = "dialog";
        a = s1;
    }

    public final b a(f f1, Bundle bundle)
    {
        b = f1;
        c = bundle;
        return this;
    }

    public final void a()
    {
        android.support.v4.app.Fragment fragment = a.a(av.layout_container_main);
        if (fragment instanceof g)
        {
            com.instagram.b.c.a.a().a((g)fragment, a.g(), e);
        }
        if (c != null && !c.isEmpty())
        {
            b.g(c);
        }
        android.support.v4.app.Fragment fragment1 = a.a(d);
        if (fragment1 != null)
        {
            a.a().a(fragment1).b();
            a.b();
        }
        b.a(a, d);
    }
}
