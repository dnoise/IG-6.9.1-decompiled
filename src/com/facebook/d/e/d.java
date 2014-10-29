// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.d.e;

import com.facebook.d.g.a;

// Referenced classes of package com.facebook.d.e:
//            c, a, e, b

public final class d
{

    private Class a;
    private int b;
    private int c;
    private int d;
    private long e;
    private b f;
    private a g;
    private final e h;

    public d(Class class1, a a1)
    {
        this(class1, a1, (byte)0);
    }

    private d(Class class1, a a1, byte byte0)
    {
        b = 16;
        c = 1024;
        d = 16;
        e = 60000L;
        h = null;
        a = class1;
        g = a1;
    }

    public final com.facebook.d.e.a a()
    {
        if (g == null)
        {
            throw new IllegalArgumentException("Must add a clock to the object pool builder");
        }
        Object obj = f;
        if (obj == null)
        {
            obj = new c(a);
        }
        com.facebook.d.e.a a1 = new com.facebook.d.e.a(a, b, c, d, e, ((b) (obj)), g);
        if (h != null)
        {
            h.a(a, a1);
        }
        return a1;
    }

    public final d a(b b1)
    {
        f = b1;
        return this;
    }
}
