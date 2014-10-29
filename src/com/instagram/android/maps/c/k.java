// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.c;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.y.e.a;

// Referenced classes of package com.instagram.android.maps.c:
//            c

final class k extends b
{

    final c a;
    private String d;

    public k(c c1, Context context, an an, com.instagram.api.j.a a1)
    {
        a = c1;
        super(context, an, com.instagram.common.y.e.a.a(), a1);
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        b1.a("ticket", d);
    }

    public final void a(String s)
    {
        d = s;
        g();
    }

    public final Object b(j j)
    {
        return null;
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.c;
    }

    public final boolean c(j j)
    {
        return false;
    }

    protected final String c_()
    {
        return "maps/check_ticket/";
    }
}
