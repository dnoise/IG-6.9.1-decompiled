// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.l.b;

import com.instagram.common.l.a.f;

public final class a
{

    private final Object a[] = (Object[])new Object[32];
    private int b;
    private int c;
    private int d;

    public a()
    {
        b = 0;
        c = 0;
        d = 0;
    }

    private boolean d()
    {
        this;
        JVM INSTR monitorenter ;
        int i = b;
        boolean flag;
        if (i == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    private boolean e()
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        int j;
        i = b;
        j = a.length;
        boolean flag;
        if (i == j)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public final Object a()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        Object obj;
        if (b > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f.b(flag, "Underflow");
        obj = a[c];
        a[c] = null;
        c = (1 + c) % a.length;
        b = -1 + b;
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    public final Object a(int i)
    {
        this;
        JVM INSTR monitorenter ;
        if (b <= i)
        {
            throw new IndexOutOfBoundsException();
        }
        break MISSING_BLOCK_LABEL_23;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        Object obj;
        int j = (i + c) % a.length;
        obj = a[j];
        this;
        JVM INSTR monitorexit ;
        return obj;
    }

    public final void a(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        if (e() && !d())
        {
            a();
        }
        boolean flag;
        if (b < a.length)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f.b(flag, "Overflow");
        a[d] = obj;
        d = (1 + d) % a.length;
        b = 1 + b;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final int b()
    {
        this;
        JVM INSTR monitorenter ;
        int i = b;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public final void c()
    {
        int i = 0;
        this;
        JVM INSTR monitorenter ;
        b = 0;
        c = 0;
        d = 0;
_L1:
        if (i >= a.length)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        a[i] = null;
        i++;
          goto _L1
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
