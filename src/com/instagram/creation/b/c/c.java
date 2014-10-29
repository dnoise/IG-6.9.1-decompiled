// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.c;

import com.instagram.creation.b.a.b;
import com.instagram.creation.b.d.a;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.creation.b.c:
//            a

final class c
    implements Runnable
{

    final com.instagram.creation.b.c.a a;
    private final int b;
    private final b c;

    private c(com.instagram.creation.b.c.a a1, int i, b b1)
    {
        a = a1;
        super();
        b = i;
        c = b1;
    }

    c(com.instagram.creation.b.c.a a1, int i, b b1, byte byte0)
    {
        this(a1, i, b1);
    }

    static b a(c c1)
    {
        return c1.c;
    }

    public final void run()
    {
        boolean flag = false;
        if (b != 1) goto _L2; else goto _L1
_L1:
        com.instagram.creation.b.d.a.a().b(c.a());
_L5:
        com.instagram.creation.b.c.a.d().c();
        com.instagram.creation.b.c.a a2 = a;
        a2;
        JVM INSTR monitorenter ;
        Iterator iterator1;
        com.instagram.creation.b.c.a.a(a).remove(this);
        iterator1 = com.instagram.creation.b.c.a.a(a).iterator();
_L3:
        b b3;
        b b4;
        if (!iterator1.hasNext())
        {
            break MISSING_BLOCK_LABEL_231;
        }
        c c2 = (c)iterator1.next();
        b3 = c;
        b4 = c2.c;
        Exception exception;
        com.instagram.creation.b.c.a a1;
        Exception exception1;
        Iterator iterator;
        c c1;
        b b1;
        b b2;
        boolean flag1;
        Exception exception2;
        boolean flag2;
        if (b3 == b4)
        {
            flag2 = true;
        } else
        {
            flag2 = flag;
        }
        flag = flag2;
          goto _L3
_L2:
        if (b != 0) goto _L5; else goto _L4
_L4:
        com.instagram.creation.b.c.a.a(a, c);
          goto _L5
        exception;
        com.instagram.creation.b.c.a.d().c();
        a1 = a;
        a1;
        JVM INSTR monitorenter ;
        com.instagram.creation.b.c.a.a(a).remove(this);
        iterator = com.instagram.creation.b.c.a.a(a).iterator();
_L6:
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_251;
        }
        c1 = (c)iterator.next();
        b1 = c;
        b2 = c1.c;
        if (b1 == b2)
        {
            flag1 = true;
        } else
        {
            flag1 = flag;
        }
        flag = flag1;
          goto _L6
        c.g(flag);
        a2;
        JVM INSTR monitorexit ;
        return;
        exception2;
        a2;
        JVM INSTR monitorexit ;
        throw exception2;
        c.g(flag);
        a1;
        JVM INSTR monitorexit ;
        throw exception;
        exception1;
        throw exception1;
    }
}
