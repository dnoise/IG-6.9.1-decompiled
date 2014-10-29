// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a.c;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

// Referenced classes of package com.facebook.a.c:
//            l

public final class k
{

    public static int a = 0;
    protected final int b;
    private Queue c;

    public k(int i)
    {
        b = i;
        a();
    }

    private void a()
    {
        this;
        JVM INSTR monitorenter ;
        c = new LinkedList();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final String a(int i)
    {
        this;
        JVM INSTR monitorenter ;
        StringBuilder stringbuilder = new StringBuilder();
        if (i > a) goto _L2; else goto _L1
_L1:
        int j = 0;
_L5:
        Iterator iterator = c.iterator();
        int i1 = 0;
_L6:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        l l1 = (l)iterator.next();
        if (i1 < j)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        stringbuilder.append(l1.toString()).append('\n');
        break MISSING_BLOCK_LABEL_117;
_L2:
        j = Math.max(c.size() - i, 0);
          goto _L5
_L4:
        String s = stringbuilder.toString();
        this;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
        i1++;
          goto _L6
    }

    public final String toString()
    {
        this;
        JVM INSTR monitorenter ;
        String s = a(a);
        this;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

}
