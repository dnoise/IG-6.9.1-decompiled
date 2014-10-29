// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.comments.b;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.feed.d.b;
import com.instagram.feed.d.c;

public final class a
{

    public static void a(Context context, an an, b b1, int i, com.instagram.api.j.a a1)
    {
        a(b1, ((com.instagram.api.j.c) (new com.instagram.feed.comments.c.a(context, an, b1, i, a1))));
    }

    public static void a(b b1)
    {
        b1.l();
        b1.m();
    }

    public static void a(b b1, com.instagram.api.j.c c1)
    {
        if (b1.h() == c.f)
        {
            b1.l();
            c1.g();
            return;
        }
        if (b1.h() == c.b)
        {
            a(b1);
            return;
        } else
        {
            b1.a(c.e);
            return;
        }
    }
}
