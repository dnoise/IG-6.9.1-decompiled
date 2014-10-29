// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import com.fasterxml.jackson.a.h;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.common.analytics:
//            t, s, u, v, 
//            x, r, w

final class q
{

    private final Map a = new LinkedHashMap();

    q()
    {
    }

    public final String a(String s1)
    {
        StringWriter stringwriter = new StringWriter();
        java.util.Map.Entry entry;
        for (Iterator iterator = a.entrySet().iterator(); iterator.hasNext(); stringwriter.append(s1).append((CharSequence)entry.getKey()).append(" = ").append(((t)entry.getValue()).toString()).append("\n"))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        return stringwriter.toString();
    }

    final void a(h h1)
    {
        h1.writeStartObject();
        java.util.Map.Entry entry;
        for (Iterator iterator = a.entrySet().iterator(); iterator.hasNext(); ((t)entry.getValue()).a(h1))
        {
            entry = (java.util.Map.Entry)iterator.next();
            h1.writeFieldName((String)entry.getKey());
        }

        h1.writeEndObject();
    }

    final void a(String s1, double d)
    {
        a.put(s1, new s(d, (byte)0));
    }

    final void a(String s1, int i)
    {
        a.put(s1, new u(i, (byte)0));
    }

    final void a(String s1, long l)
    {
        a.put(s1, new v(l, (byte)0));
    }

    final void a(String s1, String s2)
    {
        a.put(s1, new x(s2, (byte)0));
    }

    final void a(String s1, boolean flag)
    {
        a.put(s1, new r(flag, (byte)0));
    }

    final void a(String s1, String as[])
    {
        a.put(s1, new w(as, (byte)0));
    }

    final boolean a()
    {
        return a.isEmpty();
    }

    final String b(String s1)
    {
        return x.a((x)a.get(s1));
    }
}
