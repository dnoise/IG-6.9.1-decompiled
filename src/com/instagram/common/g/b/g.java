// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.b;

import java.util.concurrent.ConcurrentLinkedQueue;

// Referenced classes of package com.instagram.common.g.b:
//            f

final class g
{

    private final ConcurrentLinkedQueue a = new ConcurrentLinkedQueue();
    private final int b = 0x10000;

    public g()
    {
    }

    public final f a()
    {
        f f1 = (f)a.poll();
        if (f1 == null)
        {
            f1 = new f(this, b);
        }
        return f1;
    }

    final void a(f f1)
    {
        a.add(f1);
    }
}
