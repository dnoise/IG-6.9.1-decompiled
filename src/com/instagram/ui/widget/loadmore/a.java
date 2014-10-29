// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.loadmore;

import android.view.View;

// Referenced classes of package com.instagram.ui.widget.loadmore:
//            LoadMoreButton, c

final class a
    implements android.view.View.OnClickListener
{

    final LoadMoreButton a;

    a(LoadMoreButton loadmorebutton)
    {
        a = loadmorebutton;
        super();
    }

    public final void onClick(View view)
    {
        a.a.n_();
        a.setDisplayedChild(1);
    }
}
