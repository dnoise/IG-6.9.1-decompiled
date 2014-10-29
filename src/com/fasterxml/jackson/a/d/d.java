// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.d;

import com.fasterxml.jackson.a.c.b;
import com.fasterxml.jackson.a.j;
import com.fasterxml.jackson.a.q;

public final class d extends q
{

    protected final d a;
    protected int b;
    protected int c;
    protected String d;
    protected d e;

    private d(d d1, int i, int k, int l)
    {
        e = null;
        _type = i;
        a = d1;
        b = k;
        c = l;
        _index = -1;
    }

    public static d a()
    {
        return new d(null, 0, -1, -1);
    }

    private void a(int i, int k, int l)
    {
        _type = i;
        _index = -1;
        b = k;
        c = l;
        d = null;
    }

    public static d b()
    {
        return new d(null, 0, 1, 0);
    }

    public final d a(int i, int k)
    {
        d d1 = e;
        if (d1 == null)
        {
            d d2 = new d(this, 1, i, k);
            e = d2;
            return d2;
        } else
        {
            d1.a(1, i, k);
            return d1;
        }
    }

    public final j a(Object obj)
    {
        return new j(obj, -1L, b, c);
    }

    public final void a(String s)
    {
        d = s;
    }

    public final d b(int i, int k)
    {
        d d1 = e;
        if (d1 == null)
        {
            d d2 = new d(this, 2, i, k);
            e = d2;
            return d2;
        } else
        {
            d1.a(2, i, k);
            return d1;
        }
    }

    public final d c()
    {
        return a;
    }

    public final boolean d()
    {
        int i = 1 + _index;
        _index = i;
        return _type != 0 && i > 0;
    }

    public final String getCurrentName()
    {
        return d;
    }

    public final q getParent()
    {
        return c();
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(64);
        _type;
        JVM INSTR tableswitch 0 2: default 40
    //                   0 45
    //                   1 55
    //                   2 81;
           goto _L1 _L2 _L3 _L4
_L1:
        return stringbuilder.toString();
_L2:
        stringbuilder.append("/");
        continue; /* Loop/switch isn't completed */
_L3:
        stringbuilder.append('[');
        stringbuilder.append(getCurrentIndex());
        stringbuilder.append(']');
        continue; /* Loop/switch isn't completed */
_L4:
        stringbuilder.append('{');
        if (d != null)
        {
            stringbuilder.append('"');
            com.fasterxml.jackson.a.c.b.a(stringbuilder, d);
            stringbuilder.append('"');
        } else
        {
            stringbuilder.append('?');
        }
        stringbuilder.append('}');
        if (true) goto _L1; else goto _L5
_L5:
    }
}
