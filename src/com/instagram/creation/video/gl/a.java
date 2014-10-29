// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;

import com.instagram.creation.video.l.j;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

// Referenced classes of package com.instagram.creation.video.gl:
//            ab, c

abstract class a
    implements ab
{

    private static WeakHashMap i = new WeakHashMap();
    private static ThreadLocal j = new ThreadLocal();
    protected int a;
    protected int b;
    protected int c;
    protected int d;
    protected int e;
    protected int f;
    protected c g;
    private boolean h;

    private a()
    {
        c = -1;
        d = -1;
        g = null;
        a(null);
        a = 0;
        b = 0;
        synchronized (i)
        {
            i.put(this, null);
        }
    }

    protected a(byte byte0)
    {
        this();
    }

    public static void k()
    {
        WeakHashMap weakhashmap = i;
        weakhashmap;
        JVM INSTR monitorenter ;
        for (Iterator iterator = i.keySet().iterator(); iterator.hasNext(); ((a)iterator.next()).j()) { }
        break MISSING_BLOCK_LABEL_47;
        Exception exception;
        exception;
        throw exception;
        weakhashmap;
        JVM INSTR monitorexit ;
    }

    public static void l()
    {
        WeakHashMap weakhashmap = i;
        weakhashmap;
        JVM INSTR monitorenter ;
        a a1;
        for (Iterator iterator = i.keySet().iterator(); iterator.hasNext(); a1.a(null))
        {
            a1 = (a)iterator.next();
            a1.b = 0;
        }

        break MISSING_BLOCK_LABEL_55;
        Exception exception;
        exception;
        throw exception;
        weakhashmap;
        JVM INSTR monitorexit ;
    }

    private void n()
    {
        c c1 = g;
        if (c1 != null && h())
        {
            c1.a(this);
        }
        b = 0;
        a(null);
    }

    public int a()
    {
        return a;
    }

    protected final void a(int i1, int j1)
    {
        c = i1;
        d = j1;
        e = com.instagram.creation.video.l.j.b(i1);
        f = com.instagram.creation.video.l.j.b(j1);
        if (e > 4096 || f > 4096)
        {
            new Exception();
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(e);
            aobj[1] = Integer.valueOf(f);
        }
    }

    protected final void a(c c1)
    {
        g = c1;
    }

    public void a(c c1, int i1, int j1, int k1, int l1)
    {
        c1.a(this, i1, j1, k1, l1);
    }

    public int b()
    {
        return c;
    }

    protected abstract boolean b(c c1);

    public int c()
    {
        return d;
    }

    public int d()
    {
        return e;
    }

    public int e()
    {
        return f;
    }

    public boolean f()
    {
        return h;
    }

    protected void finalize()
    {
        j.set(com/instagram/creation/video/gl/a);
        i();
        j.set(null);
    }

    protected abstract int g();

    public boolean h()
    {
        return b == 1;
    }

    public void i()
    {
        n();
    }

    public void j()
    {
        n();
    }

}
