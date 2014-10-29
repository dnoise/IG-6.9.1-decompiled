// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.follow;

import android.support.v4.app.an;
import android.view.View;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.user.follow:
//            FollowButton, g

final class c
    implements android.view.View.OnClickListener
{

    final a a;
    final an b;
    final g c;
    final FollowButton d;

    c(FollowButton followbutton, a a1, an an, g g)
    {
        d = followbutton;
        a = a1;
        b = an;
        c = g;
        super();
    }

    public final void onClick(View view)
    {
        d.setEnabled(false);
        if (a.t() == com.instagram.user.c.c.d)
        {
            com.instagram.user.follow.FollowButton.a(d, d.getContext(), b, a, c);
            return;
        } else
        {
            com.instagram.user.follow.FollowButton.a(d, a, b, c);
            return;
        }
    }
}
