// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y.h;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Socket;

public final class a
{

    private static a a;
    private Class b;
    private Method c;
    private Method d;
    private boolean e;

    public a()
    {
        b = Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
_L1:
        ClassNotFoundException classnotfoundexception;
        try
        {
            Class class1 = b;
            Class aclass[] = new Class[1];
            aclass[0] = Boolean.TYPE;
            c = class1.getMethod("setUseSessionTickets", aclass);
            d = b.getMethod("setHostname", new Class[] {
                java/lang/String
            });
            e = true;
            return;
        }
        catch (ClassNotFoundException classnotfoundexception1)
        {
            return;
        }
        classnotfoundexception;
        b = Class.forName("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
          goto _L1
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
    }

    public static a a()
    {
        com/instagram/common/y/h/a;
        JVM INSTR monitorenter ;
        a a1;
        if (a == null)
        {
            a = new a();
        }
        a1 = a;
        com/instagram/common/y/h/a;
        JVM INSTR monitorexit ;
        return a1;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(Socket socket, String s)
    {
        if (!e || !b.isInstance(socket))
        {
            break MISSING_BLOCK_LABEL_64;
        }
        Method method = c;
        Object aobj[] = new Object[1];
        aobj[0] = Boolean.valueOf(true);
        method.invoke(socket, aobj);
        d.invoke(socket, new Object[] {
            s
        });
        return;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        throw new RuntimeException(invocationtargetexception);
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        throw new AssertionError(illegalaccessexception);
    }
}
