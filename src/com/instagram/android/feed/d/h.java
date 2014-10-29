// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.d;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.support.v4.view.ak;
import android.view.View;
import com.instagram.android.feed.a.a;

// Referenced classes of package com.instagram.android.feed.d:
//            d

final class h extends AnimatorListenerAdapter
{

    final d a;

    h(d d1)
    {
        a = d1;
        super();
    }

    public final void onAnimationEnd(Animator animator)
    {
        d.f(a).notifyDataSetChanged();
        d.j(a).getLayoutParams().height = -2;
        d.j(a).setAlpha(1.0F);
        ak.a(d.j(a), false);
    }

    public final void onAnimationStart(Animator animator)
    {
        ak.a(d.j(a), true);
    }
}
