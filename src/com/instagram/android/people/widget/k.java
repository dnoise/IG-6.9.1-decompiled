// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.widget;

import android.view.animation.Animation;
import com.instagram.ui.widget.base.a;

// Referenced classes of package com.instagram.android.people.widget:
//            l, PeopleTagsLayout, c

final class k extends a
{

    final c a;
    final PeopleTagsLayout b;

    k(PeopleTagsLayout peopletagslayout, c c)
    {
        b = peopletagslayout;
        a = c;
        super();
    }

    public final void onAnimationEnd(Animation animation)
    {
        b.post(new l(this));
    }
}
