// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.b;

import java.util.Iterator;
import java.util.LinkedList;

// Referenced classes of package com.instagram.creation.video.b:
//            a, c

final class b
    implements Iterator
{

    Iterator a;
    final a b;
    private Object c;

    b(a a1)
    {
        b = a1;
        super();
        a = com.instagram.creation.video.b.a.a(b).iterator();
    }

    public final boolean hasNext()
    {
        return a.hasNext();
    }

    public final Object next()
    {
        c = a.next();
        return c;
    }

    public final void remove()
    {
        a.remove();
        if (com.instagram.creation.video.b.a.b(b) != null)
        {
            com.instagram.creation.video.b.a.b(b).a(c);
        }
    }
}
