// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.i;

import android.view.ViewGroup;

// Referenced classes of package com.instagram.feed.i:
//            a

final class b
    implements Runnable
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public final void run()
    {
        if (com.instagram.feed.i.a.a(a).getWindowToken() != null)
        {
            com.instagram.feed.i.a.b(a);
            com.instagram.feed.i.a.c(a);
        }
    }
}
