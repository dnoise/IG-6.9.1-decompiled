// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.d;

import com.fasterxml.jackson.a.a.a;
import com.fasterxml.jackson.a.c.b;
import com.fasterxml.jackson.a.c.d;
import com.fasterxml.jackson.a.g.e;
import com.fasterxml.jackson.a.g.p;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.i;
import com.fasterxml.jackson.a.s;
import com.fasterxml.jackson.a.u;
import com.fasterxml.jackson.a.w;

public abstract class c extends a
{

    protected static final int f[] = b.f();
    protected final d g;
    protected int h[];
    protected int i;
    protected com.fasterxml.jackson.a.c.c j;
    protected u k;

    public c(d d, int l, s s)
    {
        super(l, s);
        h = f;
        k = e.a;
        g = d;
        if (isEnabled(i.g))
        {
            setHighestNonEscapedChar(127);
        }
    }

    public com.fasterxml.jackson.a.c.c getCharacterEscapes()
    {
        return j;
    }

    public int getHighestEscapedChar()
    {
        return i;
    }

    public h setCharacterEscapes(com.fasterxml.jackson.a.c.c c1)
    {
        j = c1;
        if (c1 == null)
        {
            h = f;
            return this;
        } else
        {
            h = c1.a();
            return this;
        }
    }

    public h setHighestNonEscapedChar(int l)
    {
        if (l < 0)
        {
            l = 0;
        }
        i = l;
        return this;
    }

    public h setRootValueSeparator(u u)
    {
        k = u;
        return this;
    }

    public w version()
    {
        return p.a(getClass());
    }

    public final void writeStringField(String s, String s1)
    {
        writeFieldName(s);
        writeString(s1);
    }

}
