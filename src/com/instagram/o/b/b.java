// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o.b;

import com.instagram.common.a.a.j;
import com.instagram.common.s.a;
import com.instagram.common.y.e;

// Referenced classes of package com.instagram.o.b:
//            a, j, k, f, 
//            e

final class b extends j
{

    final int a;
    final com.instagram.o.b.a b;

    b(com.instagram.o.b.a a1, int i)
    {
        b = a1;
        a = i;
        super();
    }

    private void a(com.instagram.o.b.j j1)
    {
        com.instagram.o.b.a.d();
        int i = com.instagram.common.s.a.a(com.instagram.o.b.a.a(b));
        f f1;
        int l;
        String s;
        if (com.instagram.common.s.b.c())
        {
            f1 = j1.a.b;
        } else
        {
            f1 = j1.a.a;
        }
        l = f1.b().intValue();
        s = f1.a();
        com.instagram.o.b.a.d();
        Integer.valueOf(i);
        Integer.valueOf(l);
        if (i < l && !e.c(s))
        {
            com.instagram.o.b.a.a(b, s);
        } else
        if (a == e.b)
        {
            com.instagram.o.b.a.b(b);
            return;
        }
    }

    public final volatile void a(Object obj)
    {
        a((com.instagram.o.b.j)obj);
    }

    public final void b(com.instagram.common.l.a.e e1)
    {
        com.instagram.o.b.a.d();
    }
}
