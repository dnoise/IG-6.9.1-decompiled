// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.g;


// Referenced classes of package com.instagram.api.g:
//            h, i

public class g
{

    private static final Class a = com/instagram/api/g/g;
    private static g b;
    private final h c[] = new h[7];
    private int d;

    g()
    {
        d = 0;
    }

    public static g a()
    {
        com/instagram/api/g/g;
        JVM INSTR monitorenter ;
        g g1;
        if (b == null)
        {
            b = new g();
        }
        g1 = b;
        com/instagram/api/g/g;
        JVM INSTR monitorexit ;
        return g1;
        Exception exception;
        exception;
        throw exception;
    }

    private static boolean a(String s)
    {
        if (s == null)
        {
            return false;
        } else
        {
            return s.toLowerCase().endsWith(".jpg");
        }
    }

    private int b()
    {
        h h1;
        int j;
        h1 = null;
        j = 0;
        float f = 0.0F;
        this;
        JVM INSTR monitorenter ;
        int k;
        float f1;
        h h2;
        k = 0;
        f1 = 0.0F;
        h2 = null;
_L7:
        if (k >= c.length) goto _L2; else goto _L1
_L1:
        h h3 = c[k];
        if (h3 == null) goto _L4; else goto _L3
_L3:
        j++;
        f1 += h.a(h3) * h.b(h3);
        f += h.b(h3);
        if (h2 == null)
        {
            break MISSING_BLOCK_LABEL_220;
        }
        if (h.a(h3) > h.a(h2))
        {
            break MISSING_BLOCK_LABEL_220;
        }
_L13:
        if (h1 == null) goto _L6; else goto _L5
_L5:
        float f4;
        float f5;
        f4 = h.a(h3);
        f5 = h.a(h1);
        if (f4 >= f5) goto _L4; else goto _L6
_L6:
        h h4;
        h1 = h3;
        h4 = h2;
_L12:
        k++;
        h2 = h4;
          goto _L7
_L2:
        if (j != 0) goto _L9; else goto _L8
_L8:
        int l = -1;
_L11:
        this;
        JVM INSTR monitorexit ;
        return l;
_L9:
        if (j < 3)
        {
            break MISSING_BLOCK_LABEL_196;
        }
        float f2;
        float f3;
        f1 -= h.a(h2) * h.b(h2) + h.a(h1) * h.b(h1);
        f2 = h.b(h2);
        f3 = h.b(h1);
        f -= f2 + f3;
        l = (int)(f1 / f);
        if (true) goto _L11; else goto _L10
_L10:
        Exception exception;
        exception;
        throw exception;
_L4:
        h4 = h2;
          goto _L12
        h2 = h3;
          goto _L13
    }

    public final void a(i j)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = a(j.a());
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        h h1;
        d = (1 + d) % 7;
        h1 = c[d];
        if (h1 != null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        h1 = new h((byte)0);
        c[d] = h1;
        float f = (float)j.j() / 1024F;
        float f1 = (float)j.n() / 1000F;
        h.a(h1, f);
        h.b(h1, Math.min(f / f1, 10240F));
        a;
        (new StringBuilder("latest speed ")).append(b());
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

}
