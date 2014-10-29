// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.m;

import com.instagram.common.l.a.h;
import com.instagram.common.y.e;
import com.instagram.service.a.a;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.instagram.m:
//            i, k

final class n
    implements h
{

    private static final Map a = new HashMap();

    private n()
    {
    }

    n(byte byte0)
    {
        this();
    }

    private i a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = (i)a.get(s);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        obj = new k(s, (byte)0);
        a.put(s, obj);
        this;
        JVM INSTR monitorexit ;
        return ((i) (obj));
        Exception exception;
        exception;
        throw exception;
    }

    private i b()
    {
        String s = com.instagram.service.a.a.a().c();
        if (!e.c(s))
        {
            return a(s);
        }
        String s1 = com.instagram.common.z.a.a();
        if (!e.c(s1))
        {
            return a(s1);
        } else
        {
            return new k(null, (byte)0);
        }
    }

    public final Object a()
    {
        return b();
    }

}
