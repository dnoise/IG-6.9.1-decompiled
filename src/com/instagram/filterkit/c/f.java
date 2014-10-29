// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.c;

import com.instagram.filterkit.e.c;

// Referenced classes of package com.instagram.filterkit.c:
//            e

final class f
    implements Runnable
{

    final c a;
    final e b;

    f(e e1, c c)
    {
        b = e1;
        a = c;
        super();
    }

    public final void run()
    {
        e.a(b, a);
    }
}
