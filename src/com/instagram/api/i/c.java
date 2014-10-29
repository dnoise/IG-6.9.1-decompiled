// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.i;

import com.instagram.api.b.b;
import java.util.HashMap;
import java.util.Map;

public final class c
{

    private static final Map a = new HashMap();

    public static void a(b b1)
    {
        com/instagram/api/i/c;
        JVM INSTR monitorenter ;
        String s;
        Runnable runnable;
        s = b1.a();
        runnable = (Runnable)a.get(s);
        if (runnable == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        com.instagram.l.a.b b2;
        Float float1;
        Float float2;
        b2 = com.instagram.l.a.b.a();
        float1 = b2.a(s);
        float2 = b1.b();
        if (float1 == null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        if (float1.floatValue() >= float2.floatValue())
        {
            break MISSING_BLOCK_LABEL_77;
        }
        b2.a(s, float2);
        runnable.run();
        com/instagram/api/i/c;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void a(String s, Runnable runnable)
    {
        a.put(s, runnable);
    }

}
