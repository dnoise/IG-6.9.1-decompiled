// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.view.View;
import android.view.animation.Animation;
import com.instagram.ui.widget.base.a;

// Referenced classes of package com.instagram.android.widget:
//            MediaActionsView

final class m extends a
{

    final MediaActionsView a;

    m(MediaActionsView mediaactionsview)
    {
        a = mediaactionsview;
        super();
    }

    public final void onAnimationEnd(Animation animation)
    {
        com.instagram.android.widget.MediaActionsView.a(a).setVisibility(4);
    }
}
