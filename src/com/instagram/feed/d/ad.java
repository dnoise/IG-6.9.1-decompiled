// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.instagram.feed.d:
//            l

public final class ad
{

    private static final ad a = new ad();
    private final ConcurrentHashMap b = new ConcurrentHashMap();

    public ad()
    {
    }

    public static ad a()
    {
        return a;
    }

    public final l a(l l1)
    {
        return (l)b.putIfAbsent(l1.d(), l1);
    }

    public final boolean a(String s)
    {
        return b.containsKey(s);
    }

    public final l b(l l1)
    {
        l l2 = (l)b.putIfAbsent(l1.d(), l1);
        if (l2 != null)
        {
            l2.a(l1);
            l2.a(true);
            return l2;
        } else
        {
            return l1;
        }
    }

    public final l b(String s)
    {
        if (s == null)
        {
            return null;
        } else
        {
            return (l)b.get(s);
        }
    }

    public final l c(String s)
    {
        return (l)b.remove(s);
    }

}
