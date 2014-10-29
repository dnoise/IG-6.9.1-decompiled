// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.g;

import com.fasterxml.jackson.a.c.l;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.t;
import com.fasterxml.jackson.a.u;
import java.io.Serializable;

// Referenced classes of package com.fasterxml.jackson.a.g:
//            j, f, h, g

public final class e
    implements j, t, Serializable
{

    public static final l a = new l(" ");
    protected g b;
    protected g c;
    protected final u d;
    protected boolean e;
    protected transient int f;

    public e()
    {
        this(((u) (a)));
    }

    private e(e e1)
    {
        this(e1, e1.d);
    }

    private e(e e1, u u)
    {
        b = f.a;
        c = h.a;
        e = true;
        f = 0;
        b = e1.b;
        c = e1.c;
        e = e1.e;
        f = e1.f;
        d = u;
    }

    private e(u u)
    {
        b = f.a;
        c = h.a;
        e = true;
        f = 0;
        d = u;
    }

    private e b()
    {
        return new e(this);
    }

    public final Object a()
    {
        return b();
    }

    public final void a(h h1)
    {
        if (d != null)
        {
            h1.writeRaw(d);
        }
    }

    public final void a(h h1, int i)
    {
        if (!c.a())
        {
            f = -1 + f;
        }
        if (i > 0)
        {
            c.a(h1, f);
        } else
        {
            h1.writeRaw(' ');
        }
        h1.writeRaw('}');
    }

    public final void b(h h1)
    {
        h1.writeRaw('{');
        if (!c.a())
        {
            f = 1 + f;
        }
    }

    public final void b(h h1, int i)
    {
        if (!b.a())
        {
            f = -1 + f;
        }
        if (i > 0)
        {
            b.a(h1, f);
        } else
        {
            h1.writeRaw(' ');
        }
        h1.writeRaw(']');
    }

    public final void c(h h1)
    {
        h1.writeRaw(',');
        c.a(h1, f);
    }

    public final void d(h h1)
    {
        if (e)
        {
            h1.writeRaw(" : ");
            return;
        } else
        {
            h1.writeRaw(':');
            return;
        }
    }

    public final void e(h h1)
    {
        if (!b.a())
        {
            f = 1 + f;
        }
        h1.writeRaw('[');
    }

    public final void f(h h1)
    {
        h1.writeRaw(',');
        b.a(h1, f);
    }

    public final void g(h h1)
    {
        b.a(h1, f);
    }

    public final void h(h h1)
    {
        c.a(h1, f);
    }

}
