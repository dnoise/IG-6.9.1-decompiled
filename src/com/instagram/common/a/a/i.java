// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.a;

import android.content.Context;
import android.support.v4.a.a;
import com.instagram.common.l.a.e;

// Referenced classes of package com.instagram.common.a.a:
//            h, a

final class i extends a
{

    final h n;
    private e o;

    i(h h1, Context context)
    {
        n = h1;
        super(context);
    }

    private void a(e e1)
    {
        o = e1;
        if (h())
        {
            super.a(e1);
        }
    }

    private e u()
    {
        return com.instagram.common.a.a.h.a(n).g();
    }

    public final volatile void a(Object obj)
    {
        a((e)obj);
    }

    public final Object d()
    {
        return u();
    }

    protected final void l()
    {
        super.l();
        if (o != null)
        {
            a(o);
            return;
        } else
        {
            m();
            return;
        }
    }

    protected final void r()
    {
        super.r();
        o = null;
    }
}
