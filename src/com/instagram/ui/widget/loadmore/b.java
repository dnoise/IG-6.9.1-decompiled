// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.loadmore;

import android.view.View;
import com.instagram.b.b.a;

// Referenced classes of package com.instagram.ui.widget.loadmore:
//            LoadMoreButton

final class b
    implements android.view.View.OnClickListener
{

    final LoadMoreButton a;

    b(LoadMoreButton loadmorebutton)
    {
        a = loadmorebutton;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.b.b.a.a((new com.instagram.common.analytics.b("load_more_button_retry", com.instagram.b.b.a.a(a.getContext()))).a("source", a.a.getClass().getSimpleName()), a.getContext()).a();
        a.setDisplayedChild(1);
    }
}
