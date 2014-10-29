// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.y.e;
import com.instagram.common.y.e.a;
import com.instagram.sharelater.ShareLaterMedia;

public final class x extends b
{

    private ShareLaterMedia a;

    public x(Context context, an an, com.instagram.api.j.a a1, ShareLaterMedia sharelatermedia)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
        a = sharelatermedia;
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        a.a(b1);
    }

    public final volatile Object b(j j)
    {
        return null;
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    protected final String c_()
    {
        return e.a((new StringBuilder("media/")).append(a.b()).append("/share/").toString(), new Object[0]);
    }

    public final boolean e_()
    {
        return true;
    }
}
