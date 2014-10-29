// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.a;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.a:
//            e, f

public final class c
{

    List a;

    public c()
    {
        a = new LinkedList();
    }

    private e a(long l)
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext();)
        {
            e e1 = (e)iterator.next();
            if (e1.k().g() == l)
            {
                return e1;
            }
        }

        return null;
    }

    private long b()
    {
        Iterator iterator = a.iterator();
        long l = 0L;
        while (iterator.hasNext()) 
        {
            e e1 = (e)iterator.next();
            long l1;
            if (l < e1.k().g())
            {
                l1 = e1.k().g();
            } else
            {
                l1 = l;
            }
            l = l1;
        }
        return l + 1L;
    }

    public final List a()
    {
        return a;
    }

    public final void a(e e1)
    {
        if (a(e1.k().g()) != null)
        {
            e1.k().b(b());
        }
        a.add(e1);
    }

    public final String toString()
    {
        Iterator iterator = a.iterator();
        String s;
        e e1;
        for (s = "Movie{ "; iterator.hasNext(); s = (new StringBuilder()).append(s).append("track_").append(e1.k().g()).append(" (").append(e1.l()).append(") ").toString())
        {
            e1 = (e)iterator.next();
        }

        return (new StringBuilder()).append(s).append('}').toString();
    }
}
