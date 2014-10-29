// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.android.people.widget.PeopleTagsLayout;
import com.instagram.android.widget.MediaActionsView;
import com.instagram.android.widget.o;
import com.instagram.feed.d.l;
import com.instagram.feed.widget.a;

// Referenced classes of package com.instagram.android.feed.a.b:
//            ad, ac, y, z, 
//            aa, ab

public final class x
{

    private final Context a;
    private final ab b;
    private final ad c = new ad(this);

    public x(Context context, ab ab)
    {
        a = context;
        b = ab;
    }

    public static View a(Context context, ViewGroup viewgroup)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_feed_media_media_group, viewgroup, false);
        view.setTag(a(view));
        return view;
    }

    public static ac a(View view)
    {
        ac ac1 = new ac();
        ac1.a = (ViewGroup)view.findViewById(av.media_group);
        ac1.b = (a)view.findViewById(av.row_feed_photo_imageview);
        ac1.c = (PeopleTagsLayout)view.findViewById(av.row_feed_photo_people_tagging);
        ac1.d = (Button)view.findViewById(av.row_feed_photo_tags_indicator);
        ac1.e = (MediaActionsView)view.findViewById(av.row_feed_video_indicator);
        return ac1;
    }

    static ad a(x x1)
    {
        return x1.c;
    }

    static ab b(x x1)
    {
        return x1.b;
    }

    static Context c(x x1)
    {
        return x1.a;
    }

    public final void a(ac ac1, l l1, int i, boolean flag, int j)
    {
        byte byte0 = 4;
        ac1.a.setOnTouchListener(new y(this, ac1, i, l1));
        ac1.b.getTag(av.key_media_id);
        ac1.b.setTag(av.key_list_position, Integer.valueOf(i));
        ac1.b.setTag(av.key_media_id, l1.d());
        ac1.b.clearAnimation();
        if (l1.g() && (j == o.e || j == o.a || j == o.f))
        {
            ac1.b.setVisibility(8);
        } else
        {
            ac1.b.setVisibility(0);
        }
        ac1.b.b();
        ac1.b.a(new z(this, ac1, j, l1));
        if (l1.T())
        {
            ac1.b.setUrl(l1.S().toString());
        } else
        {
            ac1.b.setUrl(l1.b(a));
        }
        if (l1.w() == com.instagram.model.a.a.a)
        {
            ac1.d.clearAnimation();
            ac1.c.setVisibility(0);
            Button button = ac1.d;
            if (l1.W() && ac1.b.a())
            {
                byte0 = 0;
            }
            button.setVisibility(byte0);
            if (l1.W() && flag)
            {
                ac1.c.removeAllViews();
                ac1.c.a(l1, false);
            } else
            {
                ac1.c.removeAllViews();
            }
        } else
        {
            ac1.c.setVisibility(8);
            ac1.d.setVisibility(byte0);
        }
        if (ac1.b.a())
        {
            ac1.e.setVideoIconState$736bb5a1(j);
        } else
        {
            ac1.e.setVideoIconState$736bb5a1(o.a);
        }
        ac1.e.setAudioToggleOnClickListener(new aa(this));
        ac1.e.b();
    }
}
