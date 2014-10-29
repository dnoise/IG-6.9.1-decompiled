// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.c;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.at;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.directshare.f.c;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.common.ui.widget.imageview.IgImageView;
import com.instagram.common.y.e;
import com.instagram.feed.d.l;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.directshare.c:
//            s, q, r

public final class p
{

    public static View a(Context context, ViewGroup viewgroup)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_inbox, viewgroup, false);
        s s1 = new s();
        s1.a = view.findViewById(av.directshare_inbox_row_container);
        s1.b = (FrameLayout)view.findViewById(av.row_inbox_thumbnail_container);
        s1.c = (IgImageView)view.findViewById(av.row_inbox_thumbnail);
        s1.d = (CircularImageView)view.findViewById(av.row_inbox_user_profile);
        s1.e = (TextView)view.findViewById(av.row_inbox_username);
        s1.f = (TextView)view.findViewById(av.row_inbox_fullname);
        s1.g = (TextView)view.findViewById(av.row_inbox_time);
        s1.h = (ImageView)view.findViewById(av.row_inbox_video_overlay);
        s1.i = (TextView)view.findViewById(av.row_inbox_tap_to_open);
        s1.j = view.findViewById(av.directshare_inbox_row_content_container);
        view.setTag(s1);
        return view;
    }

    public static void a(Context context, s s1, l l1)
    {
        int i = c.a(l1);
        a a1 = l1.c();
        if (l1.g())
        {
            s1.c.setOnLoadListener(new q(s1));
        } else
        {
            s1.c.setOnLoadListener(null);
            s1.h.setVisibility(8);
        }
        s1.c.setUrl(l1.e());
        s1.d.setUrl(a1.f());
        s1.e.setText(a1.b());
        if (e.c(a1.c()))
        {
            s1.f.setVisibility(8);
        } else
        {
            s1.f.setText(a1.c());
            s1.f.setVisibility(0);
        }
        s1.g.setText(l1.c(context));
        switch (com.instagram.android.directshare.c.r.a[i - 1])
        {
        default:
            a(s1, false);
            a(s1, 0);
            s1.i.setVisibility(8);
            s1.g.setCompoundDrawablesWithIntrinsicBounds(au.feed_clock, 0, 0, 0);
            return;

        case 1: // '\001'
            a(s1, true);
            a(s1, 8);
            s1.i.setVisibility(0);
            TextView textview = s1.i;
            int j;
            int k;
            if (l1.g())
            {
                j = az.video;
            } else
            {
                j = az.photo;
            }
            textview.setText(j);
            k = s1.i.getResources().getDimensionPixelSize(at.directshare_inbox_thumbnail_size);
            if ((int)s1.i.getPaint().measureText(s1.i.getText().toString()) > k)
            {
                s1.i.setBackgroundDrawable(null);
                s1.i.getLayoutParams().width = -2;
                return;
            } else
            {
                s1.i.setBackgroundDrawable(s1.i.getResources().getDrawable(au.bg_row_pending_direct_share_thumbnail));
                s1.i.getLayoutParams().width = k;
                return;
            }

        case 2: // '\002'
            a(s1, false);
            a(s1, 0);
            s1.i.setVisibility(8);
            s1.g.setCompoundDrawablesWithIntrinsicBounds(au.inbox_glyph_activity, 0, 0, 0);
            return;
        }
    }

    private static void a(s s1, int i)
    {
        s1.b.setVisibility(i);
        s1.g.setVisibility(i);
    }

    private static void a(s s1, boolean flag)
    {
        Resources resources = s1.a.getResources();
        if (flag)
        {
            s1.a.setBackgroundResource(au.bg_row_inbox_unread);
            s1.e.setTextColor(resources.getColor(as.accent_blue_medium));
            s1.f.setTextColor(resources.getColor(as.accent_blue_light));
            return;
        } else
        {
            s1.a.setBackgroundResource(au.bg_simple_row);
            s1.e.setTextColor(resources.getColor(as.grey_medium));
            s1.f.setTextColor(resources.getColor(as.grey_light));
            return;
        }
    }
}
