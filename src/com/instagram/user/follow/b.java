// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.follow;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.api.j.j;
import com.instagram.common.y.e.a;
import com.instagram.user.c.c;

// Referenced classes of package com.instagram.user.follow:
//            n

public final class b extends com.instagram.api.j.b
{

    private com.instagram.user.c.a a;

    public b(Context context, an an, com.instagram.user.c.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), null);
        a = a1;
        if (a.t() == c.a)
        {
            com.instagram.user.follow.n.a();
            com.instagram.user.follow.n.a(a, c.b, 0);
        }
    }

    public final void a(j j1)
    {
        if (a.t() == c.b)
        {
            com.instagram.user.follow.n.a();
            n.b(a);
        }
    }

    public final Object b(j j1)
    {
        com.instagram.user.follow.n.a().a(a, j1.l(), this);
        return j1;
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.c;
    }

    public final boolean c(j j1)
    {
        return false;
    }

    protected final String c_()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.g();
        return String.format("friendships/show/%s/", aobj);
    }
}
