// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.instagram.android.feed.a.n;
import com.instagram.common.j.d;
import com.instagram.user.c.a;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.fragment:
//            fo

final class fq
    implements d
{

    final fo a;

    fq(fo fo1)
    {
        a = fo1;
        super();
    }

    private void a()
    {
        ((n)a.W()).notifyDataSetChanged();
    }

    private boolean a(com.instagram.user.c.d d1)
    {
label0:
        {
            if (d1.a.equals(fo.b(a)))
            {
                return true;
            }
            if (fo.c(a) == null)
            {
                break label0;
            }
            Iterator iterator = fo.c(a).iterator();
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
