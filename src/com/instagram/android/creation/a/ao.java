// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.au;
import com.facebook.av;
import com.facebook.az;
import com.instagram.android.directshare.a.a;
import com.instagram.common.y.d;

// Referenced classes of package com.instagram.android.creation.a:
//            ah, ap, aq

final class ao extends BroadcastReceiver
{

    final ah a;
    private final TextView b;
    private final TextView c;
    private final ViewPager d;
    private final IntentFilter e = new IntentFilter("MetadataFragment.INTENT_ACTION_SHARE_MODE_CHANGE");

    ao(ah ah1, View view)
    {
        a = ah1;
        super();
        b = (TextView)view.findViewById(av.view_switcher_button_first);
        b.setText(az.followers);
        c = (TextView)view.findViewById(av.view_switcher_button_second);
        c.setText(az.direct);
        c.setTextColor(ah1.o().getColorStateList(as.view_switcher_text_selected_green));
        d = (ViewPager)view.findViewById(av.metadata_pager);
    }

    static void a(int i)
    {
        boolean flag = true;
        Intent intent = new Intent("MetadataFragment.INTENT_ACTION_SHARE_MODE_CHANGE");
        boolean flag1;
        if (i == 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        intent.putExtra("MetadataFragment.IS_FOLLOWERS_SHARE_SELECTED", flag1);
        if (i != flag)
        {
            flag = false;
        }
        intent.putExtra("MetadataFragment.IS_DIRECT_SHARE_SELECTED", flag);
        com.instagram.common.y.d.b(intent);
    }

    final void a()
    {
        com.instagram.common.y.d.a(this, e);
    }

    final void b()
    {
        com.instagram.common.y.d.a(this);
    }

    final void b(int i)
    {
        boolean flag;
        if (ah.b(a) != i)
        {
            TextView textview;
            TextView textview1;
            boolean flag1;
            boolean flag2;
            if (i == 1)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            com.instagram.android.directshare.a.a.a(flag2);
        }
        ah.c(a, i);
        textview = b;
        if (i == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        textview.setSelected(flag);
        textview1 = c;
        flag1 = false;
        if (i == 1)
        {
            flag1 = true;
        }
        textview1.setSelected(flag1);
        if (i == 0)
        {
            ah.e(a).setBackgroundResource(au.action_bar_light_blue_button_background);
            ah.e(a).setEnabled(true);
            ah.e(a).getDrawable().mutate().setAlpha(255);
            return;
        } else
        {
            ah.e(a).setBackgroundResource(au.action_bar_green_button_background);
            com.instagram.android.creation.a.ah.a(a, ah.f(a));
            return;
        }
    }

    final void c()
    {
        b.setOnClickListener(new ap(this));
        c.setOnClickListener(new aq(this));
    }

    public final void onReceive(Context context, Intent intent)
    {
        boolean flag = intent.getBooleanExtra("MetadataFragment.IS_FOLLOWERS_SHARE_SELECTED", false);
        int i = 0;
        if (!flag)
        {
            if (intent.getBooleanExtra("MetadataFragment.IS_DIRECT_SHARE_SELECTED", false))
            {
                i = 1;
            } else
            {
                throw new IllegalArgumentException("unknown mode");
            }
        }
        d.setCurrentItem(i);
    }
}
