// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.app.Activity;
import android.support.v4.app.Fragment;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.facebook:
//            cg, cf, bv, bw, 
//            bx, k, cb, cc

public class bu
    implements Serializable
{

    private final cb a;
    private cg b;
    private int c;
    private cc d;
    private boolean e;
    private List f;
    private cf g;
    private String h;
    private String i;

    bu(Activity activity)
    {
        b = cg.a;
        c = 64206;
        e = false;
        f = Collections.emptyList();
        g = cf.c;
        a = new bv(this, activity);
    }

    bu(Fragment fragment)
    {
        b = cg.a;
        c = 64206;
        e = false;
        f = Collections.emptyList();
        g = cf.c;
        a = new bw(this, fragment);
    }

    static boolean a(bu bu1)
    {
        return bu1.e;
    }

    static cb b(bu bu1)
    {
        return bu1.a;
    }

    bu a(cf cf1)
    {
        if (cf1 != null)
        {
            g = cf1;
        }
        return this;
    }

    bu a(cg cg1)
    {
        if (cg1 != null)
        {
            b = cg1;
        }
        return this;
    }

    bu a(List list)
    {
        if (list != null)
        {
            f = list;
        }
        return this;
    }

    final cc a()
    {
        return d;
    }

    final void a(String s)
    {
        h = s;
    }

    final cg b()
    {
        return b;
    }

    final int c()
    {
        return c;
    }

    final List d()
    {
        return f;
    }

    final cb e()
    {
        return a;
    }

    final k f()
    {
        bx bx1 = new bx(this);
        return new k(b, c, e, f, g, h, i, bx1);
    }
}
