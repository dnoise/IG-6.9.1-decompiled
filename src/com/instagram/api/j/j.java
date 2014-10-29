// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.j;

import ch.boye.httpclientandroidlib.StatusLine;
import com.fasterxml.jackson.databind.JsonNode;
import java.util.Collection;

// Referenced classes of package com.instagram.api.j:
//            k

public abstract class j
{

    protected StatusLine a;
    private boolean b;

    public j()
    {
    }

    public abstract Object a(String s, Class class1);

    public abstract String a();

    public final void a(StatusLine statusline)
    {
        a = statusline;
    }

    public abstract void a(Object obj);

    public abstract void a(String s);

    public abstract void a(boolean flag);

    public abstract String b();

    public abstract boolean b(String s);

    public final StatusLine c()
    {
        return a;
    }

    public abstract String c(String s);

    public final Integer d()
    {
        if (c() != null)
        {
            return Integer.valueOf(c().getStatusCode());
        } else
        {
            return null;
        }
    }

    public final int e()
    {
        if (g())
        {
            return k.b;
        }
        Integer integer = d();
        if (integer != null)
        {
            if (integer.intValue() == 404)
            {
                return k.c;
            } else
            {
                return k.d;
            }
        }
        if (b)
        {
            return k.d;
        } else
        {
            return k.a;
        }
    }

    public final void f()
    {
        boolean flag;
        if (e() == k.a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }

    public abstract boolean g();

    public abstract Object h();

    public abstract String i();

    public abstract boolean j();

    public abstract Collection k();

    public abstract JsonNode l();

    public abstract String m();

    public abstract boolean n();
}
