// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.d;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.facebook.aw;
import com.instagram.android.k.a.f;
import com.instagram.user.follow.h;

public final class a extends f
{

    public a()
    {
    }

    protected final View a(Context context)
    {
        return LayoutInflater.from(context).inflate(aw.row_user_dark, null);
    }

    public final View a(Context context, h h, h h1, boolean flag)
    {
        return super.a(context, h, h1, false);
    }
}
