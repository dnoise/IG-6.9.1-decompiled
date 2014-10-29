// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.e;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.s;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.android.fragment.cp;
import com.instagram.android.widget.j;
import com.instagram.android.widget.k;
import com.instagram.common.ui.widget.imageview.IgImageView;
import com.instagram.feed.d.l;
import com.instagram.o.f.a;
import com.instagram.ui.dialog.b;
import com.instagram.venue.model.Venue;

public final class g
    implements a
{

    public g()
    {
    }

    private static void a(l l1, com.instagram.feed.g.a a1)
    {
        com.instagram.feed.c.g.b("location", l1, a1);
    }

    public final void a(Context context, l l1, com.instagram.feed.g.a a1)
    {
        View view = LayoutInflater.from(context).inflate(aw.dialog_map, null);
        IgImageView igimageview = (IgImageView)view.findViewById(av.dialog_map_imageview);
        Venue venue = l1.B();
        igimageview.setOnClickListener(new k(context, l1.Q(), l1.R(), venue.c(), "10"));
        igimageview.setUrl(j.a(igimageview.getResources().getDisplayMetrics().density, venue, "10", context.getResources().getDimensionPixelSize(at.map_width_dialog), context.getResources().getDimensionPixelSize(at.map_height_dialog), l1.Q(), l1.R()));
        (new b(context)).a(view).c().show();
        a(l1, a1);
    }

    public final void a(s s, l l1, com.instagram.feed.g.a a1)
    {
        a(s, l1.B().b());
        a(l1, a1);
    }

    public final void a(s s, String s1)
    {
        Bundle bundle = new Bundle();
        bundle.putString("LocationFeedFragment.ARGUMENT_LOCATION_VENUE_ID", s1);
        (new com.instagram.base.a.a.a(s)).a(new cp(), bundle).b("media_location").a();
    }
}
