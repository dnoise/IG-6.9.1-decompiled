// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a;

import android.view.View;
import com.facebook.av;
import com.instagram.android.widget.MediaActionsView;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.android.feed.a:
//            a

final class e
    implements Runnable
{

    final l a;
    final a b;

    e(a a1, l l1)
    {
        b = a1;
        a = l1;
        super();
    }

    public final void run()
    {
        View view = b.a(a.d());
        if (view != null)
        {
            ((MediaActionsView)view.findViewById(av.row_feed_video_indicator)).a();
        }
    }
}
