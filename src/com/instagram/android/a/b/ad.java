// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.support.v4.app.s;
import com.facebook.av;
import com.instagram.user.c.c;
import com.instagram.user.d.a;
import com.instagram.user.d.b;
import com.instagram.user.follow.g;

final class ad
    implements g
{

    final boolean a;
    final s b;
    final a c;
    final int d;

    ad(boolean flag, s s1, a a1, int i)
    {
        a = flag;
        b = s1;
        c = a1;
        d = i;
        super();
    }

    public final void a(c c1)
    {
        if (a)
        {
            com.instagram.user.d.b.c((com.instagram.common.analytics.g)b.a(av.layout_container_main), c, d, true);
        }
    }
}
