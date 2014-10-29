// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.widget;

import android.view.View;
import com.instagram.b.b.a;
import com.instagram.common.ui.widget.imageview.IgImageView;

// Referenced classes of package com.instagram.feed.widget:
//            a

final class b
    implements android.view.View.OnClickListener
{

    final com.instagram.feed.widget.a a;

    b(com.instagram.feed.widget.a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.feed.widget.a.a(a).b();
        if (com.instagram.feed.widget.a.b(a) != null)
        {
            com.instagram.b.b.a.a((new com.instagram.common.analytics.b("image_view_retry_click", com.instagram.b.b.a.a(a.getContext()))).a("category", com.instagram.feed.widget.a.b(a)), a.getContext()).a();
        }
    }
}
