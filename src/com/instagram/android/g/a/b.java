// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.g.a;

import com.instagram.user.c.a;
import java.util.Iterator;

// Referenced classes of package com.instagram.android.g.a:
//            a

final class b
    implements Iterator
{

    final Iterator a;
    final com.instagram.android.g.a.a b;

    b(com.instagram.android.g.a.a a1, Iterator iterator)
    {
        b = a1;
        a = iterator;
        super();
    }

    private a a()
    {
        return ((com.instagram.feed.d.b)a.next()).g();
    }

    public final boolean hasNext()
    {
        return a.hasNext();
    }

    public final Object next()
    {
        return a();
    }

    public final void remove()
    {
        throw new IllegalAccessError("cannot modify via this iterator");
    }
}
