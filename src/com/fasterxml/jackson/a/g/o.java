// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.g;

import com.fasterxml.jackson.a.c.h;
import java.math.BigDecimal;
import java.util.ArrayList;

// Referenced classes of package com.fasterxml.jackson.a.g:
//            c, a

public final class o
{

    static final char a[] = new char[0];
    private final a b;
    private char c[];
    private int d;
    private int e;
    private ArrayList f;
    private boolean g;
    private int h;
    private char i[];
    private int j;
    private String k;
    private char l[];

    public o(a a1)
    {
        g = false;
        b = a1;
    }

    private char[] b(int i1)
    {
        if (b != null)
        {
            return b.a(c.c, i1);
        } else
        {
            return new char[Math.max(i1, 1000)];
        }
    }

    private void c(int i1)
    {
        int j1 = e;
        e = 0;
        char ac[] = c;
        c = null;
        int k1 = d;
        d = -1;
        int l1 = j1 + i1;
        if (i == null || l1 > i.length)
        {
            i = b(l1);
        }
        if (j1 > 0)
        {
            System.arraycopy(ac, k1, i, 0, j1);
        }
        h = 0;
        j = j1;
    }

    private void d(int i1)
    {
        if (f == null)
        {
            f = new ArrayList();
        }
        char ac[] = i;
        g = true;
        f.add(ac);
        h = h + ac.length;
        int j1 = ac.length;
        int k1 = j1 >> 1;
        char ac1[];
        if (k1 >= i1)
        {
            i1 = k1;
        }
        ac1 = e(Math.min(0x40000, j1 + i1));
        j = 0;
        i = ac1;
    }

    private static char[] e(int i1)
    {
        return new char[i1];
    }

    private void n()
    {
        d = -1;
        j = 0;
        e = 0;
        c = null;
        k = null;
        l = null;
        if (g)
        {
            o();
        }
    }

    private void o()
    {
        g = false;
        f.clear();
        h = 0;
        j = 0;
    }

    private char[] p()
    {
        if (k != null)
        {
            return k.toCharArray();
        }
        if (d >= 0)
        {
            if (e <= 0)
            {
                return a;
            } else
            {
                char ac2[] = e(e);
                System.arraycopy(c, d, ac2, 0, e);
                return ac2;
            }
        }
        int i1 = b();
        if (i1 <= 0)
        {
            return a;
        }
        char ac[] = e(i1);
        int j1;
        if (f != null)
        {
            int k1 = f.size();
            int l1 = 0;
            int i2 = 0;
            for (; l1 < k1; l1++)
            {
                char ac1[] = (char[])(char[])f.get(l1);
                int j2 = ac1.length;
                System.arraycopy(ac1, 0, ac, i2, j2);
                i2 += j2;
            }

            j1 = i2;
        } else
        {
            j1 = 0;
        }
        System.arraycopy(i, 0, ac, j1, j);
        return ac;
    }

    public final void a()
    {
        if (b == null)
        {
            n();
        } else
        if (i != null)
        {
            n();
            char ac[] = i;
            i = null;
            b.a(c.c, ac);
            return;
        }
    }

    public final void a(char c1)
    {
        if (d >= 0)
        {
            c(16);
        }
        k = null;
        l = null;
        char ac[] = i;
        if (j >= ac.length)
        {
            d(1);
            ac = i;
        }
        int i1 = j;
        j = i1 + 1;
        ac[i1] = c1;
    }

    public final void a(int i1)
    {
        j = i1;
    }

    public final void a(String s)
    {
        c = null;
        d = -1;
        e = 0;
        k = s;
        l = null;
        if (g)
        {
            o();
        }
        j = 0;
    }

    public final void a(String s, int i1, int j1)
    {
        if (d >= 0)
        {
            c(j1);
        }
        k = null;
        l = null;
        char ac[] = i;
        int k1 = ac.length - j;
        if (k1 >= j1)
        {
            s.getChars(i1, i1 + j1, ac, j);
            j = j1 + j;
            return;
        }
        if (k1 > 0)
        {
            s.getChars(i1, i1 + k1, ac, j);
            j1 -= k1;
            i1 += k1;
        }
        do
        {
            d(j1);
            int l1 = Math.min(i.length, j1);
            s.getChars(i1, i1 + l1, i, 0);
            j = l1 + j;
            i1 += l1;
            j1 -= l1;
        } while (j1 > 0);
    }

    public final void a(char ac[], int i1, int j1)
    {
        k = null;
        l = null;
        c = ac;
        d = i1;
        e = j1;
        if (g)
        {
            o();
        }
    }

    public final int b()
    {
        if (d >= 0)
        {
            return e;
        }
        if (l != null)
        {
            return l.length;
        }
        if (k != null)
        {
            return k.length();
        } else
        {
            return h + j;
        }
    }

    public final void b(char ac[], int i1, int j1)
    {
        c = null;
        d = -1;
        e = 0;
        k = null;
        l = null;
        if (!g) goto _L2; else goto _L1
_L1:
        o();
_L4:
        h = 0;
        j = 0;
        c(ac, i1, j1);
        return;
_L2:
        if (i == null)
        {
            i = b(j1);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final int c()
    {
        if (d >= 0)
        {
            return d;
        } else
        {
            return 0;
        }
    }

    public final void c(char ac[], int i1, int j1)
    {
        if (d >= 0)
        {
            c(j1);
        }
        k = null;
        l = null;
        char ac1[] = i;
        int k1 = ac1.length - j;
        if (k1 >= j1)
        {
            System.arraycopy(ac, i1, ac1, j, j1);
            j = j1 + j;
            return;
        }
        if (k1 > 0)
        {
            System.arraycopy(ac, i1, ac1, j, k1);
            i1 += k1;
            j1 -= k1;
        }
        do
        {
            d(j1);
            int l1 = Math.min(i.length, j1);
            System.arraycopy(ac, i1, i, 0, l1);
            j = l1 + j;
            i1 += l1;
            j1 -= l1;
        } while (j1 > 0);
    }

    public final char[] d()
    {
        if (d >= 0)
        {
            return c;
        }
        if (l != null)
        {
            return l;
        }
        if (k != null)
        {
            char ac[] = k.toCharArray();
            l = ac;
            return ac;
        }
        if (!g)
        {
            return i;
        } else
        {
            return f();
        }
    }

    public final String e()
    {
        if (k == null)
        {
            if (l != null)
            {
                k = new String(l);
            } else
            if (d >= 0)
            {
                if (e <= 0)
                {
                    k = "";
                    return "";
                }
                k = new String(c, d, e);
            } else
            {
                int i1 = h;
                int j1 = j;
                if (i1 == 0)
                {
                    String s;
                    if (j1 == 0)
                    {
                        s = "";
                    } else
                    {
                        s = new String(i, 0, j1);
                    }
                    k = s;
                } else
                {
                    StringBuilder stringbuilder = new StringBuilder(i1 + j1);
                    if (f != null)
                    {
                        int k1 = f.size();
                        for (int l1 = 0; l1 < k1; l1++)
                        {
                            char ac[] = (char[])f.get(l1);
                            stringbuilder.append(ac, 0, ac.length);
                        }

                    }
                    stringbuilder.append(i, 0, j);
                    k = stringbuilder.toString();
                }
            }
        }
        return k;
    }

    public final char[] f()
    {
        char ac[] = l;
        if (ac == null)
        {
            ac = p();
            l = ac;
        }
        return ac;
    }

    public final BigDecimal g()
    {
        if (l != null)
        {
            return new BigDecimal(l);
        }
        if (d >= 0)
        {
            return new BigDecimal(c, d, e);
        }
        if (h == 0)
        {
            return new BigDecimal(i, 0, j);
        } else
        {
            return new BigDecimal(f());
        }
    }

    public final double h()
    {
        return com.fasterxml.jackson.a.c.h.d(e());
    }

    public final char[] i()
    {
        if (d < 0) goto _L2; else goto _L1
_L1:
        c(1);
_L4:
        return i;
_L2:
        char ac[] = i;
        if (ac == null)
        {
            i = b(0);
        } else
        if (j >= ac.length)
        {
            d(1);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final char[] j()
    {
        d = -1;
        j = 0;
        e = 0;
        c = null;
        k = null;
        l = null;
        if (g)
        {
            o();
        }
        char ac[] = i;
        if (ac == null)
        {
            ac = b(0);
            i = ac;
        }
        return ac;
    }

    public final int k()
    {
        return j;
    }

    public final char[] l()
    {
        if (f == null)
        {
            f = new ArrayList();
        }
        g = true;
        f.add(i);
        int i1 = i.length;
        h = i1 + h;
        char ac[] = e(Math.min(i1 + (i1 >> 1), 0x40000));
        j = 0;
        i = ac;
        return ac;
    }

    public final char[] m()
    {
        char ac[] = i;
        int i1 = ac.length;
        int j1;
        if (i1 == 0x40000)
        {
            j1 = 0x40001;
        } else
        {
            j1 = Math.min(0x40000, i1 + (i1 >> 1));
        }
        i = e(j1);
        System.arraycopy(ac, 0, i, 0, i1);
        return i;
    }

    public final String toString()
    {
        return e();
    }

}
