// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.c;

import com.fasterxml.jackson.a.g.a;
import com.fasterxml.jackson.a.g.o;
import java.io.Writer;

public final class k extends Writer
{

    protected final o a;

    public k(a a1)
    {
        a = new o(a1);
    }

    public final String a()
    {
        String s = a.e();
        a.a();
        return s;
    }

    public final Writer append(char c)
    {
        write(c);
        return this;
    }

    public final Writer append(CharSequence charsequence)
    {
        String s = charsequence.toString();
        a.a(s, 0, s.length());
        return this;
    }

    public final Writer append(CharSequence charsequence, int i, int j)
    {
        String s = charsequence.subSequence(i, j).toString();
        a.a(s, 0, s.length());
        return this;
    }

    public final volatile Appendable append(char c)
    {
        return append(c);
    }

    public final volatile Appendable append(CharSequence charsequence)
    {
        return append(charsequence);
    }

    public final volatile Appendable append(CharSequence charsequence, int i, int j)
    {
        return append(charsequence, i, j);
    }

    public final void close()
    {
    }

    public final void flush()
    {
    }

    public final void write(int i)
    {
        a.a((char)i);
    }

    public final void write(String s)
    {
        a.a(s, 0, s.length());
    }

    public final void write(String s, int i, int j)
    {
        a.a(s, i, j);
    }

    public final void write(char ac[])
    {
        a.c(ac, 0, ac.length);
    }

    public final void write(char ac[], int i, int j)
    {
        a.c(ac, i, j);
    }
}
