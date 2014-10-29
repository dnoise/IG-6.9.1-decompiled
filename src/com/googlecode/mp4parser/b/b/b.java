// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.b.b;

import com.googlecode.mp4parser.b.a;
import java.io.InputStream;

// Referenced classes of package com.googlecode.mp4parser.b.b:
//            a

public final class b extends com.googlecode.mp4parser.b.b.a
{

    public b(InputStream inputstream)
    {
        super(inputstream);
    }

    private void a(String s, String s1)
    {
        int i = 0;
        StringBuilder stringbuilder = new StringBuilder();
        String s2 = String.valueOf(b - c.b());
        int j = 8 - s2.length();
        stringbuilder.append((new StringBuilder("@")).append(s2).toString());
        for (int k = 0; k < j; k++)
        {
            stringbuilder.append(' ');
        }

        stringbuilder.append(s);
        for (int l = 100 - stringbuilder.length() - c.b(); i < l; i++)
        {
            stringbuilder.append(' ');
        }

        stringbuilder.append(c);
        stringbuilder.append((new StringBuilder(" (")).append(s1).append(")").toString());
        c.a();
    }

    private int e()
    {
        int i;
        for (i = 0; a() == 0; i++) { }
        int j = 0;
        if (i > 0)
        {
            j = (int)(a(i) + (long)(-1 + (1 << i)));
        }
        return j;
    }

    public final int a(String s)
    {
        int i = e();
        a(s, String.valueOf(i));
        return i;
    }

    public final long a(int i, String s)
    {
        long l = a(i);
        a(s, String.valueOf(l));
        return l;
    }

    public final int b(int i, String s)
    {
        return (int)a(i, s);
    }

    public final int b(String s)
    {
        int i = e();
        int j = (-1 + ((i & 1) << 1)) * ((i >> 1) + (i & 1));
        a(s, String.valueOf(j));
        return j;
    }

    public final boolean c(String s)
    {
        boolean flag;
        String s1;
        if (a() == 0)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        if (flag)
        {
            s1 = "1";
        } else
        {
            s1 = "0";
        }
        a(s, s1);
        return flag;
    }

    public final void d()
    {
        a();
        c();
    }
}
