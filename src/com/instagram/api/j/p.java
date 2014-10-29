// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.j;

import android.content.Context;
import com.facebook.az;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.common.h.a;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.instagram.api.j:
//            j

public final class p extends j
{

    protected Context b;
    Object c;
    private String d;
    private String e;
    private String f;
    private boolean g;
    private Map h;
    private boolean i;
    private String j;
    private Collection k;

    protected p(Context context)
    {
        g = true;
        h = new HashMap();
        b = context;
    }

    private p(String s)
    {
        g = true;
        h = new HashMap();
        e = s;
    }

    public static p d(String s)
    {
        if (s == null)
        {
            s = com.instagram.common.h.a.a().getString(az.network_error);
        }
        return new p(s);
    }

    public final Object a(String s, Class class1)
    {
        return null;
    }

    public final String a()
    {
        return d;
    }

    public final void a(Object obj)
    {
        c = obj;
    }

    public final void a(String s)
    {
        e = s;
    }

    public final void a(String s, String s1)
    {
        h.put(s, s1);
    }

    public final void a(Collection collection)
    {
        k = collection;
    }

    public final void a(boolean flag)
    {
        i = flag;
    }

    public final String b()
    {
        return j;
    }

    public final void b(boolean flag)
    {
        g = flag;
    }

    public final boolean b(String s)
    {
        return h.containsKey(s);
    }

    public final String c(String s)
    {
        return (String)h.get(s);
    }

    public final void e(String s)
    {
        d = s;
    }

    public final void f(String s)
    {
        f = s;
    }

    public final boolean g()
    {
        return e == null && a().equalsIgnoreCase("ok");
    }

    public final Object h()
    {
        return c;
    }

    public final String i()
    {
        return e;
    }

    public final boolean j()
    {
        return i;
    }

    public final Collection k()
    {
        return k;
    }

    public final JsonNode l()
    {
        return null;
    }

    public final String m()
    {
        return f;
    }

    public final boolean n()
    {
        return g;
    }
}
