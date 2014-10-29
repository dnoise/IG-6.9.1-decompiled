// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.creation.b.a:
//            h, f

public final class g
{

    private List a;
    private h b;

    public g()
    {
        a = new ArrayList();
    }

    public final int a()
    {
        return a.size();
    }

    public final void a(f f1)
    {
        if (!a.contains(f1))
        {
            a.add(f1);
            if (b != null)
            {
                b.b();
            }
        }
    }

    public final void a(h h1)
    {
        b = h1;
    }

    public final void a(List list)
    {
        a = list;
        if (b != null)
        {
            b.b();
        }
    }

    public final boolean a(String s)
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext();)
        {
            f f1 = (f)iterator.next();
            if (s != null && s.equals(f1.b()))
            {
                return true;
            }
        }

        return false;
    }

    public final void b(f f1)
    {
        if (a.remove(f1) && b != null)
        {
            b.b();
        }
    }

    public final boolean b()
    {
        return a.isEmpty();
    }

    public final List c()
    {
        return Collections.unmodifiableList(a);
    }
}
