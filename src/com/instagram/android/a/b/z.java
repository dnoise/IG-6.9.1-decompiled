// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.content.Context;
import android.view.View;
import com.instagram.feed.e.b;
import com.instagram.feed.e.c;
import com.instagram.feed.f.d;

final class z
    implements android.view.View.OnLongClickListener
{

    final Context a;
    final b b;

    z(Context context, b b1)
    {
        a = context;
        b = b1;
        super();
    }

    public final boolean onLongClick(View view)
    {
        (new c(a, b, d.a)).a();
        return true;
    }
}
