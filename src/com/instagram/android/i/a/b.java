// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.i.a;

import android.support.v4.app.s;
import com.facebook.av;
import com.instagram.android.i.a;
import com.instagram.android.i.c;
import com.instagram.common.analytics.g;

final class b extends c
{

    final s a;
    final String b;
    final String c;

    b(s s1, String s2, String s3)
    {
        a = s1;
        b = s2;
        c = s3;
        super();
    }

    public final void a(com.instagram.user.c.a a1)
    {
        com.instagram.android.i.b.a((g)a.a(av.layout_container_main), a.b, b, a1.g(), c);
    }

    public final void b(com.instagram.user.c.a a1)
    {
        com.instagram.android.i.b.a((g)a.a(av.layout_container_main), a.c, b, a1.g(), c);
    }
}
