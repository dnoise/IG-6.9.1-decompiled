// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.instagram.feed.d:
//            b

public final class e
{

    private final Set a;
    private final List b;

    public e()
    {
        a = new HashSet();
        b = new ArrayList();
    }

    public e(List list)
    {
        b = list;
        a = new HashSet();
        Iterator iterator = b.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            b b1 = (b)iterator.next();
            if (!a.add(b1.b()))
            {
                iterator.remove();
            }
        } while (true);
        Collections.sort(b);
    }

    private boolean a(b b1, boolean flag)
    {
        String s = b1.b();
        if (a.contains(s))
        {
            return false;
        }
        a.add(s);
        b.add(b1);
        if (flag)
        {
            Collections.sort(b);
        }
        return true;
    }

    public final int a()
    {
        return b.size();
    }

    public final void a(b b1, String s)
    {
        if (a.contains(b1.b()))
        {
            a.remove(b1.b());
            b1.a = s;
            a.add(s);
            Collections.sort(b);
        }
    }

    public final boolean a(b b1)
    {
        return a(b1, true);
    }

    public final boolean a(e e1)
    {
        Iterator iterator = e1.c().iterator();
        boolean flag = false;
        while (iterator.hasNext()) 
        {
            boolean flag1;
            if (a((b)iterator.next(), false))
            {
                flag1 = true;
            } else
            {
                flag1 = flag;
            }
            flag = flag1;
        }
        Collections.sort(b);
        return flag;
    }

    public final boolean a(String s)
    {
        if (!a.contains(s))
        {
            return false;
        }
        a.remove(s);
        for (Iterator iterator = b.iterator(); iterator.hasNext();)
        {
            b b1 = (b)iterator.next();
            if (b1.b(s))
            {
                return b.remove(b1);
            }
        }

        return false;
    }

    public final void b()
    {
        a.clear();
        b.clear();
    }

    public final List c()
    {
        return b;
    }

    public final long d()
    {
        if (b.size() == 0)
        {
            return 0L;
        } else
        {
            return ((b)b.get(-1 + b.size())).c();
        }
    }
}
