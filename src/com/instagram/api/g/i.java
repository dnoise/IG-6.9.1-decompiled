// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.g;


// Referenced classes of package com.instagram.api.g:
//            a

public final class i
{

    private final String a;
    private final String b;
    private int c;
    private boolean d;
    private String e;
    private String f;
    private String g;
    private a h;
    private long i;
    private long j;
    private long k;
    private long l;
    private long m;
    private long n;
    private long o;

    public i(String s, String s1)
    {
        a = s;
        b = s1;
        e = null;
        d = false;
        i = -1L;
        j = -1L;
        k = -1L;
        l = -1L;
        m = -1L;
        n = 0L;
        o = 0L;
    }

    public final String a()
    {
        return a;
    }

    final void a(int i1)
    {
        c = i1;
    }

    final void a(long l1)
    {
        i = l1;
    }

    final void a(a a1)
    {
        h = a1;
    }

    final void a(String s)
    {
        e = s;
    }

    final void a(boolean flag)
    {
        d = flag;
    }

    public final String b()
    {
        return b;
    }

    final void b(long l1)
    {
        j = l1;
    }

    final void b(String s)
    {
        f = s;
    }

    public final String c()
    {
        return e;
    }

    final void c(long l1)
    {
        k = l1;
    }

    final void c(String s)
    {
        g = s;
    }

    final void d(long l1)
    {
        l = l1;
    }

    public final boolean d()
    {
        return d;
    }

    public final int e()
    {
        return c;
    }

    final void e(long l1)
    {
        m = l1;
    }

    public final String f()
    {
        return f;
    }

    final void f(long l1)
    {
        n = l1;
    }

    public final String g()
    {
        return g;
    }

    final void g(long l1)
    {
        o = l1;
    }

    public final long h()
    {
        return i;
    }

    public final long i()
    {
        return n;
    }

    public final long j()
    {
        return o;
    }

    public final a k()
    {
        return h;
    }

    public final long l()
    {
        return k - j;
    }

    public final long m()
    {
        return l - k;
    }

    public final long n()
    {
        return m - l;
    }

    public final boolean o()
    {
        return j != -1L && k != -1L && l != -1L && m != -1L;
    }

    public final String p()
    {
        return (new StringBuilder("NetworkTrace(mRequestUri=")).append(a).append(", mConnectionType=").append(b).append(", uploadingDuration=").append(l()).append(", serverLatency=").append(m()).append(", downloadDuration=").append(n()).append(')').toString();
    }
}
