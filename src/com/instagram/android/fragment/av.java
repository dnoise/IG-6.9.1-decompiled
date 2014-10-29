// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.instagram.android.feed.e.f;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package com.instagram.android.fragment:
//            au, ar

final class av
    implements Runnable
{

    final ar a;
    private final Map b;
    private int c;

    public av(ar ar, Map map, int i)
    {
        a = ar;
        super();
        b = map;
        c = i;
    }

    public final void run()
    {
        au au1;
        for (Iterator iterator = b.values().iterator(); iterator.hasNext(); f.a(a, "explore_item_impression", au1.a, au1.b, c))
        {
            au1 = (au)iterator.next();
        }

    }
}
