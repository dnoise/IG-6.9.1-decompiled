// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.g;

import com.fasterxml.jackson.a.h;

// Referenced classes of package com.instagram.api.g:
//            i

public final class d
{

    private final String a;
    private int b;
    private int c;
    private long d;
    private long e;
    private long f;
    private long g;
    private long h;
    private String i;

    public d(String s)
    {
        a = s;
        b = 0;
        c = 0;
        d = 0L;
        e = 0L;
        f = 0L;
        g = 0L;
        h = 0L;
        i = null;
    }

    private long a()
    {
        return a(d);
    }

    private long a(long l)
    {
        if (b == 0)
        {
            return 0L;
        } else
        {
            return l / (long)b;
        }
    }

    private long b()
    {
        return a(e);
    }

    private long c()
    {
        return a(f);
    }

    public final void a(h h1)
    {
        h1.writeStartObject();
        if (h > 0L)
        {
            h1.writeNumberField("bytes_down", h);
        }
        if (g > 0L)
        {
            h1.writeNumberField("bytes_up", g);
        }
        if (a() > 0L)
        {
            h1.writeNumberField("upload_duration_ms", a());
        }
        if (b() > 0L)
        {
            h1.writeNumberField("server_latency_ms", b());
        }
        if (c() > 0L)
        {
            h1.writeNumberField("download_duration_ms", c());
        }
        if (c > 0)
        {
            h1.writeNumberField("failure_count", c);
        }
        if (i != null)
        {
            h1.writeStringField("last_exception", i);
        }
        h1.writeNumberField("hit_count", b);
        h1.writeStringField("key", a);
        h1.writeEndObject();
    }

    public final void a(i j)
    {
        d = d + j.l();
        e = e + j.m();
        f = f + j.n();
        g = g + j.i();
        h = h + j.j();
        b = 1 + b;
    }

    public final void a(Exception exception)
    {
        c = 1 + c;
        i = exception.getMessage();
    }
}
