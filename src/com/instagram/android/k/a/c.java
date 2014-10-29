// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.a;

import com.instagram.common.j.d;
import com.instagram.user.c.a;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.instagram.android.k.a:
//            a, d

final class c
    implements d
{

    final com.instagram.android.k.a.a a;

    c(com.instagram.android.k.a.a a1)
    {
        a = a1;
        super();
    }

    private void a()
    {
        com.instagram.android.k.a.a.b(a).removeMessages(0);
        com.instagram.android.k.a.a.b(a).sendEmptyMessageDelayed(0, 300L);
    }

    private boolean a(com.instagram.user.c.d d1)
    {
label0:
        {
            if (com.instagram.android.k.a.a.a(a).contains(d1.a))
            {
                return true;
            }
            if (a.j == null)
            {
                break label0;
            }
            Iterator iterator = a.a(a.j).iterator();
            a a1;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                a1 = (a)iterator.next();
            } while (!d1.a.equals(a1.g()));
            return true;
        }
        return false;
    }

    public final volatile boolean a(com.instagram.common.j.a a1)
    {
        return a((com.instagram.user.c.d)a1);
    }

    public final void b(com.instagram.common.j.a a1)
    {
        a();
    }
}
