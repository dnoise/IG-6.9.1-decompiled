// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.n;

import android.content.Context;
import com.instagram.common.v.c;

public final class a
{

    private static final com.instagram.common.v.a a;
    private static final c b;
    private static final com.instagram.common.v.a c;

    public static void a(String s)
    {
        com/instagram/n/a;
        JVM INSTR monitorenter ;
        b.a(s);
        a.a(Boolean.valueOf(true));
        com/instagram/n/a;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static boolean a()
    {
        com/instagram/n/a;
        JVM INSTR monitorenter ;
        boolean flag = a.a().booleanValue();
        com/instagram/n/a;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public static String b()
    {
        com/instagram/n/a;
        JVM INSTR monitorenter ;
        String s = b.a();
        com/instagram/n/a;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public static void b(String s)
    {
        com/instagram/n/a;
        JVM INSTR monitorenter ;
        b.a(s);
        a.a(Boolean.valueOf(false));
        com/instagram/n/a;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static boolean c()
    {
        com/instagram/n/a;
        JVM INSTR monitorenter ;
        if (a()) goto _L2; else goto _L1
_L1:
        String s = b();
        if (s == null) goto _L3; else goto _L2
_L2:
        boolean flag = true;
_L5:
        com/instagram/n/a;
        JVM INSTR monitorexit ;
        return flag;
_L3:
        flag = false;
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public static boolean d()
    {
        com/instagram/n/a;
        JVM INSTR monitorenter ;
        boolean flag = c.a().booleanValue();
        com/instagram/n/a;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public static void e()
    {
        com/instagram/n/a;
        JVM INSTR monitorenter ;
        c.a(Boolean.valueOf(true));
        com/instagram/n/a;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static 
    {
        android.content.SharedPreferences sharedpreferences = com.instagram.common.h.a.a().getSharedPreferences("unauthenticated", 0);
        a = new com.instagram.common.v.a(sharedpreferences, "did_facebook_sso");
        b = new c(sharedpreferences, "last_log_in_token");
        c = new com.instagram.common.v.a(sharedpreferences, "registration_push_sent");
    }
}
