// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.g;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.t;
import java.io.Serializable;

public final class n
    implements t, Serializable
{

    protected String a;

    public n()
    {
        this(" ");
    }

    private n(String s)
    {
        a = " ";
        a = s;
    }

    public final void a(h h1)
    {
        if (a != null)
        {
            h1.writeRaw(a);
        }
    }

    public final void a(h h1, int i)
    {
        h1.writeRaw('}');
    }

    public final void b(h h1)
    {
        h1.writeRaw('{');
    }

    public final void b(h h1, int i)
    {
        h1.writeRaw(']');
    }

    public final void c(h h1)
    {
        h1.writeRaw(',');
    }

    public final void d(h h1)
    {
        h1.writeRaw(':');
    }

    public final void e(h h1)
    {
        h1.writeRaw('[');
    }

    public final void f(h h1)
    {
        h1.writeRaw(',');
    }

    public final void g(h h1)
    {
    }

    public final void h(h h1)
    {
    }
}
