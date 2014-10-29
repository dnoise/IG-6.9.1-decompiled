// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.j;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.common.a.d.a;
import java.util.List;

// Referenced classes of package com.instagram.api.j:
//            d, h, a, j

public abstract class c
    implements a
{

    private final int a;
    protected final com.instagram.api.j.a b;
    protected Context c;
    private final an d;

    public c(Context context, an an1, int i1, com.instagram.api.j.a a1)
    {
        c = context;
        d = an1;
        a = i1;
        if (a1 == null)
        {
            a1 = new d(this);
        }
        b = a1;
    }

    public void a(j j1)
    {
    }

    public abstract Object b(j j1);

    public boolean c(j j1)
    {
        return true;
    }

    public void f()
    {
    }

    public void g()
    {
        d.a(a, h());
    }

    public abstract String g_();

    protected h h()
    {
        return new h(c, this, b);
    }

    public final int i()
    {
        return a;
    }

    public final an j()
    {
        return d;
    }

    public final Context k()
    {
        return c;
    }

    public final List l()
    {
        return null;
    }
}
