// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.userservice.b;

import com.instagram.api.k.a.d;
import com.instagram.user.userservice.c;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.instagram.user.userservice.b:
//            c

public final class b extends d
    implements c
{

    List a;
    long b;
    private long c;
    private Set d;

    public b()
    {
        c = -1L;
    }

    public final Collection a()
    {
        return d;
    }

    public final long b()
    {
        return c;
    }

    final b c()
    {
        c = System.currentTimeMillis() + 1000L * b;
        if (a != null)
        {
            d = new LinkedHashSet(a.size());
            Iterator iterator = a.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                com.instagram.user.userservice.b.c c1 = (com.instagram.user.userservice.b.c)iterator.next();
                if (c1.b != null)
                {
                    d.addAll(c1.b);
                }
            } while (true);
            a.clear();
            return this;
        } else
        {
            d = Collections.EMPTY_SET;
            return this;
        }
    }
}
