// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

public class c
{

    private final LinkedHashMap a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private final int h;
    private final int i;

    public c()
    {
        this(512);
    }

    private c(int j)
    {
        this(0x7fffffff, 512, 0);
    }

    public c(int j, int k, int l)
    {
        if (j <= 0)
        {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (k <= 0)
        {
            throw new IllegalArgumentException("maxEntries <= 0");
        } else
        {
            h = l;
            c = j;
            i = k;
            a = new LinkedHashMap(0, 0.75F, true);
            return;
        }
    }

    private void a(int j)
    {
        this;
        JVM INSTR monitorenter ;
        if (b > j)
        {
            break MISSING_BLOCK_LABEL_13;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        this;
        JVM INSTR monitorexit ;
        int k = 0;
_L2:
        this;
        JVM INSTR monitorenter ;
        if (b < 0 || a.isEmpty() && b != 0)
        {
            throw new IllegalStateException((new StringBuilder()).append(getClass().getName()).append(".sizeOf() is reporting inconsistent results!").toString());
        }
        break MISSING_BLOCK_LABEL_88;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception;
        exception;
        throw exception;
        if ((k < h || b > j) && !a.isEmpty())
        {
            break MISSING_BLOCK_LABEL_117;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        java.util.Map.Entry entry = (java.util.Map.Entry)a.entrySet().iterator().next();
        Object obj = entry.getKey();
        Object obj1 = entry.getValue();
        a.remove(obj);
        b = b - b(obj, obj1);
        b;
        e = 1 + e;
        int l = k + 1;
        this;
        JVM INSTR monitorexit ;
        k = l;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void a(int j, int k)
    {
        a(j);
        b(k);
    }

    private int b(Object obj, Object obj1)
    {
        int j = c(obj1);
        if (j < 0)
        {
            throw new IllegalStateException((new StringBuilder("Negative size: ")).append(obj).append("=").append(obj1).toString());
        } else
        {
            return j;
        }
    }

    private void b(int j)
    {
        this;
        JVM INSTR monitorenter ;
        if (a.size() > j)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        this;
        JVM INSTR monitorexit ;
        int k = 0;
_L2:
        this;
        JVM INSTR monitorenter ;
        if ((k < h || a.size() > j) && !a.isEmpty())
        {
            break MISSING_BLOCK_LABEL_66;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception;
        exception;
        throw exception;
        java.util.Map.Entry entry = (java.util.Map.Entry)a.entrySet().iterator().next();
        Object obj = entry.getKey();
        Object obj1 = entry.getValue();
        a.remove(obj);
        b = b - b(obj, obj1);
        b;
        e = 1 + e;
        int l = k + 1;
        this;
        JVM INSTR monitorexit ;
        k = l;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final Object a(Object obj)
    {
        if (obj == null)
        {
            throw new NullPointerException("key == null");
        }
        this;
        JVM INSTR monitorenter ;
        Object obj1 = a.get(obj);
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        f = 1 + f;
        this;
        JVM INSTR monitorexit ;
        return obj1;
        g = 1 + g;
        this;
        JVM INSTR monitorexit ;
        return null;
        Exception exception;
        exception;
        throw exception;
    }

    public final Object a(Object obj, Object obj1)
    {
        if (obj == null || obj1 == null)
        {
            throw new NullPointerException("key == null || value == null");
        }
        this;
        JVM INSTR monitorenter ;
        Object obj2;
        d = 1 + d;
        b = b + b(obj, obj1);
        obj2 = a.put(obj, obj1);
        if (obj2 == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        b = b - b(obj, obj2);
        b;
        this;
        JVM INSTR monitorexit ;
        a(c, i);
        return obj2;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a()
    {
        a(-1);
    }

    public final Object b(Object obj)
    {
        if (obj == null)
        {
            throw new NullPointerException("key == null");
        }
        this;
        JVM INSTR monitorenter ;
        Object obj1 = a.remove(obj);
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        b = b - b(obj, obj1);
        b;
        this;
        JVM INSTR monitorexit ;
        return obj1;
        Exception exception;
        exception;
        throw exception;
    }

    protected int c(Object obj)
    {
        return 1;
    }

    public final String toString()
    {
        this;
        JVM INSTR monitorenter ;
        int j = f + g;
        int k;
        k = 0;
        if (j == 0)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        k = (100 * f) / j;
        String s;
        Object aobj[] = new Object[4];
        aobj[0] = Integer.valueOf(c);
        aobj[1] = Integer.valueOf(f);
        aobj[2] = Integer.valueOf(g);
        aobj[3] = Integer.valueOf(k);
        s = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", aobj);
        this;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }
}
