// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.e;

import com.fasterxml.jackson.a.g.k;
import java.util.Arrays;

// Referenced classes of package com.fasterxml.jackson.a.e:
//            e

public final class d
{

    static final d a = new d();
    protected d b;
    protected final boolean c;
    protected final boolean d;
    protected String e[];
    protected e f[];
    protected int g;
    protected int h;
    protected int i;
    protected int j;
    protected boolean k;
    private final int l;

    private d()
    {
        d = true;
        c = true;
        k = true;
        l = 0;
        j = 0;
        d();
    }

    private d(d d1, boolean flag, boolean flag1, String as[], e ae[], int i1, int j1, 
            int k1)
    {
        b = d1;
        d = flag;
        c = flag1;
        e = as;
        f = ae;
        g = i1;
        l = j1;
        int l1 = as.length;
        h = b(l1);
        i = l1 - 1;
        j = k1;
        k = false;
    }

    private int a(String s)
    {
        int i1 = s.length();
        int j1 = l;
        for (int k1 = 0; k1 < i1;)
        {
            int l1 = j1 * 33 + s.charAt(k1);
            k1++;
            j1 = l1;
        }

        if (j1 == 0)
        {
            j1 = 1;
        }
        return j1;
    }

    private int a(char ac[], int i1)
    {
        int j1 = l;
        for (int k1 = 0; k1 < i1;)
        {
            int l1 = j1 * 33 + ac[k1];
            k1++;
            j1 = l1;
        }

        if (j1 == 0)
        {
            j1 = 1;
        }
        return j1;
    }

    public static d a()
    {
        long l1 = System.currentTimeMillis();
        return a(1 | (int)l1 + (int)(l1 >>> 32));
    }

    private static d a(int i1)
    {
        return a.c(i1);
    }

    private void a(d d1)
    {
        if (d1.e() <= 12000 && d1.j <= 63) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorenter ;
        d();
        k = false;
        this;
        JVM INSTR monitorexit ;
_L4:
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        if (d1.e() <= e()) goto _L4; else goto _L3
_L3:
        this;
        JVM INSTR monitorenter ;
        e = d1.e;
        f = d1.f;
        g = d1.g;
        h = d1.h;
        i = d1.i;
        j = d1.j;
        k = false;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    private static int b(int i1)
    {
        return i1 - (i1 >> 2);
    }

    private d c(int i1)
    {
        return new d(null, true, true, e, f, g, i1, j);
    }

    private int d(int i1)
    {
        return i1 + (i1 >>> 15) & i;
    }

    private void d()
    {
        e = new String[64];
        f = new e[32];
        i = 63;
        g = 0;
        j = 0;
        h = b(64);
    }

    private int e()
    {
        return g;
    }

    private boolean f()
    {
        return k;
    }

    private void g()
    {
        String as[] = e;
        int i1 = as.length;
        e = new String[i1];
        System.arraycopy(as, 0, e, 0, i1);
        e ae[] = f;
        int j1 = ae.length;
        f = new e[j1];
        System.arraycopy(ae, 0, f, 0, j1);
    }

    private void h()
    {
        int i1 = e.length;
        int j1 = i1 + i1;
        if (j1 > 0x10000)
        {
            g = 0;
            Arrays.fill(e, null);
            Arrays.fill(f, null);
            k = true;
        } else
        {
            String as[] = e;
            e ae[] = f;
            e = new String[j1];
            f = new e[j1 >> 1];
            i = j1 - 1;
            h = b(j1);
            int k1 = 0;
            int l1 = 0;
            int i2 = 0;
            while (k1 < i1) 
            {
                String s1 = as[k1];
                if (s1 != null)
                {
                    i2++;
                    int l3 = d(a(s1));
                    if (e[l3] == null)
                    {
                        e[l3] = s1;
                    } else
                    {
                        int i4 = l3 >> 1;
                        e e3 = new e(s1, f[i4]);
                        f[i4] = e3;
                        l1 = Math.max(l1, e3.c());
                    }
                }
                k1++;
            }
            int j2 = i1 >> 1;
            int k2 = i2;
            for (int l2 = 0; l2 < j2; l2++)
            {
                e e1 = ae[l2];
                while (e1 != null) 
                {
                    int i3 = k2 + 1;
                    String s = e1.a();
                    int j3 = d(a(s));
                    if (e[j3] == null)
                    {
                        e[j3] = s;
                    } else
                    {
                        int k3 = j3 >> 1;
                        e e2 = new e(s, f[k3]);
                        f[k3] = e2;
                        l1 = Math.max(l1, e2.c());
                    }
                    e1 = e1.b();
                    k2 = i3;
                }
            }

            j = l1;
            if (k2 != g)
            {
                throw new Error((new StringBuilder("Internal error on SymbolTable.rehash(): had ")).append(g).append(" entries; now have ").append(k2).append(".").toString());
            }
        }
    }

    private void i()
    {
        throw new IllegalStateException((new StringBuilder("Longest collision chain in symbol table (of size ")).append(g).append(") now exceeds maximum, 255 -- suspect a DoS attack based on hash collisions").toString());
    }

    public final d a(boolean flag, boolean flag1)
    {
        this;
        JVM INSTR monitorenter ;
        String as[];
        e ae[];
        int i1;
        int j1;
        int k1;
        as = e;
        ae = f;
        i1 = g;
        j1 = l;
        k1 = j;
        this;
        JVM INSTR monitorexit ;
        return new d(this, flag, flag1, as, ae, i1, j1, k1);
        Exception exception;
        exception;
        throw exception;
    }

    public final String a(char ac[], int i1, int j1, int k1)
    {
        String s1;
        if (j1 <= 0)
        {
            s1 = "";
        } else
        {
            if (!d)
            {
                return new String(ac, i1, j1);
            }
            int l1 = d(k1);
            String s = e[l1];
            if (s != null)
            {
                if (s.length() == j1)
                {
                    int k2;
                    for (k2 = 0; s.charAt(k2) == ac[i1 + k2] && ++k2 < j1;) { }
                    if (k2 == j1)
                    {
                        return s;
                    }
                }
                e e2 = f[l1 >> 1];
                if (e2 != null)
                {
                    String s2 = e2.a(ac, i1, j1);
                    if (s2 != null)
                    {
                        return s2;
                    }
                }
            }
            int i2;
            int j2;
            e e1;
            if (!k)
            {
                g();
                k = true;
                i2 = l1;
            } else
            if (g >= h)
            {
                h();
                i2 = d(a(ac, j1));
            } else
            {
                i2 = l1;
            }
            s1 = new String(ac, i1, j1);
            if (c)
            {
                s1 = k.a.a(s1);
            }
            g = 1 + g;
            if (e[i2] == null)
            {
                e[i2] = s1;
                return s1;
            }
            j2 = i2 >> 1;
            e1 = new e(s1, f[j2]);
            f[j2] = e1;
            j = Math.max(e1.c(), j);
            if (j > 255)
            {
                i();
                return s1;
            }
        }
        return s1;
    }

    public final void b()
    {
        while (!f() || b == null) 
        {
            return;
        }
        b.a(this);
        k = false;
    }

    public final int c()
    {
        return l;
    }

}
