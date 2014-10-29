// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import com.facebook.av;
import com.instagram.android.feed.a.a;
import com.instagram.android.feed.a.h;
import com.instagram.android.people.widget.PeopleTagsLayout;

// Referenced classes of package com.instagram.android.feed.a.a:
//            i

final class j extends Handler
{

    final i a;

    j(i k)
    {
        a = k;
        super();
    }

    public final void handleMessage(Message message)
    {
        if (message.what == 0 && h.a == com.instagram.android.feed.a.a.i.a(a).o())
        {
            String s = (String)message.obj;
            View view = com.instagram.android.feed.a.a.i.a(a).a(s);
            if (view != null)
            {
                View view1 = view.findViewById(av.row_feed_photo_tags_indicator);
                PeopleTagsLayout peopletagslayout = (PeopleTagsLayout)view.findViewById(av.row_feed_photo_people_tagging);
                if (view1 != null && peopletagslayout != null && peopletagslayout.getChildCount() == 0 && view1.getGlobalVisibleRect(i.b(a)))
                {
                    com.instagram.android.feed.a.a.i.a(a, view1);
                }
            }
        }
    }
}
