// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j;

import android.view.View;
import com.instagram.feed.d.k;
import com.instagram.j.a.a.a;

final class e extends k
{

    final a a;
    final String b;

    e(a a1, String s)
    {
        a = a1;
        b = s;
        super();
    }

    public final void onClick(View view)
    {
        a.e(b.toLowerCase().replace("#", ""));
    }
}
