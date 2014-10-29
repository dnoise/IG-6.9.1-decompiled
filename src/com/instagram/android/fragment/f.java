// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.instagram.android.feed.a.a;

// Referenced classes of package com.instagram.android.fragment:
//            a

final class f
    implements Runnable
{

    final com.instagram.android.fragment.a a;

    f(com.instagram.android.fragment.a a1)
    {
        a = a1;
        super();
    }

    public final void run()
    {
        if (a.E() != null)
        {
            a.W().onScroll(a.v_(), 0, 0, 0);
        }
    }
}
