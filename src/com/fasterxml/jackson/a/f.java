// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a;


public final class f extends Enum
{

    public static final f a;
    public static final f b;
    private static final f d[];
    private final boolean c = true;

    private f(String s, int i)
    {
        super(s, i);
    }

    public static int a()
    {
        int i = 0;
        f af[] = values();
        int j = af.length;
        for (int k = 0; k < j; k++)
        {
            f f1 = af[k];
            if (f1.c())
            {
                i |= f1.b();
            }
        }

        return i;
    }

    private boolean c()
    {
        return c;
    }

    public static f valueOf(String s)
    {
        return (f)Enum.valueOf(com/fasterxml/jackson/a/f, s);
    }

    public static f[] values()
    {
        return (f[])d.clone();
    }

    public final int b()
    {
        return 1 << ordinal();
    }

    static 
    {
        a = new f("INTERN_FIELD_NAMES", 0);
        b = new f("CANONICALIZE_FIELD_NAMES", 1);
        f af[] = new f[2];
        af[0] = a;
        af[1] = b;
        d = af;
    }
}
