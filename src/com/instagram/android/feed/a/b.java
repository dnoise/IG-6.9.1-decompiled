// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a;

import android.os.Handler;
import android.os.Message;
import com.instagram.android.feed.ui.StickyHeaderListView;

// Referenced classes of package com.instagram.android.feed.a:
//            a

final class b extends Handler
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public final void handleMessage(Message message)
    {
        if (message.what == 1)
        {
            com.instagram.android.feed.a.a.a(a);
        } else
        if (message.what == 2)
        {
            if (a.g() != null)
            {
                a.g().a(true);
            }
            com.instagram.android.feed.a.a.b(a).b();
            return;
        }
    }
}
