// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.util.Log;
import com.facebook.bo;
import com.facebook.cc;
import com.facebook.cf;
import com.facebook.cg;
import com.facebook.g.p;
import com.facebook.g.t;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.facebook.widget:
//            LoginButton, f

final class c
{

    private cf a;
    private List b;
    private p c;
    private f d;
    private cg e;
    private cc f;

    c()
    {
        a = cf.c;
        b = Collections.emptyList();
        c = null;
        e = cg.a;
    }

    static cf a(c c1)
    {
        return c1.a;
    }

    private static boolean a(List list, p p1, bo bo1)
    {
        if (p.b.equals(p1) && t.a(list))
        {
            throw new IllegalArgumentException("Permissions for publish actions cannot be null or empty.");
        }
        if (bo1 != null && bo1.a() && !t.a(list, bo1.e()))
        {
            Log.e(LoginButton.a(), "Cannot set additional permissions when session is already open.");
            return false;
        } else
        {
            return true;
        }
    }

    static List b(c c1)
    {
        return c1.b;
    }

    static cg c(c c1)
    {
        return c1.e;
    }

    static p d(c c1)
    {
        return c1.c;
    }

    static cc e(c c1)
    {
        return c1.f;
    }

    static f f(c c1)
    {
        return c1.d;
    }

    public final f a()
    {
        return d;
    }

    public final void a(cc cc)
    {
        f = cc;
    }

    public final void a(cf cf1)
    {
        a = cf1;
    }

    public final void a(cg cg1)
    {
        e = cg1;
    }

    public final void a(f f1)
    {
        d = f1;
    }

    public final void a(List list, bo bo1)
    {
        if (p.b.equals(c))
        {
            throw new UnsupportedOperationException("Cannot call setReadPermissions after setPublishPermissions has been called.");
        }
        if (a(list, p.a, bo1))
        {
            b = list;
            c = p.a;
        }
    }

    public final cf b()
    {
        return a;
    }

    public final void b(List list, bo bo1)
    {
        if (p.a.equals(c))
        {
            throw new UnsupportedOperationException("Cannot call setPublishPermissions after setReadPermissions has been called.");
        }
        if (a(list, p.b, bo1))
        {
            b = list;
            c = p.b;
        }
    }

    final List c()
    {
        return b;
    }

    public final cg d()
    {
        return e;
    }

    public final cc e()
    {
        return f;
    }
}
