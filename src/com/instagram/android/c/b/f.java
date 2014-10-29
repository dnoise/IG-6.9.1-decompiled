// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.b;

import com.fasterxml.jackson.a.l;
import com.instagram.common.a.a.q;
import com.instagram.common.y.e;
import com.instagram.share.b.h;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.c.b:
//            i, h, g, e

final class f extends q
{

    final com.instagram.android.c.b.e a;

    f(com.instagram.android.c.b.e e1)
    {
        a = e1;
        super();
    }

    private com.instagram.android.c.b.h b(l l)
    {
        com.instagram.android.c.b.h h1 = i.a(l);
        List list = h1.a();
        if (list != null)
        {
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                if (e.c(((h)iterator.next()).c()))
                {
                    iterator.remove();
                }
            } while (true);
            Collections.sort(list, new g(this));
        }
        return h1;
    }

    public final Object a(l l)
    {
        return b(l);
    }
}
