// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.a;

import com.instagram.m.b;
import com.instagram.m.c;

public final class a
{

    private static Integer a;

    public static int a()
    {
        com/instagram/creation/a/a;
        JVM INSTR monitorenter ;
        String s;
        if (a != null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        s = c.k.h();
        a = Integer.valueOf(Integer.parseInt(s));
_L1:
        int i = a.intValue();
        com/instagram/creation/a/a;
        JVM INSTR monitorexit ;
        return i;
        NumberFormatException numberformatexception;
        numberformatexception;
        a = Integer.valueOf(640);
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public static void b()
    {
        com/instagram/creation/a/a;
        JVM INSTR monitorenter ;
        a = null;
        com/instagram/creation/a/a;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
