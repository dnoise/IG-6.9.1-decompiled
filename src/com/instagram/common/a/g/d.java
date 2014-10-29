// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.g;

import ch.boye.httpclientandroidlib.conn.scheme.PlainSocketFactory;
import ch.boye.httpclientandroidlib.conn.scheme.Scheme;
import ch.boye.httpclientandroidlib.conn.scheme.SchemeRegistry;

// Referenced classes of package com.instagram.common.a.g:
//            e

public class d
{

    private static final Class a = com/instagram/common/a/g/d;
    private static SchemeRegistry b;

    public d()
    {
    }

    public static SchemeRegistry a()
    {
        com/instagram/common/a/g/d;
        JVM INSTR monitorenter ;
        SchemeRegistry schemeregistry1;
        if (b == null)
        {
            SchemeRegistry schemeregistry = new SchemeRegistry();
            b = schemeregistry;
            schemeregistry.register(new Scheme("http", 80, PlainSocketFactory.getSocketFactory()));
            b.register(new Scheme("https", 443, new e((byte)0)));
        }
        schemeregistry1 = b;
        com/instagram/common/a/g/d;
        JVM INSTR monitorexit ;
        return schemeregistry1;
        Exception exception;
        exception;
        throw exception;
    }

    static Class b()
    {
        return a;
    }

}
