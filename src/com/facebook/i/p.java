// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.i;

import java.util.LinkedHashMap;

// Referenced classes of package com.facebook.i:
//            q

final class p
{

    private LinkedHashMap a;
    private int b;

    public p(int i)
    {
        b = 100;
        a = new q(this, 134);
    }

    static int a(p p1)
    {
        return p1.b;
    }

    public final Object a(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj1 = a.get(obj);
        this;
        JVM INSTR monitorexit ;
        return obj1;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(Object obj, Object obj1)
    {
        this;
        JVM INSTR monitorenter ;
        a.put(obj, obj1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
