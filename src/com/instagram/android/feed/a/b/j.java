// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.android.feed.a.a;
import com.instagram.android.widget.ae;
import com.instagram.android.widget.k;
import com.instagram.common.ui.widget.imageview.IgImageView;
import com.instagram.common.y.f;
import com.instagram.venue.model.Venue;

// Referenced classes of package com.instagram.android.feed.a.b:
//            l, k

public final class j
{

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_map_header, null);
        l l1 = new l();
        com.instagram.android.feed.a.b.l.a(l1, (ImageView)view.findViewById(av.foursquare_glyph));
        com.instagram.android.feed.a.b.l.a(l1).getDrawable().mutate().setAlpha(128);
        com.instagram.android.feed.a.b.l.a(l1, (IgImageView)view.findViewById(av.row_map_header_imageview));
        l1.a = view.findViewById(av.layout_button_group_view_switcher_button_grid);
        l1.b = view.findViewById(av.layout_button_group_view_switcher_button_list);
        view.setTag(l1);
        return view;
    }

    public static void a(l l1, Venue venue, Context context, a a1)
    {
        ae.a(l1.a, l1.b, a1);
        com.instagram.android.feed.a.b.l.a(l1).setOnClickListener(new com.instagram.android.feed.a.b.k(venue, context));
        ImageView imageview = com.instagram.android.feed.a.b.l.a(l1);
        int i;
        if ("foursquare".equals(venue.f()))
        {
            i = 0;
        } else
        {
            i = 8;
        }
        imageview.setVisibility(i);
        l.b(l1).setUrl(com.instagram.android.widget.j.a(l.b(l1).getResources().getDisplayMetrics().density, venue, "14", f.a(l.b(l1).getContext()), context.getResources().getDimensionPixelSize(at.map_height), venue.g(), venue.h()));
        l.b(l1).setOnClickListener(new k(l.b(l1).getContext(), venue.g(), venue.h(), venue.c(), "14"));
    }
}
