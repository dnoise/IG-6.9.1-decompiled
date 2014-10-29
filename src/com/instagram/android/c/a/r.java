// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.a.l;
import com.instagram.api.j.g;
import com.instagram.api.j.p;
import com.instagram.common.y.e.a;

public final class r extends g
{

    private final com.instagram.feed.d.l a;

    public r(Context context, an an, com.instagram.feed.d.l l1, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
        a = l1;
    }

    public final boolean a(String s, l l1, p p1)
    {
        if ("media".equals(s))
        {
            l1.nextToken();
            p1.a(com.instagram.feed.d.l.a(l1));
            return true;
        } else
        {
            return false;
        }
    }

    public final boolean b()
    {
        return true;
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    protected final String c_()
    {
        return (new StringBuilder("usertags/")).append(a.d()).append("/remove/").toString();
    }
}
