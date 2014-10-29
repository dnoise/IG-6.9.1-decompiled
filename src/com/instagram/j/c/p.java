// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.az;
import com.instagram.a.f;
import com.instagram.base.a.j;
import com.instagram.common.y.d;

// Referenced classes of package com.instagram.j.c:
//            g, n, q, r

final class p extends BroadcastReceiver
    implements j
{

    final g a;
    private final TextView b;
    private final TextView c;
    private final ViewPager d;
    private final IntentFilter e = new IntentFilter("NewsfeedFragment.INTENT_ACTION_NEWSFEED_MODE_CHANGE");

    p(g g1, View view)
    {
        a = g1;
        super();
        b = (TextView)view.findViewById(av.view_switcher_button_first);
        b.setText(az.news_view_action_bar_following_button);
        c = (TextView)view.findViewById(av.view_switcher_button_second);
        c.setText(az.news_view_action_bar_you_button);
        d = (ViewPager)view.findViewById(av.newsfeed_pager);
    }

    public final void a()
    {
        com.instagram.common.y.d.a(this, e);
    }

    public final void a(int i)
    {
        boolean flag = true;
        a.a(i);
        Intent intent = new Intent("NewsfeedFragment.INTENT_ACTION_NEWSFEED_MODE_CHANGE");
        boolean flag1;
        if (i == g.a.intValue())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        intent.putExtra("NewsfeedFragment.IS_FOLLOWING_SELECTED", flag1);
        if (i != g.b.intValue())
        {
            flag = false;
        }
        intent.putExtra("NewsfeedFragment.IS_YOU_SELECTED", flag);
        com.instagram.common.y.d.b(intent);
    }

    public final void b()
    {
        com.instagram.common.y.d.a(this);
    }

    public final void b(int i)
    {
        boolean flag = true;
        TextView textview = b;
        boolean flag1;
        TextView textview1;
        if (i == g.a.intValue())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        textview.setSelected(flag1);
        textview1 = c;
        if (i != g.b.intValue())
        {
            flag = false;
        }
        textview1.setSelected(flag);
        if (a.u())
        {
            f.a(a.l()).b(com.instagram.j.c.g.d(a).V());
        }
    }

    public final void c()
    {
        b.setOnClickListener(new q(this));
        c.setOnClickListener(new r(this));
    }

    public final void onReceive(Context context, Intent intent)
    {
        int i;
        if (intent.getBooleanExtra("NewsfeedFragment.IS_FOLLOWING_SELECTED", false))
        {
            i = g.a.intValue();
        } else
        if (intent.getBooleanExtra("NewsfeedFragment.IS_YOU_SELECTED", false))
        {
            i = g.b.intValue();
        } else
        {
            throw new IllegalArgumentException("unknown mode");
        }
        d.setCurrentItem(i);
    }
}
