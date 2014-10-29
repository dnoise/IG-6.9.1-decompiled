// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c;


public final class d
{

    private static final Object a = new Object();
    private boolean b;
    private int c[];
    private Object d[];
    private int e;

    public d()
    {
        this((byte)0);
    }

    private d(byte byte0)
    {
        b = false;
        int k = j(10);
        c = new int[k];
        d = new Object[k];
        e = 0;
    }

    private static int a(int ai[], int k, int l)
    {
        int i1 = k + 0;
        int j1 = -1;
        int k1;
        for (k1 = i1; k1 - j1 > 1;)
        {
            int l1 = (k1 + j1) / 2;
            if (ai[l1] < l)
            {
                j1 = l1;
            } else
            {
                k1 = l1;
            }
        }

        if (k1 == k + 0)
        {
            k1 = -1 ^ k + 0;
        } else
        if (ai[k1] != l)
        {
            return ~k1;
        }
        return k1;
    }

    private d c()
    {
        d d1;
        try
        {
            d1 = (d)super.clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            throw new RuntimeException(clonenotsupportedexception);
        }
        return d1;
    }

    private void d()
    {
        int k = e;
        int ai[] = c;
        Object aobj[] = d;
        int l = 0;
        int i1 = 0;
        for (; l < k; l++)
        {
            Object obj = aobj[l];
            if (obj == a)
            {
                continue;
            }
            if (l != i1)
            {
                ai[i1] = ai[l];
                aobj[i1] = obj;
            }
            i1++;
        }

        b = false;
        e = i1;
    }

    private Object g(int k)
    {
        int l = a(c, e, k);
        if (l < 0 || d[l] == a)
        {
            return null;
        } else
        {
            return d[l];
        }
    }

    private void h(int k)
    {
        int l = a(c, e, k);
        if (l >= 0 && d[l] != a)
        {
            d[l] = a;
            b = true;
        }
    }

    private static int i(int k)
    {
        int l = 4;
        do
        {
label0:
            {
                if (l < 32)
                {
                    if (k > -12 + (1 << l))
                    {
                        break label0;
                    }
                    k = -12 + (1 << l);
                }
                return k;
            }
            l++;
        } while (true);
    }

    private static int j(int k)
    {
        return i(k * 4) / 4;
    }

    public final int a()
    {
        if (b)
        {
            d();
        }
        return e;
    }

    public final Object a(int k)
    {
        return g(k);
    }

    public final void a(int k, Object obj)
    {
        int l = a(c, e, k);
        if (l >= 0)
        {
            d[l] = obj;
            return;
        }
        int i1 = ~l;
        if (i1 < e && d[i1] == a)
        {
            c[i1] = k;
            d[i1] = obj;
            return;
        }
        if (b && e >= c.length)
        {
            d();
            i1 = -1 ^ a(c, e, k);
        }
        if (e >= c.length)
        {
            int j1 = j(1 + e);
            int ai[] = new int[j1];
            Object aobj[] = new Object[j1];
            System.arraycopy(c, 0, ai, 0, c.length);
            System.arraycopy(((Object) (d)), 0, ((Object) (aobj)), 0, d.length);
            c = ai;
            d = aobj;
        }
        if (e - i1 != 0)
        {
            System.arraycopy(c, i1, c, i1 + 1, e - i1);
            System.arraycopy(((Object) (d)), i1, ((Object) (d)), i1 + 1, e - i1);
        }
        c[i1] = k;
        d[i1] = obj;
        e = 1 + e;
    }

    public final void b()
    {
        int k = e;
        Object aobj[] = d;
        for (int l = 0; l < k; l++)
        {
            aobj[l] = null;
        }

        e = 0;
        b = false;
    }

    public final void b(int k)
    {
        h(k);
    }

    public final void b(int k, Object obj)
    {
        if (e != 0 && k <= c[-1 + e])
        {
            a(k, obj);
            return;
        }
        if (b && e >= c.length)
        {
            d();
        }
        int l = e;
        if (l >= c.length)
        {
            int i1 = j(l + 1);
            int ai[] = new int[i1];
            Object aobj[] = new Object[i1];
            System.arraycopy(c, 0, ai, 0, c.length);
            System.arraycopy(((Object) (d)), 0, ((Object) (aobj)), 0, d.length);
            c = ai;
            d = aobj;
        }
        c[l] = k;
        d[l] = obj;
        e = l + 1;
    }

    public final void c(int k)
    {
        if (d[k] != a)
        {
            d[k] = a;
            b = true;
        }
    }

    public final Object clone()
    {
        return c();
    }

    public final int d(int k)
    {
        if (b)
        {
            d();
        }
        return c[k];
    }

    public final Object e(int k)
    {
        if (b)
        {
            d();
        }
        return d[k];
    }

    public final int f(int k)
    {
        if (b)
        {
            d();
        }
        return a(c, e, k);
    }

}
