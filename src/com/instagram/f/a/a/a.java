// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.a.a;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.y.d;
import com.instagram.common.y.e;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.f.a.a:
//            b

public abstract class a extends b
{

    private final l a;
    private final com.instagram.f.a.a.b d;

    public a(Context context, an an, l l1, com.instagram.f.a.a.b b1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), null);
        a = l1;
        d = b1;
    }

    public final void a(j j)
    {
        a.a(0);
        a.a(true);
        com.instagram.common.y.d.a("InboxFragment.UPDATE_INBOX");
    }

    public final volatile Object b(j j)
    {
        return null;
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
        Object aobj[] = new Object[3];
        aobj[0] = a.d();
        aobj[1] = com.instagram.f.a.a.b.a(d);
        aobj[2] = a.w();
        return e.a("direct_share/%s/%s/?media_type=%s", aobj);
    }

    public final boolean e_()
    {
        return true;
    }

    public final void f()
    {
        a.a(1);
        a.a(true);
        com.instagram.common.y.d.a("InboxFragment.UPDATE_INBOX");
    }
}
