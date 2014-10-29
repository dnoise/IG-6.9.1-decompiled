// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.a;

import android.support.v4.app.k;
import android.widget.ListAdapter;
import com.instagram.android.feed.comments.ui.a;

// Referenced classes of package com.instagram.android.feed.comments.a:
//            a

final class q
    implements a
{

    final com.instagram.android.feed.comments.a.a a;

    q(com.instagram.android.feed.comments.a.a a1)
    {
        a = a1;
        super();
    }

    public final void a()
    {
        if (a.c().getCount() == 0)
        {
            a.l().onBackPressed();
        }
    }
}
