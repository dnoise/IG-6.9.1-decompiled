// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.os.Handler;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.facebook:
//            bc, bk, bm

public class bl extends AbstractList
{

    private static AtomicInteger a = new AtomicInteger();
    private Handler b;
    private List c;
    private int d;
    private final String e;
    private List f;
    private String g;

    public bl()
    {
        c = new ArrayList();
        d = 0;
        e = Integer.valueOf(a.incrementAndGet()).toString();
        f = new ArrayList();
        c = new ArrayList();
    }

    public bl(Collection collection)
    {
        c = new ArrayList();
        d = 0;
        e = Integer.valueOf(a.incrementAndGet()).toString();
        f = new ArrayList();
        c = new ArrayList(collection);
    }

    public transient bl(bc abc[])
    {
        c = new ArrayList();
        d = 0;
        e = Integer.valueOf(a.incrementAndGet()).toString();
        f = new ArrayList();
        c = Arrays.asList(abc);
    }

    private void a(int k, bc bc1)
    {
        c.add(k, bc1);
    }

    private boolean a(bc bc1)
    {
        return c.add(bc1);
    }

    private bc b(int k)
    {
        return (bc)c.remove(k);
    }

    private bc b(int k, bc bc1)
    {
        return (bc)c.set(k, bc1);
    }

    private List i()
    {
        return bc.a(this);
    }

    private bk j()
    {
        return bc.b(this);
    }

    public final int a()
    {
        return d;
    }

    public final bc a(int k)
    {
        return (bc)c.get(k);
    }

    final void a(Handler handler)
    {
        b = handler;
    }

    public final void a(bm bm)
    {
        if (!f.contains(bm))
        {
            f.add(bm);
        }
    }

    final void a(String s)
    {
        g = s;
    }

    public void add(int k, Object obj)
    {
        a(k, (bc)obj);
    }

    public boolean add(Object obj)
    {
        return a((bc)obj);
    }

    final String b()
    {
        return e;
    }

    final Handler c()
    {
        return b;
    }

    public final void clear()
    {
        c.clear();
    }

    final List d()
    {
        return c;
    }

    final List e()
    {
        return f;
    }

    final String f()
    {
        return g;
    }

    public final List g()
    {
        return i();
    }

    public Object get(int k)
    {
        return a(k);
    }

    public final bk h()
    {
        return j();
    }

    public Object remove(int k)
    {
        return b(k);
    }

    public Object set(int k, Object obj)
    {
        return b(k, (bc)obj);
    }

    public final int size()
    {
        return c.size();
    }

}
