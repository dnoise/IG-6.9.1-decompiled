// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.e.a.a;

import android.view.View;
import com.instagram.common.analytics.g;
import com.instagram.feed.f.d;
import com.instagram.user.d.a;
import com.instagram.user.d.b;

final class c
    implements android.view.View.OnClickListener
{

    final g a;
    final a b;
    final int c;
    final com.instagram.feed.e.a d;

    c(g g, a a1, int i, com.instagram.feed.e.a a2)
    {
        a = g;
        b = a1;
        c = i;
        d = a2;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.user.d.b.b(a, b, c, false);
        d.a(d.c, b.a().g());
    }
}
