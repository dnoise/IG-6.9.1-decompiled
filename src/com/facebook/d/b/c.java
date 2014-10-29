// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.d.b;

import a.a.a;
import com.facebook.a.i;
import java.util.Random;
import java.util.concurrent.ExecutorService;

// Referenced classes of package com.facebook.d.b:
//            a, e, f, h, 
//            d

public class c extends com.facebook.d.b.a
{

    public static final a a = new e((byte)0);
    private static final String b = com/facebook/d/b/c.getSimpleName();
    private static boolean i = false;
    private final a c;
    private final a d;
    private final ExecutorService e;
    private final Random f;
    private final a g;
    private final boolean h;

    public c(a a1, a a2, ExecutorService executorservice, Random random)
    {
        this(a1, a2, executorservice, random, a);
    }

    private c(a a1, a a2, ExecutorService executorservice, Random random, a a3)
    {
        c = a1;
        d = a2;
        e = executorservice;
        f = random;
        g = a3;
        h = false;
    }

    static a a(c c1)
    {
        return c1.g;
    }

    private String a(String s, int j, boolean flag)
    {
        boolean flag1;
        if (((Boolean)d.a()).booleanValue() || c.a() == com.facebook.d.h.a.a)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (!flag1)
        {
            if (flag)
            {
                s = null;
            } else
            {
                if (f.nextInt() % j != 0)
                {
                    return null;
                }
                if (j != 1)
                {
                    return (new StringBuilder()).append(s).append(" [freq=").append(j).append("]").toString();
                }
            }
        }
        return s;
    }

    static boolean b(c c1)
    {
        return c1.h;
    }

    public final void a(f f1)
    {
        if (!i)
        {
            boolean flag;
            if (c.a() == com.facebook.d.h.a.a || ((Boolean)d.a()).booleanValue())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (f1.d() && flag)
            {
                i j = (i)g.a();
                j.a("soft_error_message", f1.b());
                com.facebook.e.a.a.a(b, (new StringBuilder("category: ")).append(f1.a()).append(" message:").append(f1.b()).toString());
                RuntimeException runtimeexception = new RuntimeException((new StringBuilder("Soft error FAILING HARDER: ")).append(f1.a()).toString(), f1.c());
                j.uncaughtException(Thread.currentThread(), runtimeexception);
                return;
            }
            String s = a(f1.a(), f1.e(), f1.f());
            if (s != null)
            {
                String s1 = f1.b();
                h h1 = new h(s1, f1.c());
                e.execute(new d(this, s, s1, h1));
                return;
            }
        }
    }

}
