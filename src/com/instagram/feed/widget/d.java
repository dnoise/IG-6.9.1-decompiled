// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.widget;

import android.graphics.Bitmap;
import com.instagram.common.ui.widget.imageview.f;
import com.instagram.ui.e.a;
import com.instagram.ui.e.b;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.feed.widget:
//            a, e

final class d
    implements f
{

    final com.instagram.feed.widget.a a;

    d(com.instagram.feed.widget.a a1)
    {
        a = a1;
        super();
    }

    public final void a(Bitmap bitmap)
    {
        Iterator iterator;
        if (bitmap != null)
        {
            com.instagram.feed.widget.a.d(a).a(a, b.e);
            a.setDisplayedChild(0);
        } else
        {
            com.instagram.feed.widget.a.d(a).a(a, b.d);
            a.setDisplayedChild(2);
        }
        for (iterator = com.instagram.feed.widget.a.e(a).iterator(); iterator.hasNext(); ((e)iterator.next()).a(bitmap)) { }
    }
}
