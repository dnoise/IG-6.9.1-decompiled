// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.j;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.api.c.a;

// Referenced classes of package com.instagram.api.j:
//            c, a

public abstract class b extends c
    implements a
{

    private com.instagram.common.a.c.b a;

    public b(Context context, an an, int i, com.instagram.api.j.a a1)
    {
        super(context, an, i, a1);
    }

    public final com.instagram.common.a.c.b a()
    {
        if (a == null)
        {
            a = new com.instagram.common.a.c.b();
            com.instagram.api.i.a.a(a, this);
            a(a);
            if (b())
            {
                a = com.instagram.api.i.b.b(a);
                b(a);
            }
        }
        return a;
    }

    protected void a(com.instagram.common.a.c.b b1)
    {
    }

    protected void b(com.instagram.common.a.c.b b1)
    {
    }

    public boolean b()
    {
        return false;
    }

    protected abstract String c_();

    public boolean e_()
    {
        return com.instagram.l.b.a.a().I() || com.instagram.l.b.a.a().J() && com.instagram.common.y.g.a.b(c);
    }

    public void g()
    {
        a = null;
        super.g();
    }

    public final String g_()
    {
        return com.instagram.api.h.a.a(c_(), e_());
    }
}
