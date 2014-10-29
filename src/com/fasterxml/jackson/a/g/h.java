// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.g;

import java.util.Arrays;

// Referenced classes of package com.fasterxml.jackson.a.g:
//            i

public final class h extends i
{

    public static final h a = new h();
    static final char b[];
    private static final String d;

    public h()
    {
    }

    public final void a(com.fasterxml.jackson.a.h h1, int j)
    {
        h1.writeRaw(d);
        if (j > 0)
        {
            int k;
            for (k = j + j; k > 64; k -= b.length)
            {
                h1.writeRaw(b, 0, 64);
            }

            h1.writeRaw(b, 0, k);
        }
    }

    public final boolean a()
    {
        return false;
    }

    static 
    {
        String s1 = System.getProperty("line.separator");
        String s = s1;
_L2:
        if (s == null)
        {
            s = "\n";
        }
        d = s;
        char ac[] = new char[64];
        b = ac;
        Arrays.fill(ac, ' ');
        return;
        Throwable throwable;
        throwable;
        s = null;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
