// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.facebook.at;
import com.facebook.av;
import com.facebook.az;
import com.instagram.base.a.j;
import com.instagram.common.y.d;
import com.instagram.ui.viewpager.ScrollingOptionalViewPager;

// Referenced classes of package com.instagram.android.fragment:
//            fc, fm, fn

final class fl extends BroadcastReceiver
    implements j
{

    final fc a;
    private final View b;
    private final TextView c;
    private final TextView d;
    private final ScrollingOptionalViewPager e;
    private final IntentFilter f = new IntentFilter("TabbedExploreFragment.INTENT_ACTION_EXPLORE_MODE_CHANGE");

    public fl(fc fc1, View view)
    {
        a = fc1;
        super();
        b = view.findViewById(av.view_switcher_container);
        c = (TextView)view.findViewById(av.view_switcher_button_first);
        d = (TextView)view.findViewById(av.view_switcher_button_second);
        e = (ScrollingOptionalViewPager)view.findViewById(av.tabbed_explore_pager);
        c.setText(az.tabbed_explore_action_bar_photos_button);
        d.setText(az.people);
        if (!fc.f(fc1))
        {
            b.setVisibility(8);
            e.setScrollingEnabled(false);
            return;
        } else
        {
            e.setPadding(0, fc1.o().getDimensionPixelSize(at.row_height_small), 0, 0);
            return;
        }
    }

    public final void a()
    {
        com.instagram.common.y.d.a(this, f);
    }

    public final void a(int i)
    {
        boolean flag = true;
        a.a(i);
        Intent intent = new Intent("TabbedExploreFragment.INTENT_ACTION_EXPLORE_MODE_CHANGE");
        boolean flag1;
        if (i == fc.a.intValue())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        intent.putExtra("TabbedExploreFragment.IS_PHOTOS_SELECTED", flag1);
        if (i != fc.b.intValue())
        {
            flag = false;
        }
        intent.putExtra("TabbedExploreFragment.IS_PEOPLE_SELECTED", flag);
        com.instagram.common.y.d.b(intent);
    }

    public final void b()
    {
        com.instagram.common.y.d.a(this);
    }

    public final void b(int i)
    {
        boolean flag = true;
        TextView textview = c;
        boolean flag1;
        TextView textview1;
        if (i == fc.a.intValue())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        textview.setSelected(flag1);
        textview1 = d;
        if (i != fc.b.intValue())
        {
            flag = false;
        }
        textview1.setSelected(flag);
        a.a(com.instagram.android.fragment.fc.d(a));
    }

    public final void c()
    {
        c.setOnClickListener(new fm(this));
        d.setOnClickListener(new fn(this));
    }

    public final void onReceive(Context context, Intent intent)
    {
        int i;
        if (intent.getBooleanExtra("TabbedExploreFragment.IS_PHOTOS_SELECTED", false))
        {
            i = fc.a.intValue();
        } else
        if (intent.getBooleanExtra("TabbedExploreFragment.IS_PEOPLE_SELECTED", false))
        {
            i = fc.b.intValue();
        } else
        {
            throw new IllegalArgumentException("unknown mode");
        }
        e.setCurrentItem(i);
    }
}
