// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.c;

import android.os.Handler;
import com.instagram.user.c.a;
import com.instagram.user.follow.n;
import java.util.Iterator;

// Referenced classes of package com.instagram.android.k.c:
//            t, a, s

final class r extends t
{

    final com.instagram.android.k.c.a a;

    private r(com.instagram.android.k.c.a a1)
    {
        a = a1;
        super(a1, (byte)0);
    }

    r(com.instagram.android.k.c.a a1, byte byte0)
    {
        this(a1);
    }

    private void a(Iterable iterable)
    {
        a a1;
        for (Iterator iterator = iterable.iterator(); iterator.hasNext(); n.a(a1))
        {
            a1 = (a)iterator.next();
            n.a();
        }

        if (com.instagram.android.k.c.a.h(a))
        {
            com.instagram.android.k.c.a.e(a).post(new s(this));
        }
    }

    protected final volatile void a(Object obj)
    {
        a((Iterable)obj);
    }
}
