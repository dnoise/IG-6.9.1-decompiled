// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.o;

import android.content.Context;
import android.content.SharedPreferences;
import com.instagram.common.p.b.b;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.common.o:
//            b, c

public class a
{

    private static final Class a = com/instagram/common/o/a;
    private static final Map b = new HashMap();
    private final SharedPreferences c;
    private final Map d = new HashMap();
    private final Map e;

    private a(SharedPreferences sharedpreferences)
    {
        c = sharedpreferences;
        e = new HashMap(c.getAll());
    }

    public static a c(String s)
    {
        com/instagram/common/o/a;
        JVM INSTR monitorenter ;
        a a1 = (a)b.get(s);
        if (a1 != null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        a1 = new a(com.instagram.common.h.a.a().getSharedPreferences(s, 0));
        com.instagram.common.p.b.b.a().a(a1.e());
        b.put(s, a1);
        com/instagram/common/o/a;
        JVM INSTR monitorexit ;
        return a1;
        Exception exception;
        exception;
        throw exception;
    }

    private com.instagram.common.p.b.a e()
    {
        return new com.instagram.common.o.b(this);
    }

    public final int a()
    {
        this;
        JVM INSTR monitorenter ;
        int i = e.size();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public final long a(String s, long l)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = e.get(s);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        long l1 = ((Long)obj).longValue();
        l = l1;
        this;
        JVM INSTR monitorexit ;
        return l;
        Exception exception;
        exception;
        throw exception;
    }

    public final boolean a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = e.containsKey(s);
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public final Set b()
    {
        this;
        JVM INSTR monitorenter ;
        HashSet hashset = new HashSet(e.entrySet());
        this;
        JVM INSTR monitorexit ;
        return hashset;
        Exception exception;
        exception;
        throw exception;
    }

    public final void b(String s)
    {
        this;
        JVM INSTR monitorenter ;
        e.remove(s);
        d.put(s, this);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void b(String s, long l)
    {
        this;
        JVM INSTR monitorenter ;
        e.put(s, Long.valueOf(l));
        d.put(s, Long.valueOf(l));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void c()
    {
        this;
        JVM INSTR monitorenter ;
        if (d.size() > 0)
        {
            com.instagram.common.y.c.a.a().execute(new c(this));
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    final void d()
    {
        this;
        JVM INSTR monitorenter ;
        android.content.SharedPreferences.Editor editor;
        Iterator iterator;
        editor = c.edit();
        iterator = d.entrySet().iterator();
_L1:
        java.util.Map.Entry entry;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_116;
            }
            entry = (java.util.Map.Entry)iterator.next();
            if (entry.getValue() == this)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            editor.putLong((String)entry.getKey(), ((Long)entry.getValue()).longValue());
        } while (true);
        Exception exception;
        exception;
        throw exception;
        editor.remove((String)entry.getKey());
          goto _L1
        editor.commit();
        d.clear();
        a;
        this;
        JVM INSTR monitorexit ;
    }

}
