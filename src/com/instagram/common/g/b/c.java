// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.b;

import java.lang.ref.WeakReference;

// Referenced classes of package com.instagram.common.g.b:
//            h, k

public final class c
{

    private final String a;
    private final WeakReference b;
    private boolean c;
    private boolean d;
    private boolean e;

    public c(String s, k k1)
    {
        c = false;
        d = false;
        e = false;
        a = s;
        b = new WeakReference(k1);
    }

    public final c a()
    {
        d = true;
        return this;
    }

    public final c a(boolean flag)
    {
        c = flag;
        return this;
    }

    public final c b(boolean flag)
    {
        e = flag;
        return this;
    }

    public final void b()
    {
        h.a().a(this);
    }

    final String c()
    {
        return a;
    }

    final k d()
    {
        return (k)b.get();
    }

    final boolean e()
    {
        return c;
    }

    final boolean f()
    {
        return d;
    }

    final boolean g()
    {
        return e;
    }
}
