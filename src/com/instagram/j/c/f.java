// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.c;

import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;
import com.instagram.j.d.a;
import com.instagram.j.d.c;
import com.instagram.ui.d.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.j.c:
//            e, g

final class f extends j
{

    final com.instagram.j.c.e a;

    private f(com.instagram.j.c.e e1)
    {
        a = e1;
        super();
    }

    f(com.instagram.j.c.e e1, byte byte0)
    {
        this(e1);
    }

    private void a(a a1)
    {
        com.instagram.j.c.e.a(a, false);
        ArrayList arraylist = new ArrayList();
        Iterator iterator = a1.b().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            c c1 = (c)iterator.next();
            if (c1.a() != null)
            {
                arraylist.add(c1);
            }
        } while (true);
        com.instagram.j.c.e.a(a).a(arraylist);
        com.instagram.j.c.e.b(a);
        a.W();
    }

    public final void a()
    {
        super.a();
        com.instagram.j.c.e.b(a, true);
        if (!com.instagram.j.c.e.c(a))
        {
            com.instagram.ui.d.b.a(true, a.E());
        }
        ((g)a.r()).a(a);
    }

    public final void a(e e1)
    {
        super.a(e1);
        com.instagram.j.c.e.b(a, false);
        e.d(a);
        com.instagram.ui.d.b.a(false, a.E());
        ((g)a.r()).a(a);
    }

    public final volatile void a(Object obj)
    {
        a((a)obj);
    }

    public final void b(e e1)
    {
        super.b(e1);
        com.instagram.j.c.e.a(a, true);
        com.instagram.j.c.e.b(a);
        ((g)a.r()).b(a);
    }
}
