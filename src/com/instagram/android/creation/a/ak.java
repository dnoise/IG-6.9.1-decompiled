// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.support.v4.app.k;
import android.view.View;
import com.facebook.av;
import com.instagram.android.activity.MainTabActivity;
import com.instagram.android.creation.a;
import com.instagram.common.y.d;
import com.instagram.creation.b.a.b;

// Referenced classes of package com.instagram.android.creation.a:
//            ah

final class ak
    implements android.view.View.OnClickListener
{

    final ah a;

    ak(ah ah1)
    {
        a = ah1;
        super();
    }

    public final void onClick(View view)
    {
        boolean flag = true;
        int i;
        View view1;
        b b1;
        boolean flag1;
        if (com.instagram.android.creation.a.ah.b(a) == 0)
        {
            i = av.row_caption_followshare;
        } else
        {
            i = av.row_caption_directshare;
        }
        view1 = a.E().findViewById(i);
        com.instagram.android.creation.a.ah.a(a).d(com.instagram.android.creation.a.a(view1));
        b1 = com.instagram.android.creation.a.ah.a(a);
        if (com.instagram.android.creation.a.ah.b(a) == flag)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        b1.h(flag1);
        com.instagram.creation.b.c.a.a(a.l()).e(com.instagram.android.creation.a.ah.a(a));
        a.l().setResult(-1);
        a.l().finish();
        d.b("FollowersShareFragment.INTENT_ACTION_SHARE_EVENT");
        if (com.instagram.android.creation.a.ah.b(a) != 0)
        {
            flag = false;
        }
        MainTabActivity.a(flag);
    }
}
