// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.k;

import com.fasterxml.jackson.a.h;

final class c
{

    private final long a;
    private final long b;
    private final long c;
    private final String d;

    private c(long l, long l1, long l2, String s)
    {
        a = l;
        b = l1;
        c = l2;
        d = s;
    }

    c(long l, long l1, long l2, String s, 
            byte byte0)
    {
        this(l, l1, l2, s);
    }

    static long a(c c1)
    {
        return c1.a;
    }

    static long b(c c1)
    {
        return c1.b;
    }

    static long c(c c1)
    {
        return c1.c;
    }

    static String d(c c1)
    {
        return c1.d;
    }

    public final void a(h h1)
    {
        h1.writeStartObject();
        h1.writeStringField("network_mode", d);
        h1.writeNumberField("bytes_received", a);
        h1.writeNumberField("bytes_transmitted", b);
        h1.writeNumberField("online_duration_in_s", c / 1000L);
        h1.writeEndObject();
    }
}
