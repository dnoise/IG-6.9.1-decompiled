// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.g;

import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;

// Referenced classes of package com.instagram.common.a.g:
//            b

public class a
{

    private static final Class a = com/instagram/common/a/g/a;
    private static SchemeRegistry b;

    public a()
    {
    }

    public static SchemeRegistry a()
    {
        com/instagram/common/a/g/a;
        JVM INSTR monitorenter ;
        SchemeRegistry schemeregistry1;
        if (b == null)
        {
            SchemeRegistry schemeregistry = new SchemeRegistry();
            b = schemeregistry;
            schemeregistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            b.register(new Scheme("https", new b((byte)0), 443));
        }
        schemeregistry1 = b;
        com/instagram/common/a/g/a;
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
