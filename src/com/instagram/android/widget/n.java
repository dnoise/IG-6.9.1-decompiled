// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.view.View;
import android.view.animation.Animation;
import com.instagram.ui.widget.base.a;

// Referenced classes of package com.instagram.android.widget:
//            MediaActionsView

final class n extends a
{

    final View a;
    final MediaActionsView b;

    n(MediaActionsView mediaactionsview, View view)
    {
        b = mediaactionsview;
        a = view;
        super();
    }

    public final void onAnimationEnd(Animation animation)
    {
        a.setVisibility(8);
    }
}
