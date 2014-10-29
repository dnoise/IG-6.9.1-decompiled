// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.app.an;
import android.support.v4.app.s;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.feed.c.g;
import com.instagram.feed.d.l;
import com.instagram.feed.d.n;
import com.instagram.feed.d.w;
import com.instagram.user.c.a;
import com.instagram.user.follow.FollowButton;
import com.instagram.venue.model.Venue;

// Referenced classes of package com.instagram.android.feed.a.b:
//            r, n, o, p, 
//            q

public final class m
{

    private final Context a;
    private final s b;
    private final com.instagram.feed.g.a c;

    public m(Context context, s s, com.instagram.feed.g.a a1)
    {
        a = context;
        b = s;
        c = a1;
    }

    static Context a(m m1)
    {
        return m1.a;
    }

    public static View a(Context context, ViewGroup viewgroup)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_feed_media_profile_header, viewgroup, false);
        view.setTag(a(view));
        return view;
    }

    static r a(View view)
    {
        r r1 = new r();
        r1.a = view.findViewById(av.row_feed_profile_header);
        r1.b = (CircularImageView)view.findViewById(av.row_feed_photo_profile_imageview);
        r1.c = (TextView)view.findViewById(av.row_feed_photo_profile_name);
        r1.d = (ImageView)view.findViewById(av.row_feed_photo_profile_metalabel_glyph);
        r1.e = (TextView)view.findViewById(av.row_feed_photo_profile_metalabel);
        r1.f = (TextView)view.findViewById(av.row_feed_photo_location);
        r1.g = (ImageView)view.findViewById(av.row_feed_photo_location_glyph);
        return r1;
    }

    private void a(r r1, l l1)
    {
        Resources resources = a.getResources();
        if (l1.P())
        {
            r1.f.setTextColor(resources.getColor(as.accent_blue_medium));
            r1.g.setImageResource(au.feed_location);
            r1.f.setOnClickListener(new com.instagram.android.feed.a.b.n(this, l1));
            return;
        } else
        {
            r1.f.setTextColor(resources.getColor(as.grey_light));
            r1.g.setImageResource(au.feed_location_grey);
            r1.f.setOnClickListener(null);
            return;
        }
    }

    static com.instagram.feed.g.a b(m m1)
    {
        return m1.c;
    }

    private void b(r r1, l l1)
    {
        Resources resources = a.getResources();
        r1.g.setImageResource(au.feed_location);
        r1.f.setTextColor(resources.getColor(as.accent_blue_medium));
        r1.f.setOnClickListener(new o(this, l1));
    }

    static s c(m m1)
    {
        return m1.b;
    }

    public final void a(an an, r r1, l l1, boolean flag)
    {
        r1.a.setVisibility(0);
        r1.b.setUrl(l1.c().f());
        r1.b.setOnClickListener(new p(this, l1));
        r1.c.setText(w.a(a).c(l1));
        r1.c.setMovementMethod(LinkMovementMethod.getInstance());
        Venue venue = l1.B();
        if (venue != null && venue.c() != null)
        {
            r1.f.setVisibility(0);
            r1.g.setVisibility(0);
            r1.f.setText(venue.c());
            if (l1.N() == n.c)
            {
                b(r1, l1);
            } else
            if (l1.N() == n.b)
            {
                a(r1, l1);
            }
        } else
        {
            r1.f.setVisibility(8);
            r1.g.setVisibility(8);
        }
        if (g.b(l1, c))
        {
            r1.e.setText(l1.ab());
            r1.e.setTextColor(a.getResources().getColor(as.blue_medium));
            r1.e.setOnClickListener(new q(this, l1));
            if (l1.ac())
            {
                r1.d.setImageResource(au.feed_sponsored);
                r1.d.setVisibility(0);
                return;
            } else
            {
                r1.d.setVisibility(8);
                return;
            }
        }
        if (flag)
        {
            r1.e.setVisibility(8);
            r1.d.setVisibility(8);
            if (r1.h == null)
            {
                r1.h = (FollowButton)((ViewStub)r1.a.findViewById(av.row_feed_photo_follow_button)).inflate();
            }
            r1.h.setVisibility(0);
            r1.h.a(l1.c(), an);
            return;
        } else
        {
            r1.e.setText(l1.c(a));
            r1.e.setTextColor(a.getResources().getColor(as.grey_light));
            r1.d.setImageResource(au.feed_clock);
            r1.d.setVisibility(0);
            return;
        }
    }
}
