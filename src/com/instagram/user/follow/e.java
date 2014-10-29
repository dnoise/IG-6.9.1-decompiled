// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.follow;

import android.content.DialogInterface;
import android.support.v4.app.an;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.user.follow:
//            FollowButton, g

final class e
    implements android.content.DialogInterface.OnClickListener
{

    final a a;
    final an b;
    final g c;
    final FollowButton d;

    e(FollowButton followbutton, a a1, an an, g g)
    {
        d = followbutton;
        a = a1;
        b = an;
        c = g;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        com.instagram.user.follow.FollowButton.a(d, a, b, c);
    }
}
