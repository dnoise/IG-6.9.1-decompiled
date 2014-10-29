// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video;

import com.instagram.creation.video.b.c;
import com.instagram.creation.video.i.a;
import com.instagram.creation.video.i.d;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.creation.video:
//            a, c

final class b
    implements c
{

    final com.instagram.creation.video.a a;

    b(com.instagram.creation.video.a a1)
    {
        a = a1;
        super();
    }

    private void a(a a1)
    {
        for (Iterator iterator = com.instagram.creation.video.a.a(a).iterator(); iterator.hasNext(); ((com.instagram.creation.video.c)iterator.next()).a(a1)) { }
    }

    private void b(a a1)
    {
        if (com.instagram.creation.video.a.b(a).b() == 0 && com.instagram.creation.video.a.c(a))
        {
            a.a(false);
        }
        for (Iterator iterator = com.instagram.creation.video.a.a(a).iterator(); iterator.hasNext(); ((com.instagram.creation.video.c)iterator.next()).b(a1)) { }
    }

    public final void a(Object obj)
    {
        b((a)obj);
    }

    public final void b(Object obj)
    {
        a((a)obj);
    }
}
