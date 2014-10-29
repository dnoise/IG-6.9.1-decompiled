// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.view.View;
import android.view.animation.Animation;
import com.instagram.ui.widget.base.a;

// Referenced classes of package com.instagram.android.feed.a.a:
//            i

final class l extends a
{

    final View a;
    final i b;

    l(i i, View view)
    {
        b = i;
        a = view;
        super();
    }

    public final void onAnimationEnd(Animation animation)
    {
        a.setVisibility(0);
    }
}
