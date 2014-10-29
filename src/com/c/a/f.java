// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.c.a;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

// Referenced classes of package com.c.a:
//            a, d

final class f
{

    final a a;
    private final String b;
    private final long c[];
    private boolean d;
    private d e;
    private long f;

    private f(a a1, String s)
    {
        a = a1;
        super();
        b = s;
        c = new long[com.c.a.a.f(a1)];
    }

    f(a a1, String s, byte byte0)
    {
        this(a1, s);
    }

    static long a(f f1, long l)
    {
        f1.f = l;
        return l;
    }

    static d a(f f1, d d1)
    {
        f1.e = d1;
        return d1;
    }

    static void a(f f1, String as[])
    {
        f1.a(as);
    }

    private void a(String as[])
    {
        if (as.length != com.c.a.a.f(a))
        {
            throw b(as);
        }
        int i = 0;
        do
        {
            try
            {
                if (i >= as.length)
                {
                    break;
                }
                c[i] = Long.parseLong(as[i]);
            }
            catch (NumberFormatException numberformatexception)
            {
                throw b(as);
            }
            i++;
        } while (true);
    }

    static boolean a(f f1)
    {
        f1.d = true;
        return true;
    }

    static d b(f f1)
    {
        return f1.e;
    }

    private static IOException b(String as[])
    {
        throw new IOException((new StringBuilder("unexpected journal line: ")).append(Arrays.toString(as)).toString());
    }

    static long[] c(f f1)
    {
        return f1.c;
    }

    static String d(f f1)
    {
        return f1.b;
    }

    static boolean e(f f1)
    {
        return f1.d;
    }

    static long f(f f1)
    {
        return f1.f;
    }

    public final File a(int i)
    {
        return new File(com.c.a.a.g(a), (new StringBuilder()).append(b).append(".").append(i).toString());
    }

    public final String a()
    {
        StringBuilder stringbuilder = new StringBuilder();
        long al[] = c;
        int i = al.length;
        for (int j = 0; j < i; j++)
        {
            long l = al[j];
            stringbuilder.append(' ').append(l);
        }

        return stringbuilder.toString();
    }

    public final File b(int i)
    {
        return new File(com.c.a.a.g(a), (new StringBuilder()).append(b).append(".").append(i).append(".tmp").toString());
    }
}
