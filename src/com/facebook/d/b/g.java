// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.d.b;


// Referenced classes of package com.facebook.d.b:
//            f

public final class g
{

    private String a;
    private String b;
    private Throwable c;
    private boolean d;
    private int e;
    private boolean f;

    g()
    {
        e = 1000;
    }

    public final g a(String s)
    {
        a = s;
        return this;
    }

    public final g a(Throwable throwable)
    {
        c = throwable;
        return this;
    }

    public final String a()
    {
        return a;
    }

    public final g b(String s)
    {
        b = s;
        return this;
    }

    public final String b()
    {
        return b;
    }

    public final Throwable c()
    {
        return c;
    }

    public final boolean d()
    {
        return d;
    }

    public final g e()
    {
        d = true;
        return this;
    }

    public final int f()
    {
        return e;
    }

    public final boolean g()
    {
        return f;
    }

    public final f h()
    {
        return new f(this);
    }
}
