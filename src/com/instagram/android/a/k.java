// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.common.ui.colorfilter.a;
import com.instagram.common.y.e;
import com.instagram.venue.model.Venue;

// Referenced classes of package com.instagram.android.a:
//            l

final class k
{

    public static View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.row_venue, viewgroup, false);
        l l1 = new l();
        view.setTag(l1);
        l1.c = (ImageView)view.findViewById(av.row_venue_image);
        l1.a = (TextView)view.findViewById(av.row_venue_title);
        l1.b = (TextView)view.findViewById(av.row_venue_subtitle);
        return view;
    }

    public static void a(Context context, l l1, String s)
    {
        l1.c.setImageResource(au.share_location);
        l1.c.setVisibility(0);
        l1.a.setText(context.getResources().getString(az.add_a_location, new Object[] {
            s
        }));
        l1.b.setText(az.create_a_custom_location);
    }

    public static void a(l l1, Venue venue)
    {
        l1.a.setText(venue.c());
        l1.c.setVisibility(8);
        if (venue.d() == null && venue.i())
        {
            l1.b.setText(az.custom_location);
            return;
        }
        if (!e.c(venue.d()))
        {
            l1.b.setText(venue.d());
            l1.b.setVisibility(0);
            return;
        } else
        {
            l1.b.setVisibility(8);
            return;
        }
    }

    public static void b(Context context, l l1, String s)
    {
        l1.c.setImageResource(au.nav_search);
        l1.c.getDrawable().mutate().setColorFilter(com.instagram.common.ui.colorfilter.a.a(0xff5c646b));
        l1.c.setVisibility(0);
        l1.a.setText(context.getResources().getString(az.search_for_a_location, new Object[] {
            s
        }));
        l1.b.setText(az.search_places_nearby);
    }
}
