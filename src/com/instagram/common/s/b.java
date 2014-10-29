// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.s;

import com.instagram.common.f.a;

public final class b extends Enum
{

    public static final b a;
    public static final b b;
    public static final b c;
    private static b d;
    private static final b e[];

    private b(String s, int i)
    {
        super(s, i);
    }

    public static b a()
    {
        if (d == null)
        {
            e();
        }
        return d;
    }

    public static boolean b()
    {
        return a.a;
    }

    public static boolean c()
    {
        return a.b;
    }

    public static boolean d()
    {
        return a.c;
    }

    private static void e()
    {
        com/instagram/common/s/b;
        JVM INSTR monitorenter ;
        b b1 = d;
        if (b1 == null) goto _L2; else goto _L1
_L1:
        com/instagram/common/s/b;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (!b())
        {
            break MISSING_BLOCK_LABEL_36;
        }
        d = a;
          goto _L1
        Exception exception;
        exception;
        throw exception;
label0:
        {
            if (!c())
            {
                break label0;
            }
            d = b;
        }
          goto _L1
        d = c;
          goto _L1
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/instagram/common/s/b, s);
    }

    public static b[] values()
    {
        return (b[])e.clone();
    }

    static 
    {
        a = new b("DEBUG", 0);
        b = new b("INHOUSE", 1);
        c = new b("PROD", 2);
        b ab[] = new b[3];
        ab[0] = a;
        ab[1] = b;
        ab[2] = c;
        e = ab;
    }
}
