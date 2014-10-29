// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.c;

import java.io.CharConversionException;
import java.io.InputStream;

// Referenced classes of package com.fasterxml.jackson.a.c:
//            a, d

public final class m extends a
{

    protected final boolean g;
    protected char h;
    protected int i;
    protected int j;
    protected final boolean k;

    public m(d d, InputStream inputstream, byte abyte0[], int l, int i1, boolean flag)
    {
        super(d, inputstream, abyte0, l, i1);
        h = '\0';
        i = 0;
        j = 0;
        g = flag;
        boolean flag1 = false;
        if (inputstream != null)
        {
            flag1 = true;
        }
        k = flag1;
    }

    private void a(int l)
    {
        int i1 = l + j;
        int j1 = i;
        throw new CharConversionException((new StringBuilder("Unexpected EOF in the middle of a 4-byte UTF-32 char: got ")).append(l).append(", needed 4, at char #").append(j1).append(", byte #").append(i1).append(")").toString());
    }

    private void a(int l, int i1, String s)
    {
        int j1 = -1 + (j + d);
        int k1 = i1 + i;
        throw new CharConversionException((new StringBuilder("Invalid UTF-32 character 0x")).append(Integer.toHexString(l)).append(s).append(" at char #").append(k1).append(", byte #").append(j1).append(")").toString());
    }

    private boolean b(int l)
    {
        j = j + (e - l);
        if (l > 0)
        {
            if (d > 0)
            {
                for (int k1 = 0; k1 < l; k1++)
                {
                    c[k1] = c[k1 + d];
                }

                d = 0;
            }
            e = l;
        } else
        {
            d = 0;
            int i1;
            if (b == null)
            {
                i1 = -1;
            } else
            {
                i1 = b.read(c);
            }
            if (i1 <= 0)
            {
                e = 0;
                if (i1 < 0)
                {
                    if (k)
                    {
                        a();
                    }
                    return false;
                }
                b();
            }
            e = i1;
        }
        while (e < 4) 
        {
            int j1;
            if (b == null)
            {
                j1 = -1;
            } else
            {
                j1 = b.read(c, e, c.length - e);
            }
            if (j1 <= 0)
            {
                if (j1 < 0)
                {
                    if (k)
                    {
                        a();
                    }
                    a(e);
                }
                b();
            }
            e = j1 + e;
        }
        return true;
    }

    public final volatile void close()
    {
        super.close();
    }

    public final volatile int read()
    {
        return super.read();
    }

    public final int read(char ac[], int l, int i1)
    {
        if (c != null) goto _L2; else goto _L1
_L1:
        return -1;
_L2:
        int j1;
        if (i1 <= 0)
        {
            return i1;
        }
        if (l < 0 || l + i1 > ac.length)
        {
            a(ac, l, i1);
        }
        j1 = i1 + l;
        if (h == 0) goto _L4; else goto _L3
_L3:
        int l1;
        l1 = l + 1;
        ac[l] = h;
        h = '\0';
_L10:
        int i2;
        int l2;
        if (l1 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        int k2 = d;
        int k1;
        int j2;
        int i3;
        if (g)
        {
            l2 = c[k2] << 24 | (0xff & c[k2 + 1]) << 16 | (0xff & c[k2 + 2]) << 8 | 0xff & c[k2 + 3];
        } else
        {
            l2 = 0xff & c[k2] | (0xff & c[k2 + 1]) << 8 | (0xff & c[k2 + 2]) << 16 | c[k2 + 3] << 24;
        }
        d = 4 + d;
        if (l2 <= 65535) goto _L6; else goto _L5
_L5:
        if (l2 > 0x10ffff)
        {
            a(l2, l1 - l, (new StringBuilder("(above ")).append(Integer.toHexString(0x10ffff)).append(") ").toString());
        }
        i3 = l2 - 0x10000;
        i2 = l1 + 1;
        ac[l1] = (char)(55296 + (i3 >> 10));
        l2 = 0xdc00 | i3 & 0x3ff;
        if (i2 < j1) goto _L8; else goto _L7
_L7:
        h = (char)l2;
_L12:
        j2 = i2 - l;
        i = j2 + i;
        return j2;
_L4:
        k1 = e - d;
        if (k1 < 4 && !b(k1)) goto _L1; else goto _L9
_L9:
        l1 = l;
          goto _L10
_L6:
        i2 = l1;
_L8:
        l1 = i2 + 1;
        ac[i2] = (char)l2;
        if (d < e) goto _L10; else goto _L11
_L11:
        i2 = l1;
          goto _L12
    }
}
