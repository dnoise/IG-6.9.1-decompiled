// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.b;

import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.h;
import com.instagram.common.a.c.d;
import java.io.IOException;
import java.io.StringWriter;

public final class a
    implements d
{

    h a;
    StringWriter b;

    public a()
    {
        this(com.instagram.common.n.a.a);
    }

    private a(e e1)
    {
        b = new StringWriter();
        try
        {
            a = e1.createGenerator(b);
            a.writeStartObject();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public final h a()
    {
        return a;
    }

    public final void a(String s)
    {
        try
        {
            a.writeObjectFieldStart(s);
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public final void a(String s, double d1)
    {
        try
        {
            a.writeNumberField(s, d1);
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public final void a(String s, int i)
    {
        try
        {
            a.writeNumberField(s, i);
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public final void a(String s, String s1)
    {
        h h1;
        try
        {
            h1 = a;
        }
        catch (IOException ioexception)
        {
            return;
        }
        if (s1 == null)
        {
            s1 = "";
        }
        h1.writeStringField(s, s1);
        return;
    }

    public final void b()
    {
        try
        {
            a.writeStartObject();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public final void b(String s)
    {
        try
        {
            a.writeArrayFieldStart(s);
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public final void c()
    {
        try
        {
            a.writeEndObject();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public final void d()
    {
        try
        {
            a.writeEndArray();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public final String toString()
    {
        try
        {
            a.writeEndObject();
            a.close();
        }
        catch (IOException ioexception) { }
        return b.toString();
    }
}
