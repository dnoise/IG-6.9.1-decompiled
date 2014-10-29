// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.j;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.common.j:
//            c, a, f, e, 
//            d

public final class b
{

    private final Map a = new HashMap();
    private final List b = new ArrayList();
    private Handler c;

    public b(Looper looper)
    {
        c = new c(this, looper);
    }

    private void a()
    {
        List list = b;
        list;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        arraylist = new ArrayList(b.size());
        for (Iterator iterator = b.iterator(); iterator.hasNext(); arraylist.add((a)iterator.next())) { }
        break MISSING_BLOCK_LABEL_70;
        Exception exception;
        exception;
        throw exception;
        b.clear();
        list;
        JVM INSTR monitorexit ;
        for (Iterator iterator1 = arraylist.iterator(); iterator1.hasNext(); c((a)iterator1.next())) { }
        return;
    }

    static void a(b b1)
    {
        b1.a();
    }

    private boolean c(a a1)
    {
        this;
        JVM INSTR monitorenter ;
        Set set = (Set)a.get(a1.getClass());
        this;
        JVM INSTR monitorexit ;
        if (set == null)
        {
            break MISSING_BLOCK_LABEL_144;
        }
        set;
        JVM INSTR monitorenter ;
        ArrayList arraylist = f.a(set);
        Iterator iterator = arraylist.iterator();
        boolean flag = false;
_L2:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        e e1 = (e)iterator.next();
        if (!set.contains(e1) || (e1 instanceof d) && !((d)e1).a(a1))
        {
            continue; /* Loop/switch isn't completed */
        }
        e1.b(a1);
        flag = true;
        if (true) goto _L2; else goto _L1
        Exception exception;
        exception;
        throw exception;
_L1:
        f.a(arraylist);
        set;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception2;
        exception2;
        f.a(arraylist);
        throw exception2;
        Exception exception1;
        exception1;
        set;
        JVM INSTR monitorexit ;
        throw exception1;
        return false;
    }

    public final b a(Class class1, e e1)
    {
        this;
        JVM INSTR monitorenter ;
        Set set = (Set)a.get(class1);
        if (set != null) goto _L2; else goto _L1
_L1:
        HashSet hashset;
        hashset = new HashSet();
        a.put(class1, hashset);
        Object obj = hashset;
_L4:
        obj;
        JVM INSTR monitorenter ;
        ((Set) (obj)).add(e1);
        obj;
        JVM INSTR monitorexit ;
        this;
        JVM INSTR monitorexit ;
        return this;
        Exception exception1;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        obj = set;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final boolean a(a a1)
    {
        return c(a1);
    }

    public final b b(Class class1, e e1)
    {
        this;
        JVM INSTR monitorenter ;
        Set set = (Set)a.get(class1);
        if (set == null) goto _L2; else goto _L1
_L1:
        set;
        JVM INSTR monitorenter ;
        set.remove(e1);
        if (set.isEmpty())
        {
            a.remove(class1);
        }
        set;
        JVM INSTR monitorexit ;
_L2:
        this;
        JVM INSTR monitorexit ;
        return this;
        Exception exception1;
        exception1;
        set;
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void b(a a1)
    {
        synchronized (b)
        {
            b.add(a1);
            if (!c.hasMessages(1))
            {
                c.sendEmptyMessage(1);
            }
        }
    }
}
