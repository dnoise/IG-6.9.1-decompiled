// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.e;

import com.instagram.android.directshare.c.x;
import com.instagram.api.j.a;
import com.instagram.ui.d.b;
import java.util.List;

// Referenced classes of package com.instagram.android.directshare.e:
//            b

final class n extends a
{

    final com.instagram.android.directshare.e.b a;

    private n(com.instagram.android.directshare.e.b b1)
    {
        a = b1;
        super();
    }

    n(com.instagram.android.directshare.e.b b1, byte byte0)
    {
        this(b1);
    }

    private static void a(List list)
    {
        x.a(list);
        com.instagram.android.directshare.a.a.b(list);
    }

    public final void a()
    {
        com.instagram.ui.d.b.a(true, a.E());
    }

    protected final volatile void a(Object obj)
    {
        a((List)obj);
    }

    public final void b()
    {
        com.instagram.ui.d.b.a(false, a.E());
    }
}
