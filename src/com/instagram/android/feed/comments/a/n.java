// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.a;

import com.instagram.feed.comments.a.i;

// Referenced classes of package com.instagram.android.feed.comments.a:
//            a

final class n
    implements Runnable
{

    final a a;

    n(a a1)
    {
        a = a1;
        super();
    }

    public final void run()
    {
        if (a.E() != null && a.v_() != null)
        {
            a.a_(-1 + com.instagram.android.feed.comments.a.a.b(a).getCount());
        }
    }
}
