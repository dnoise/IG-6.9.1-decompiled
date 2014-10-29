// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.d;

import com.fasterxml.jackson.a.b.b;
import com.fasterxml.jackson.a.c.d;
import com.fasterxml.jackson.a.c.g;
import com.fasterxml.jackson.a.c.m;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.s;
import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

// Referenced classes of package com.fasterxml.jackson.a.d:
//            b, j, g

public final class a
{

    protected final d a;
    protected final InputStream b;
    protected final byte c[];
    protected int d;
    protected boolean e;
    protected int f;
    private int g;
    private int h;
    private final boolean i;

    public a(d d1, InputStream inputstream)
    {
        e = true;
        f = 0;
        a = d1;
        b = inputstream;
        c = d1.e();
        g = 0;
        h = 0;
        d = 0;
        i = true;
    }

    public a(d d1, byte abyte0[], int k, int l)
    {
        e = true;
        f = 0;
        a = d1;
        b = null;
        c = abyte0;
        g = k;
        h = k + l;
        d = -k;
        i = false;
    }

    public static int a(b b1)
    {
        int l;
        if (!b1.hasMoreBytes())
        {
            l = com.fasterxml.jackson.a.b.d.b;
        } else
        {
            byte byte0 = b1.nextByte();
            if (byte0 == -17)
            {
                if (!b1.hasMoreBytes())
                {
                    return com.fasterxml.jackson.a.b.d.b;
                }
                if (b1.nextByte() != -69)
                {
                    return com.fasterxml.jackson.a.b.d.a;
                }
                if (!b1.hasMoreBytes())
                {
                    return com.fasterxml.jackson.a.b.d.b;
                }
                if (b1.nextByte() != -65)
                {
                    return com.fasterxml.jackson.a.b.d.a;
                }
                if (!b1.hasMoreBytes())
                {
                    return com.fasterxml.jackson.a.b.d.b;
                }
                byte0 = b1.nextByte();
            }
            int k = a(b1, byte0);
            if (k < 0)
            {
                return com.fasterxml.jackson.a.b.d.b;
            }
            if (k == 123)
            {
                int k1 = b(b1);
                if (k1 < 0)
                {
                    return com.fasterxml.jackson.a.b.d.b;
                }
                if (k1 == 34 || k1 == 125)
                {
                    return com.fasterxml.jackson.a.b.d.d;
                } else
                {
                    return com.fasterxml.jackson.a.b.d.a;
                }
            }
            if (k == 91)
            {
                int j1 = b(b1);
                if (j1 < 0)
                {
                    return com.fasterxml.jackson.a.b.d.b;
                }
                if (j1 == 93 || j1 == 91)
                {
                    return com.fasterxml.jackson.a.b.d.d;
                } else
                {
                    return com.fasterxml.jackson.a.b.d.d;
                }
            }
            l = com.fasterxml.jackson.a.b.d.c;
            if (k != 34 && (k > 57 || k < 48))
            {
                if (k == 45)
                {
                    int i1 = b(b1);
                    if (i1 < 0)
                    {
                        return com.fasterxml.jackson.a.b.d.b;
                    }
                    if (i1 > 57 || i1 < 48)
                    {
                        return com.fasterxml.jackson.a.b.d.a;
                    }
                } else
                {
                    if (k == 110)
                    {
                        return a(b1, "ull", l);
                    }
                    if (k == 116)
                    {
                        return a(b1, "rue", l);
                    }
                    if (k == 102)
                    {
                        return a(b1, "alse", l);
                    } else
                    {
                        return com.fasterxml.jackson.a.b.d.a;
                    }
                }
            }
        }
        return l;
    }

    private static int a(b b1, byte byte0)
    {
        do
        {
            int k = byte0 & 0xff;
            if (k != 32 && k != 13 && k != 10 && k != 9)
            {
                return k;
            }
            if (!b1.hasMoreBytes())
            {
                return -1;
            }
            byte0 = b1.nextByte();
        } while (true);
    }

    private static int a(b b1, String s, int k)
    {
        int l = 0;
        int i1 = s.length();
        do
        {
label0:
            {
                if (l < i1)
                {
                    if (b1.hasMoreBytes())
                    {
                        break label0;
                    }
                    k = com.fasterxml.jackson.a.b.d.b;
                }
                return k;
            }
            if (b1.nextByte() != s.charAt(l))
            {
                return com.fasterxml.jackson.a.b.d.a;
            }
            l++;
        } while (true);
    }

    private com.fasterxml.jackson.a.d a()
    {
        boolean flag = true;
        if (!d(4)) goto _L2; else goto _L1
_L1:
        int k = c[g] << 24 | (0xff & c[1 + g]) << 16 | (0xff & c[2 + g]) << 8 | 0xff & c[3 + g];
          goto _L3
_L7:
        if (flag) goto _L5; else goto _L4
_L4:
        com.fasterxml.jackson.a.d d1 = com.fasterxml.jackson.a.d.a;
_L9:
        a.a(d1);
        return d1;
_L3:
        if (a(k) || b(k) || c(k >>> 16)) goto _L7; else goto _L6
_L6:
        flag = false;
        break; /* Loop/switch isn't completed */
_L2:
        if (!d(2) || !c((0xff & c[g]) << 8 | 0xff & c[1 + g])) goto _L6; else goto _L7
_L5:
        switch (f)
        {
        case 3: // '\003'
        default:
            throw new RuntimeException("Internal error");

        case 1: // '\001'
            d1 = com.fasterxml.jackson.a.d.a;
            break;

        case 2: // '\002'
            if (e)
            {
                d1 = com.fasterxml.jackson.a.d.b;
            } else
            {
                d1 = com.fasterxml.jackson.a.d.c;
            }
            break;

        case 4: // '\004'
            if (e)
            {
                d1 = com.fasterxml.jackson.a.d.d;
            } else
            {
                d1 = com.fasterxml.jackson.a.d.e;
            }
            break;
        }
        if (true) goto _L9; else goto _L8
_L8:
    }

    private static void a(String s)
    {
        throw new CharConversionException((new StringBuilder("Unsupported UCS-4 endianness (")).append(s).append(") detected").toString());
    }

    private boolean a(int k)
    {
        k;
        JVM INSTR lookupswitch 4: default 44
    //                   -16842752: 126
    //                   -131072: 99
    //                   65279: 77
    //                   65534: 121;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        int l;
        l = k >>> 16;
        if (l == 65279)
        {
            g = 2 + g;
            f = 2;
            e = true;
            return true;
        }
        break; /* Loop/switch isn't completed */
_L4:
        e = true;
        g = 4 + g;
        f = 4;
        return true;
_L3:
        g = 4 + g;
        f = 4;
        e = false;
        return true;
_L5:
        a("2143");
_L2:
        a("3412");
        if (true) goto _L1; else goto _L6
_L6:
        if (l == 65534)
        {
            g = 2 + g;
            f = 2;
            e = false;
            return true;
        }
        if (k >>> 8 == 0xefbbbf)
        {
            g = 3 + g;
            f = 1;
            e = true;
            return true;
        } else
        {
            return false;
        }
    }

    private static int b(b b1)
    {
        if (!b1.hasMoreBytes())
        {
            return -1;
        } else
        {
            return a(b1, b1.nextByte());
        }
    }

    private Reader b()
    {
        com.fasterxml.jackson.a.d d1 = a.b();
        InputStream inputstream;
        switch (b.a[d1.ordinal()])
        {
        default:
            throw new RuntimeException("Internal error");

        case 1: // '\001'
        case 2: // '\002'
            return new m(a, b, c, g, h, a.b().b());

        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
            inputstream = b;
            break;
        }
        Object obj;
        if (inputstream == null)
        {
            obj = new ByteArrayInputStream(c, g, h);
        } else
        if (g < h)
        {
            obj = new g(a, inputstream, c, g, h);
        } else
        {
            obj = inputstream;
        }
        return new InputStreamReader(((InputStream) (obj)), d1.a());
    }

    private boolean b(int k)
    {
        if (k >> 8 != 0) goto _L2; else goto _L1
_L1:
        e = true;
_L6:
        boolean flag;
        f = 4;
        flag = true;
_L4:
        return flag;
_L2:
        int l;
        if ((0xffffff & k) == 0)
        {
            e = false;
            continue; /* Loop/switch isn't completed */
        }
        if ((0xff00ffff & k) == 0)
        {
            a("3412");
            continue; /* Loop/switch isn't completed */
        }
        l = 0xffff00ff & k;
        flag = false;
        if (l != 0) goto _L4; else goto _L3
_L3:
        a("2143");
        if (true) goto _L6; else goto _L5
_L5:
    }

    private boolean c(int k)
    {
        if ((0xff00 & k) != 0) goto _L2; else goto _L1
_L1:
        e = true;
_L6:
        boolean flag;
        f = 2;
        flag = true;
_L4:
        return flag;
_L2:
        int l;
        l = k & 0xff;
        flag = false;
        if (l != 0) goto _L4; else goto _L3
_L3:
        e = false;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private boolean d(int k)
    {
        int i1;
        for (int l = h - g; l < k; l = i1 + l)
        {
            if (b == null)
            {
                i1 = -1;
            } else
            {
                i1 = b.read(c, h, c.length - h);
            }
            if (i1 <= 0)
            {
                return false;
            }
            h = i1 + h;
        }

        return true;
    }

    public final l a(int k, s s, com.fasterxml.jackson.a.e.a a1, com.fasterxml.jackson.a.e.d d1, boolean flag, boolean flag1)
    {
        if (a() == com.fasterxml.jackson.a.d.a && flag)
        {
            com.fasterxml.jackson.a.e.a a2 = a1.a(flag1);
            return new j(a, k, b, s, a2, c, g, h, i);
        } else
        {
            return new com.fasterxml.jackson.a.d.g(a, k, b(), s, d1.a(flag, flag1));
        }
    }
}
