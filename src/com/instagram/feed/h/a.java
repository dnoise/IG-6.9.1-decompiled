// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.h;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package com.instagram.feed.h:
//            b, c, d, e

public final class a
{

    private final e a = new b(this);
    private final e b = new c(this);
    private final d c;
    private final Map d = new HashMap();
    private final Map e = new HashMap();

    public a(d d1)
    {
        c = d1;
    }

    static Map a(a a1)
    {
        return a1.d;
    }

    static boolean a(Map map, String s)
    {
        return b(map, s);
    }

    static d b(a a1)
    {
        return a1.c;
    }

    private static boolean b(Map map, String s)
    {
        boolean flag;
        if (!map.containsKey(s))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        map.put(s, null);
        return flag;
    }

    static Map c(a a1)
    {
        return a1.e;
    }

    public final void a()
    {
        c.a(a);
        if (!d.isEmpty())
        {
            Iterator iterator1 = d.values().iterator();
            do
            {
                if (!iterator1.hasNext())
                {
                    break;
                }
                Object obj1 = iterator1.next();
                if (obj1 != null)
                {
                    c.b(obj1);
                    iterator1.remove();
                }
            } while (true);
        }
        if (!e.isEmpty())
        {
            Iterator iterator = e.values().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Object obj = iterator.next();
                if (obj != null)
                {
                    c.a(obj);
                    iterator.remove();
                }
            } while (true);
        }
        c.a(b);
    }
}
