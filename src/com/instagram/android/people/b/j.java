// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.b;

import android.widget.ListView;
import com.instagram.android.k.b.e;
import com.instagram.android.people.widget.d;
import com.instagram.model.people.b;
import com.instagram.user.c.a;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.people.b:
//            h

final class j extends com.instagram.common.a.a.j
{

    final h a;

    j(h h1)
    {
        a = h1;
        super();
    }

    private void a(e e1)
    {
        super.a(e1);
        List list = e1.b();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            a a1 = (a)iterator.next();
            if (h.f(a).a(a1))
            {
                iterator.remove();
            }
        } while (true);
        com.instagram.android.people.b.h.b(a).d(list);
        h.g(a).setSelection(0);
    }

    public final void a()
    {
        super.a();
        a.a = true;
        h.h(a);
    }

    public final void a(com.instagram.common.l.a.e e1)
    {
        super.a(e1);
        com.instagram.android.people.b.h.a(a, true);
        a.a = false;
        com.instagram.android.people.b.h.e(a);
    }

    public final volatile void a(Object obj)
    {
        a((e)obj);
    }
}
