// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package com.instagram.common.u:
//            b, a

final class h
    implements Runnable
{

    final b a;

    h(b b1)
    {
        a = b1;
        super();
    }

    public final void run()
    {
        for (Iterator iterator = b.a(a).values().iterator(); iterator.hasNext(); ((a)iterator.next()).a().c()) { }
    }
}
