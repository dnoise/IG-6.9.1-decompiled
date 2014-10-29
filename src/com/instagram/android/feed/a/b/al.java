// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.content.Context;
import android.support.v4.app.s;
import android.view.View;
import com.instagram.android.fragment.fx;
import com.instagram.user.c.a;

final class al
    implements android.view.View.OnClickListener
{

    final s a;
    final Context b;
    final a c;

    al(s s, Context context, a a1)
    {
        a = s;
        b = context;
        c = a1;
        super();
    }

    public final void onClick(View view)
    {
        new fx();
        fx.a(a, b, c.g()).a();
    }
}
