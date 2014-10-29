// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.api.j.b;
import com.instagram.common.d.j;
import com.instagram.common.y.e.a;
import com.instagram.feed.d.l;

public final class h extends b
{

    private final String a;
    private final l d;

    public h(Context context, an an, String s, l l1, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
        a = s;
        d = l1;
    }

    private Void m()
    {
        d.b(a.equals("approve"));
        d.z();
        if (a.equals("approve"))
        {
            (new j(k())).a("com.instagram.android.people.fragment.PhotosOfYouFragment.PHOTOS_OF_YOU_UPDATED");
        }
        return null;
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        b1.a(a, d.d());
    }

    public final Object b(com.instagram.api.j.j j1)
    {
        return m();
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
        return "usertags/review/";
    }
}
