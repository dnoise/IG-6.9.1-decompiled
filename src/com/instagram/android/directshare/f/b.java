// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.f;

import com.instagram.common.a.a.j;
import com.instagram.f.a.a.e;
import java.util.HashMap;

// Referenced classes of package com.instagram.android.directshare.f:
//            c, a

final class b extends j
{

    final a a;
    private final long b;

    public b(a a1, long l)
    {
        a = a1;
        super();
        b = l;
    }

    private void a(e e1)
    {
        super.a(e1);
        c.a(e1.b());
    }

    public final void a()
    {
        super.a();
        c.a(b);
    }

    public final void a(com.instagram.common.l.a.e e1)
    {
        super.a(e1);
        com.instagram.android.directshare.f.a.a(a).remove(Long.valueOf(b));
    }

    public final volatile void a(Object obj)
    {
        a((e)obj);
    }
}
