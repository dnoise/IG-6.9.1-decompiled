// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.a;

import android.content.Context;
import android.view.View;
import com.instagram.user.e.a.a;
import com.instagram.user.e.a.a.e;
import com.instagram.user.e.a.a.f;
import com.instagram.user.follow.h;

public final class c extends a
{

    private e a;

    public c(Context context, h h, e e)
    {
        super(context, h);
        a = e;
    }

    protected final void a(View view, Context context, int i)
    {
        com.instagram.user.e.a.a.a.a(a, (f)view.getTag(), (com.instagram.user.c.a)getItem(i), i, true);
    }
}
