// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.facebook:
//            j, c, k, b, 
//            a, s, ag, n

final class m extends j
{

    final c b;
    private transient ag c;

    m(c c1)
    {
        b = c1;
        super(c1);
    }

    final void a(k k1, Bundle bundle)
    {
        c = null;
        com.facebook.c.a(b);
        if (bundle != null)
        {
            ArrayList arraylist = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            List list = k1.b();
            if (arraylist != null && (list == null || arraylist.containsAll(list)))
            {
                s s2 = s.a(com.facebook.a.a(bundle, b.d));
                b.a(s2);
                return;
            }
            ArrayList arraylist1 = new ArrayList();
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                String s1 = (String)iterator.next();
                if (!arraylist.contains(s1))
                {
                    arraylist1.add(s1);
                }
            } while (true);
            k1.a(arraylist1);
        }
        b.b();
    }

    final boolean a(k k1)
    {
        c = new ag(b.c, k1.f());
        if (!c.a())
        {
            return false;
        } else
        {
            com.facebook.c.b(b);
            n n1 = new n(this, k1);
            c.a(n1);
            return true;
        }
    }

    final void c()
    {
        if (c != null)
        {
            c.b();
            c = null;
        }
    }
}
