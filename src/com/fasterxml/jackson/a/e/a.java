// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.e;

import com.fasterxml.jackson.a.g.k;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

// Referenced classes of package com.fasterxml.jackson.a.e:
//            c, g, h, i, 
//            j, b, f

public final class a
{

    protected final a a;
    protected final AtomicReference b;
    protected final boolean c;
    protected int d;
    protected int e;
    protected int f;
    protected int g[];
    protected f h[];
    protected b i[];
    protected int j;
    protected int k;
    private final int l;
    private transient boolean m;
    private boolean n;
    private boolean o;
    private boolean p;

    private a(int i1)
    {
        a = null;
        l = i1;
        c = true;
        b = new AtomicReference(b(64));
    }

    private a(a a1, boolean flag, int i1, c c1)
    {
        a = a1;
        l = i1;
        c = flag;
        b = null;
        d = c1.a;
        f = c1.b;
        g = c1.c;
        h = c1.d;
        i = c1.e;
        j = c1.f;
        k = c1.g;
        e = c1.h;
        m = false;
        n = true;
        o = true;
        p = true;
    }

    public static a a()
    {
        long l1 = System.currentTimeMillis();
        return c(1 | (int)l1 + (int)(l1 >>> 32));
    }

    private static f a(int i1, String s, int ai[], int j1)
    {
        if (j1 >= 4) goto _L2; else goto _L1
_L1:
        j1;
        JVM INSTR tableswitch 1 3: default 32
    //                   1 61
    //                   2 74
    //                   3 90;
           goto _L2 _L3 _L4 _L5
_L2:
        int ai1[];
        ai1 = new int[j1];
        for (int k1 = 0; k1 < j1; k1++)
        {
            ai1[k1] = ai[k1];
        }

        break; /* Loop/switch isn't completed */
_L3:
        return new g(s, i1, ai[0]);
_L4:
        return new h(s, i1, ai[0], ai[1]);
_L5:
        return new i(s, i1, ai[0], ai[1], ai[2]);
        return new j(s, i1, ai1, j1);
    }

    private void a(int i1, f f1)
    {
        int j1;
        if (n)
        {
            h();
        }
        if (m)
        {
            e();
        }
        d = 1 + d;
        j1 = i1 & f;
        if (h[j1] != null) goto _L2; else goto _L1
_L1:
        g[j1] = i1 << 8;
        if (o)
        {
            j();
        }
        h[j1] = f1;
_L9:
        int j2 = g.length;
        if (d <= j2 >> 1) goto _L4; else goto _L3
_L3:
        int k2 = j2 >> 2;
        if (d <= j2 - k2) goto _L6; else goto _L5
_L5:
        m = true;
_L4:
        return;
_L2:
        if (p)
        {
            i();
        }
        j = 1 + j;
        int k1 = g[j1];
        int l1 = k1 & 0xff;
        int i2;
        if (l1 == 0)
        {
            b b1;
            if (k <= 254)
            {
                i2 = k;
                k = 1 + k;
                if (i2 >= i.length)
                {
                    k();
                }
            } else
            {
                i2 = g();
            }
            g[j1] = k1 & 0xffffff00 | i2 + 1;
        } else
        {
            i2 = l1 - 1;
        }
        b1 = new b(f1, i[i2]);
        i[i2] = b1;
        e = Math.max(b1.a(), e);
        if (e > 255)
        {
            l();
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (j < k2) goto _L4; else goto _L7
_L7:
        m = true;
        return;
        if (true) goto _L9; else goto _L8
_L8:
    }

    private void a(c c1)
    {
        int i1 = c1.a;
        c c2 = (c)b.get();
        if (i1 <= c2.a)
        {
            return;
        }
        if (i1 > 6000 || c1.h > 63)
        {
            c1 = b(64);
        }
        b.compareAndSet(c2, c1);
    }

    private int b(int i1, int j1)
    {
        int k1 = (i1 ^ i1 >>> 15) + j1 * 33 ^ l;
        return k1 + (k1 >>> 7);
    }

    private int b(int ai[], int i1)
    {
        int j1 = 3;
        if (i1 < j1)
        {
            throw new IllegalArgumentException();
        }
        int k1 = ai[0] ^ l;
        int l1 = 0x1003f * (33 * (k1 + (k1 >>> 9)) + ai[1]);
        int i2 = l1 + (l1 >>> 15) ^ ai[2];
        int j2 = i2 + (i2 >>> 17);
        for (; j1 < i1; j1++)
        {
            int l2 = j2 * 31 ^ ai[j1];
            int i3 = l2 + (l2 >>> 3);
            j2 = i3 ^ i3 << 7;
        }

        int k2 = j2 + (j2 >>> 15);
        return k2 ^ k2 << 9;
    }

    private static c b(int i1)
    {
        return new c(63, new int[64], new f[64]);
    }

    private static a c(int i1)
    {
        return new a(i1);
    }

    public static f c()
    {
        return com.fasterxml.jackson.a.e.g.b();
    }

    private int d(int i1)
    {
        int j1 = i1 ^ l;
        int k1 = j1 + (j1 >>> 15);
        return k1 ^ k1 >>> 9;
    }

    private boolean d()
    {
        return !n;
    }

    private void e()
    {
        int i1 = 0;
        m = false;
        o = false;
        int j1 = g.length;
        int k1 = j1 + j1;
        if (k1 > 0x10000)
        {
            f();
        } else
        {
            g = new int[k1];
            f = k1 - 1;
            f af[] = h;
            h = new f[k1];
            int l1 = 0;
            int i2 = 0;
            for (; l1 < j1; l1++)
            {
                f f2 = af[l1];
                if (f2 != null)
                {
                    i2++;
                    int k4 = f2.hashCode();
                    int l4 = k4 & f;
                    h[l4] = f2;
                    g[l4] = k4 << 8;
                }
            }

            int j2 = k;
            if (j2 == 0)
            {
                e = 0;
                return;
            }
            j = 0;
            k = 0;
            p = false;
            b ab[] = i;
            i = new b[ab.length];
            for (int k2 = 0; k2 < j2;)
            {
                b b1 = ab[k2];
                int l2 = i2;
                while (b1 != null) 
                {
                    l2++;
                    f f1 = b1.a;
                    int i3 = f1.hashCode();
                    int j3 = i3 & f;
                    int k3 = g[j3];
                    int j4;
                    if (h[j3] == null)
                    {
                        g[j3] = i3 << 8;
                        h[j3] = f1;
                        j4 = i1;
                    } else
                    {
                        j = 1 + j;
                        int l3 = k3 & 0xff;
                        int i4;
                        if (l3 == 0)
                        {
                            b b2;
                            if (k <= 254)
                            {
                                i4 = k;
                                k = 1 + k;
                                if (i4 >= i.length)
                                {
                                    k();
                                }
                            } else
                            {
                                i4 = g();
                            }
                            g[j3] = k3 & 0xffffff00 | i4 + 1;
                        } else
                        {
                            i4 = l3 - 1;
                        }
                        b2 = new b(f1, i[i4]);
                        i[i4] = b2;
                        j4 = Math.max(i1, b2.a());
                    }
                    b1 = b1.b;
                    i1 = j4;
                }
                k2++;
                i2 = l2;
            }

            e = i1;
            if (i2 != d)
            {
                throw new RuntimeException((new StringBuilder("Internal error: count after rehash ")).append(i2).append("; should be ").append(d).toString());
            }
        }
    }

    private void f()
    {
        d = 0;
        e = 0;
        Arrays.fill(g, 0);
        Arrays.fill(h, null);
        Arrays.fill(i, null);
        j = 0;
        k = 0;
    }

    private int g()
    {
        b ab[] = i;
        int i1 = 0x7fffffff;
        int j1 = -1;
        int k1 = 0;
        int l1 = k;
        while (k1 < l1) 
        {
            int i2 = ab[k1].a();
            if (i2 < i1)
            {
                if (i2 == 1)
                {
                    return k1;
                }
                j1 = k1;
            } else
            {
                i2 = i1;
            }
            k1++;
            i1 = i2;
        }
        return j1;
    }

    private void h()
    {
        int ai[] = g;
        int i1 = g.length;
        g = new int[i1];
        System.arraycopy(ai, 0, g, 0, i1);
        n = false;
    }

    private void i()
    {
        b ab[] = i;
        if (ab == null)
        {
            i = new b[32];
        } else
        {
            int i1 = ab.length;
            i = new b[i1];
            System.arraycopy(ab, 0, i, 0, i1);
        }
        p = false;
    }

    private void j()
    {
        f af[] = h;
        int i1 = af.length;
        h = new f[i1];
        System.arraycopy(af, 0, h, 0, i1);
        o = false;
    }

    private void k()
    {
        b ab[] = i;
        int i1 = ab.length;
        i = new b[i1 + i1];
        System.arraycopy(ab, 0, i, 0, i1);
    }

    private void l()
    {
        throw new IllegalStateException((new StringBuilder("Longest collision chain in symbol table (of size ")).append(d).append(") now exceeds maximum, 255 -- suspect a DoS attack based on hash collisions").toString());
    }

    public final a a(boolean flag)
    {
        return new a(this, flag, l, (c)b.get());
    }

    public final f a(int i1)
    {
        int j1;
        int k1;
        int l1;
        j1 = d(i1);
        k1 = j1 & f;
        l1 = g[k1];
        if ((j1 ^ l1 >> 8) << 8 != 0) goto _L2; else goto _L1
_L1:
        f f1 = h[k1];
        if (f1 != null) goto _L4; else goto _L3
_L3:
        return null;
_L4:
        if (f1.a(i1))
        {
            return f1;
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (l1 == 0) goto _L3; else goto _L5
_L5:
        int i2 = l1 & 0xff;
        if (i2 > 0)
        {
            int j2 = i2 - 1;
            b b1 = i[j2];
            if (b1 != null)
            {
                return b1.a(j1, i1, 0);
            }
        }
        if (true) goto _L3; else goto _L6
_L6:
    }

    public final f a(int i1, int j1)
    {
        int k1;
        int l1;
        int i2;
        if (j1 == 0)
        {
            k1 = d(i1);
        } else
        {
            k1 = b(i1, j1);
        }
        l1 = k1 & f;
        i2 = g[l1];
        if ((k1 ^ i2 >> 8) << 8 == 0)
        {
            f f1 = h[l1];
            if (f1 == null)
            {
                return null;
            }
            if (f1.a(i1, j1))
            {
                return f1;
            }
        } else
        if (i2 == 0)
        {
            return null;
        }
        int j2 = i2 & 0xff;
        if (j2 > 0)
        {
            int k2 = j2 - 1;
            b b1 = i[k2];
            if (b1 != null)
            {
                return b1.a(k1, i1, j1);
            }
        }
        return null;
    }

    public final f a(String s, int ai[], int i1)
    {
        if (c)
        {
            s = k.a.a(s);
        }
        int j1;
        f f1;
        if (i1 < 3)
        {
            if (i1 == 1)
            {
                j1 = d(ai[0]);
            } else
            {
                j1 = b(ai[0], ai[1]);
            }
        } else
        {
            j1 = b(ai, i1);
        }
        f1 = a(j1, s, ai, i1);
        a(j1, f1);
        return f1;
    }

    public final f a(int ai[], int i1)
    {
        if (i1 >= 3) goto _L2; else goto _L1
_L1:
        f f1;
        int k2 = ai[0];
        int l2 = 0;
        if (i1 >= 2)
        {
            l2 = ai[1];
        }
        f1 = a(k2, l2);
_L6:
        return f1;
_L2:
        int j1;
        int k1;
        int l1;
        j1 = b(ai, i1);
        k1 = j1 & f;
        l1 = g[k1];
        if ((j1 ^ l1 >> 8) << 8 != 0) goto _L4; else goto _L3
_L3:
        f1 = h[k1];
        if (f1 == null || f1.a(ai, i1)) goto _L6; else goto _L5
_L5:
        int i2 = l1 & 0xff;
        if (i2 > 0)
        {
            int j2 = i2 - 1;
            b b1 = i[j2];
            if (b1 != null)
            {
                return b1.a(j1, ai, i1);
            }
        }
        break; /* Loop/switch isn't completed */
_L4:
        if (l1 == 0)
        {
            return null;
        }
        if (true) goto _L5; else goto _L7
_L7:
        return null;
    }

    public final void b()
    {
        if (a != null && d())
        {
            a.a(new c(this));
            n = true;
            o = true;
            p = true;
        }
    }
}
