// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.k;
import android.support.v4.app.s;
import android.view.View;
import com.facebook.av;
import com.instagram.android.nux.SignedOutFragmentActivity;
import com.instagram.b.c.a;
import com.instagram.base.activity.tabactivity.IgTabHost;
import com.instagram.base.activity.tabactivity.IgTabWidget;
import com.instagram.j.c.g;
import java.util.LinkedList;

// Referenced classes of package com.instagram.android.activity:
//            MainTabActivity, t

final class l extends BroadcastReceiver
{

    final MainTabActivity a;

    l(MainTabActivity maintabactivity)
    {
        a = maintabactivity;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        if (!intent.getAction().equals("MainTabActivity.BROADCAST_BACK_PUSHED")) goto _L2; else goto _L1
_L1:
        if (com.instagram.android.activity.MainTabActivity.a(a).isEmpty()) goto _L4; else goto _L3
_L3:
        com.instagram.b.c.a.a().a(a.getCurrentActivity(), "back");
        t t1 = (t)com.instagram.android.activity.MainTabActivity.a(a).removeFirst();
        com.instagram.android.activity.MainTabActivity.a(a, true);
        a.d().setCurrentTabByTag(t1.toString());
        com.instagram.android.activity.MainTabActivity.a(a, false);
_L6:
        return;
_L4:
        a.finish();
        return;
_L2:
        if (intent.getAction().equals("LogoutManager.BROADCAST_POST_LOGOUT"))
        {
            Intent intent1 = new Intent(a, com/instagram/android/nux/SignedOutFragmentActivity);
            intent1.setFlags(0x4000000);
            a.startActivity(intent1);
            a.finish();
            return;
        }
        if (!intent.getAction().equals("NewsfeedStore.BROADCAST_TOAST"))
        {
            break; /* Loop/switch isn't completed */
        }
        android.support.v4.app.Fragment fragment = ((k)a.getCurrentActivity()).d().a(av.layout_container_main);
        if (a.e().getVisibility() == 0)
        {
            int i = intent.getExtras().getInt("NewsfeedStore.EXTRA_BROADCAST_TOAST_COMMENTS");
            int j = intent.getExtras().getInt("NewsfeedStore.EXTRA_BROADCAST_TOAST_LIKES");
            int i1 = intent.getExtras().getInt("NewsfeedStore.EXTRA_BROADCAST_TOAST_RELATIONSHIPS");
            int j1 = intent.getExtras().getInt("NewsfeedStore.EXTRA_BROADCAST_TOAST_USERTAGS");
            com.instagram.android.activity.MainTabActivity.a(a, i, j, i1, j1);
            if (!(fragment instanceof g) || ((g)fragment).V() != g.b.intValue())
            {
                com.instagram.android.activity.MainTabActivity.a(a, MainTabActivity.b(a), t.b);
            }
            g.W();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
        if (intent.getAction().equals("com.instagram.android.fragment.NewsFeedYouFragment.BROADCAST_YOU_MODE_SEEN"))
        {
            if (MainTabActivity.c(a) != null)
            {
                MainTabActivity.c(a).a();
            }
            MainTabActivity.b(a).setVisibility(8);
            return;
        }
        if (intent.getAction().equals("NewsfeedStore.BROADCAST_NEW_PHOTOS_OF_YOU"))
        {
            com.instagram.android.activity.MainTabActivity.a(a, intent.getIntExtra("NewsfeedStore.EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT", 0));
            if (MainTabActivity.d(a) > 0)
            {
                com.instagram.android.activity.MainTabActivity.a(a, MainTabActivity.e(a), t.f);
                return;
            } else
            {
                MainTabActivity.e(a).setVisibility(8);
                return;
            }
        }
        if (intent.getAction().equals("SelfFragment.BROADCAST_SELF_PROFILE_SHOWN"))
        {
            MainTabActivity.e(a).setVisibility(8);
            return;
        }
        if (true) goto _L6; else goto _L7
_L7:
    }
}
