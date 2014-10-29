// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.e;

import android.content.Context;
import android.view.View;
import com.instagram.user.e.a.a.e;
import com.instagram.user.e.a.a.f;
import com.instagram.user.follow.h;

public final class a extends com.instagram.user.e.a.a
{

    private e a;

    public a(Context context, e e, h h)
    {
        super(context, h);
        a = e;
    }

    protected final void a(View view, Context context, int i)
    {
        com.instagram.user.e.a.a.a.a(a, (f)view.getTag(), ((com.instagram.f.c.a)getItem(i)).a(), i, false);
    }
}
