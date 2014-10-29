// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.os.Bundle;
import android.support.v4.app.s;
import android.view.View;
import com.instagram.android.people.b.m;
import com.instagram.user.c.a;

final class ai
    implements android.view.View.OnClickListener
{

    final a a;
    final s b;

    ai(a a1, s s)
    {
        a = a1;
        b = s;
        super();
    }

    public final void onClick(View view)
    {
        Bundle bundle = new Bundle();
        bundle.putString("user_id", a.g());
        bundle.putString("username", a.b());
        (new com.instagram.base.a.a.a(b)).a(new m(), bundle).a();
    }
}
