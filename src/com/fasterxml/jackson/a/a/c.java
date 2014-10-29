// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.a;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.a.c.d;
import com.fasterxml.jackson.a.c.h;
import com.fasterxml.jackson.a.d.f;
import com.fasterxml.jackson.a.g.o;
import com.fasterxml.jackson.a.j;
import com.fasterxml.jackson.a.q;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.a.w;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.fasterxml.jackson.a.a:
//            d

public abstract class c extends com.fasterxml.jackson.a.a.d
{

    static final BigInteger r;
    static final BigInteger s;
    static final BigInteger t;
    static final BigInteger u;
    static final BigDecimal v;
    static final BigDecimal w;
    static final BigDecimal x;
    static final BigDecimal y;
    protected int A;
    protected long B;
    protected double C;
    protected BigInteger D;
    protected BigDecimal E;
    protected boolean F;
    protected int G;
    protected int H;
    protected int I;
    protected final d a;
    protected boolean b;
    protected int c;
    protected int d;
    protected long e;
    protected int f;
    protected int g;
    protected long h;
    protected int i;
    protected int j;
    protected com.fasterxml.jackson.a.d.d k;
    protected r l;
    protected final o m;
    protected char n[];
    protected boolean o;
    protected com.fasterxml.jackson.a.g.d p;
    protected byte q[];
    protected int z;

    protected c(d d1, int i1)
    {
        c = 0;
        d = 0;
        e = 0L;
        f = 1;
        g = 0;
        h = 0L;
        i = 1;
        j = 0;
        n = null;
        o = false;
        p = null;
        z = 0;
        _features = i1;
        a = d1;
        m = d1.d();
        k = com.fasterxml.jackson.a.d.d.b();
    }

    protected static IllegalArgumentException a(a a1, int i1, int j1, String s1)
    {
        String s2;
        if (i1 <= 32)
        {
            s2 = (new StringBuilder("Illegal white space character (code 0x")).append(Integer.toHexString(i1)).append(") as character #").append(j1 + 1).append(" of 4-char base64 unit: can only used between units").toString();
        } else
        if (a1.a(i1))
        {
            s2 = (new StringBuilder("Unexpected padding character ('")).append(a1.b()).append("') as character #").append(j1 + 1).append(" of 4-char base64 unit: padding only legal as 3rd or 4th character").toString();
        } else
        if (!Character.isDefined(i1) || Character.isISOControl(i1))
        {
            s2 = (new StringBuilder("Illegal character (code 0x")).append(Integer.toHexString(i1)).append(") in base64 content").toString();
        } else
        {
            s2 = (new StringBuilder("Illegal character '")).append((char)i1).append("' (code 0x").append(Integer.toHexString(i1)).append(") in base64 content").toString();
        }
        if (s1 != null)
        {
            s2 = (new StringBuilder()).append(s2).append(": ").append(s1).toString();
        }
        return new IllegalArgumentException(s2);
    }

    private void a(int i1)
    {
        if (_currToken == r.i)
        {
            char ac[] = m.d();
            int j1 = m.c();
            int k1 = G;
            if (F)
            {
                j1++;
            }
            if (k1 <= 9)
            {
                int i2 = com.fasterxml.jackson.a.c.h.a(ac, j1, k1);
                if (F)
                {
                    i2 = -i2;
                }
                A = i2;
                z = 1;
                return;
            }
            if (k1 <= 18)
            {
                long l1 = com.fasterxml.jackson.a.c.h.b(ac, j1, k1);
                if (F)
                {
                    l1 = -l1;
                }
                if (k1 == 10)
                {
                    if (F)
                    {
                        if (l1 >= 0xffffffff80000000L)
                        {
                            A = (int)l1;
                            z = 1;
                            return;
                        }
                    } else
                    if (l1 <= 0x7fffffffL)
                    {
                        A = (int)l1;
                        z = 1;
                        return;
                    }
                }
                B = l1;
                z = 2;
                return;
            } else
            {
                a(ac, j1, k1);
                return;
            }
        }
        if (_currToken == r.j)
        {
            b(i1);
            return;
        } else
        {
            _reportError((new StringBuilder("Current token (")).append(_currToken).append(") not numeric, can not use numeric value accessors").toString());
            return;
        }
    }

    private void a(char ac[], int i1, int j1)
    {
        String s1 = m.e();
        if (com.fasterxml.jackson.a.c.h.a(ac, i1, j1, F))
        {
            B = Long.parseLong(s1);
            z = 2;
            return;
        }
        try
        {
            D = new BigInteger(s1);
            z = 4;
            return;
        }
        catch (NumberFormatException numberformatexception)
        {
            _wrapError((new StringBuilder("Malformed numeric value '")).append(s1).append("'").toString(), numberformatexception);
        }
        return;
    }

    private static IllegalArgumentException b(a a1, int i1, int j1)
    {
        return a(a1, i1, j1, ((String) (null)));
    }

    private void b(int i1)
    {
        if (i1 == 16)
        {
            try
            {
                E = m.g();
                z = 16;
                return;
            }
            catch (NumberFormatException numberformatexception)
            {
                _wrapError((new StringBuilder("Malformed numeric value '")).append(m.e()).append("'").toString(), numberformatexception);
            }
            break MISSING_BLOCK_LABEL_77;
        }
        C = m.h();
        z = 8;
        return;
    }

    private com.fasterxml.jackson.a.d.d h()
    {
        return k;
    }

    private long i()
    {
        return h;
    }

    private int j()
    {
        return i;
    }

    private int k()
    {
        int i1 = j;
        if (i1 < 0)
        {
            return i1;
        } else
        {
            return i1 + 1;
        }
    }

    private void l()
    {
        if ((2 & z) != 0)
        {
            int i1 = (int)B;
            if ((long)i1 != B)
            {
                _reportError((new StringBuilder("Numeric value (")).append(getText()).append(") out of range of int").toString());
            }
            A = i1;
        } else
        if ((4 & z) != 0)
        {
            if (r.compareTo(D) > 0 || s.compareTo(D) < 0)
            {
                q();
            }
            A = D.intValue();
        } else
        if ((8 & z) != 0)
        {
            if (C < -2147483648D || C > 2147483647D)
            {
                q();
            }
            A = (int)C;
        } else
        if ((0x10 & z) != 0)
        {
            if (x.compareTo(E) > 0 || y.compareTo(E) < 0)
            {
                q();
            }
            A = E.intValue();
        } else
        {
            _throwInternal();
        }
        z = 1 | z;
    }

    private void m()
    {
        if ((1 & z) != 0)
        {
            B = A;
        } else
        if ((4 & z) != 0)
        {
            if (t.compareTo(D) > 0 || u.compareTo(D) < 0)
            {
                r();
            }
            B = D.longValue();
        } else
        if ((8 & z) != 0)
        {
            if (C < -9.2233720368547758E+18D || C > 9.2233720368547758E+18D)
            {
                r();
            }
            B = (long)C;
        } else
        if ((0x10 & z) != 0)
        {
            if (v.compareTo(E) > 0 || w.compareTo(E) < 0)
            {
                r();
            }
            B = E.longValue();
        } else
        {
            _throwInternal();
        }
        z = 2 | z;
    }

    private void n()
    {
        if ((0x10 & z) != 0)
        {
            D = E.toBigInteger();
        } else
        if ((2 & z) != 0)
        {
            D = BigInteger.valueOf(B);
        } else
        if ((1 & z) != 0)
        {
            D = BigInteger.valueOf(A);
        } else
        if ((8 & z) != 0)
        {
            D = BigDecimal.valueOf(C).toBigInteger();
        } else
        {
            _throwInternal();
        }
        z = 4 | z;
    }

    private void o()
    {
        if ((0x10 & z) != 0)
        {
            C = E.doubleValue();
        } else
        if ((4 & z) != 0)
        {
            C = D.doubleValue();
        } else
        if ((2 & z) != 0)
        {
            C = B;
        } else
        if ((1 & z) != 0)
        {
            C = A;
        } else
        {
            _throwInternal();
        }
        z = 8 | z;
    }

    private void p()
    {
        if ((8 & z) != 0)
        {
            E = new BigDecimal(getText());
        } else
        if ((4 & z) != 0)
        {
            E = new BigDecimal(D);
        } else
        if ((2 & z) != 0)
        {
            E = BigDecimal.valueOf(B);
        } else
        if ((1 & z) != 0)
        {
            E = BigDecimal.valueOf(A);
        } else
        {
            _throwInternal();
        }
        z = 0x10 | z;
    }

    private void q()
    {
        _reportError((new StringBuilder("Numeric value (")).append(getText()).append(") out of range of int (-2147483648 - 2147483647").append(")").toString());
    }

    private void r()
    {
        _reportError((new StringBuilder("Numeric value (")).append(getText()).append(") out of range of long (-9223372036854775808 - 9223372036854775807").append(")").toString());
    }

    protected void _handleEOF()
    {
        if (!k.inRoot())
        {
            _reportInvalidEOF((new StringBuilder(": expected close marker for ")).append(k.getTypeDesc()).append(" (from ").append(k.a(a.a())).append(")").toString());
        }
    }

    protected final int a(a a1, char c1, int i1)
    {
        if (c1 != '\\')
        {
            throw b(a1, c1, i1);
        }
        char c2 = g();
        int j1;
        if (c2 <= ' ' && i1 == 0)
        {
            j1 = -1;
        } else
        {
            j1 = a1.b(c2);
            if (j1 < 0)
            {
                throw b(a1, c2, i1);
            }
        }
        return j1;
    }

    protected final int a(a a1, int i1, int j1)
    {
        if (i1 != 92)
        {
            throw b(a1, i1, j1);
        }
        char c1 = g();
        int k1;
        if (c1 <= ' ' && j1 == 0)
        {
            k1 = -1;
        } else
        {
            k1 = a1.b(c1);
            if (k1 < 0)
            {
                throw b(a1, c1, j1);
            }
        }
        return k1;
    }

    protected final r a(String s1, double d1)
    {
        m.a(s1);
        C = d1;
        z = 8;
        return r.j;
    }

    protected final r a(boolean flag, int i1)
    {
        F = flag;
        G = i1;
        H = 0;
        I = 0;
        z = 0;
        return r.i;
    }

    protected final r a(boolean flag, int i1, int j1, int k1)
    {
        if (j1 <= 0 && k1 <= 0)
        {
            return a(flag, i1);
        } else
        {
            return b(flag, i1, j1, k1);
        }
    }

    protected final void a()
    {
        if (!b())
        {
            _reportInvalidEOF();
        }
    }

    protected final void a(int i1, char c1)
    {
        String s1 = (new StringBuilder()).append(k.a(a.a())).toString();
        _reportError((new StringBuilder("Unexpected close marker '")).append((char)i1).append("': expected '").append(c1).append("' (for ").append(k.getTypeDesc()).append(" starting at ").append(s1).append(")").toString());
    }

    protected final void a(int i1, String s1)
    {
        String s2 = (new StringBuilder("Unexpected character (")).append(_getCharDesc(i1)).append(") in numeric value").toString();
        _reportError((new StringBuilder()).append(s2).append(": ").append(s1).toString());
    }

    protected final void a(String s1)
    {
        _reportError((new StringBuilder("Invalid numeric value: ")).append(s1).toString());
    }

    protected final r b(boolean flag, int i1, int j1, int k1)
    {
        F = flag;
        G = i1;
        H = j1;
        I = k1;
        z = 0;
        return r.j;
    }

    protected abstract boolean b();

    protected abstract void c();

    public void close()
    {
        if (b)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        b = true;
        d();
        e();
        return;
        Exception exception;
        exception;
        e();
        throw exception;
    }

    protected abstract void d();

    protected void e()
    {
        m.a();
        char ac[] = n;
        if (ac != null)
        {
            n = null;
            a.c(ac);
        }
    }

    public final com.fasterxml.jackson.a.g.d f()
    {
        if (p == null)
        {
            p = new com.fasterxml.jackson.a.g.d();
        } else
        {
            p.a();
        }
        return p;
    }

    protected char g()
    {
        throw new UnsupportedOperationException();
    }

    public BigInteger getBigIntegerValue()
    {
        if ((4 & z) == 0)
        {
            if (z == 0)
            {
                a(4);
            }
            if ((4 & z) == 0)
            {
                n();
            }
        }
        return D;
    }

    public j getCurrentLocation()
    {
        int i1 = 1 + (c - g);
        return new j(a.a(), (e + (long)c) - 1L, f, i1);
    }

    public String getCurrentName()
    {
        if (_currToken == r.b || _currToken == r.d)
        {
            return k.c().getCurrentName();
        } else
        {
            return k.getCurrentName();
        }
    }

    public BigDecimal getDecimalValue()
    {
        if ((0x10 & z) == 0)
        {
            if (z == 0)
            {
                a(16);
            }
            if ((0x10 & z) == 0)
            {
                p();
            }
        }
        return E;
    }

    public double getDoubleValue()
    {
        if ((8 & z) == 0)
        {
            if (z == 0)
            {
                a(8);
            }
            if ((8 & z) == 0)
            {
                o();
            }
        }
        return C;
    }

    public Object getEmbeddedObject()
    {
        return null;
    }

    public float getFloatValue()
    {
        return (float)getDoubleValue();
    }

    public int getIntValue()
    {
        if ((1 & z) == 0)
        {
            if (z == 0)
            {
                a(1);
            }
            if ((1 & z) == 0)
            {
                l();
            }
        }
        return A;
    }

    public long getLongValue()
    {
        if ((2 & z) == 0)
        {
            if (z == 0)
            {
                a(2);
            }
            if ((2 & z) == 0)
            {
                m();
            }
        }
        return B;
    }

    public int getNumberType$72641f5()
    {
        if (z == 0)
        {
            a(0);
        }
        if (_currToken == r.i)
        {
            if ((1 & z) != 0)
            {
                return com.fasterxml.jackson.a.o.a;
            }
            if ((2 & z) != 0)
            {
                return com.fasterxml.jackson.a.o.b;
            } else
            {
                return com.fasterxml.jackson.a.o.c;
            }
        }
        if ((0x10 & z) != 0)
        {
            return com.fasterxml.jackson.a.o.f;
        } else
        {
            return com.fasterxml.jackson.a.o.e;
        }
    }

    public Number getNumberValue()
    {
        if (z == 0)
        {
            a(0);
        }
        if (_currToken == r.i)
        {
            if ((1 & z) != 0)
            {
                return Integer.valueOf(A);
            }
            if ((2 & z) != 0)
            {
                return Long.valueOf(B);
            }
            if ((4 & z) != 0)
            {
                return D;
            } else
            {
                return E;
            }
        }
        if ((0x10 & z) != 0)
        {
            return E;
        }
        if ((8 & z) == 0)
        {
            _throwInternal();
        }
        return Double.valueOf(C);
    }

    public q getParsingContext()
    {
        return h();
    }

    public j getTokenLocation()
    {
        return new j(a.a(), i(), j(), k());
    }

    public boolean hasTextCharacters()
    {
        if (_currToken == r.h)
        {
            return true;
        }
        if (_currToken == r.f)
        {
            return o;
        } else
        {
            return false;
        }
    }

    public boolean isClosed()
    {
        return b;
    }

    public void overrideCurrentName(String s1)
    {
        com.fasterxml.jackson.a.d.d d1 = k;
        if (_currToken == r.b || _currToken == r.d)
        {
            d1 = d1.c();
        }
        d1.a(s1);
    }

    public w version()
    {
        return f.a;
    }

    static 
    {
        r = BigInteger.valueOf(0xffffffff80000000L);
        s = BigInteger.valueOf(0x7fffffffL);
        t = BigInteger.valueOf(0x8000000000000000L);
        u = BigInteger.valueOf(0x7fffffffffffffffL);
        v = new BigDecimal(t);
        w = new BigDecimal(u);
        x = new BigDecimal(r);
        y = new BigDecimal(s);
    }
}
