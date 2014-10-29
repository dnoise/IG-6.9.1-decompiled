// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.g.a;

import com.instagram.feed.d.e;
import com.instagram.feed.d.l;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.g.a:
//            b, c

public final class a
{

    private a()
    {
    }

    public static final a a()
    {
        return new a();
    }

    public final Iterator a(l l1)
    {
        return new b(this, l1.D().c().iterator());
    }

    public final Iterator b(l l1)
    {
        return new c(this, l1.am().iterator());
    }
}
