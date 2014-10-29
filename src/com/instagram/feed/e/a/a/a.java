// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.e.a.a;

import android.content.Context;
import android.support.v4.app.an;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.analytics.g;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.common.y.e;
import com.instagram.feed.f.c;
import com.instagram.feed.f.d;
import com.instagram.user.d.b;
import com.instagram.user.follow.FollowButton;
import java.util.HashSet;
import java.util.List;

// Referenced classes of package com.instagram.feed.e.a.a:
//            g, h, b, c, 
//            d, e, f

public final class a
{

    private static final AccelerateInterpolator a = new AccelerateInterpolator();
    private static final DecelerateInterpolator b = new DecelerateInterpolator();

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.layout_feed_aysf_banner, null);
        com.instagram.feed.e.a.a.g g1 = new com.instagram.feed.e.a.a.g();
        g.a(g1, view.findViewById(av.title_banner));
        g.a(g1)[0] = a(view.findViewById(av.row_aysf_user_0));
        g.a(g1)[1] = a(view.findViewById(av.row_aysf_user_1));
        g.a(g1)[2] = a(view.findViewById(av.row_aysf_user_2));
        view.setTag(g1);
        return view;
    }

    static Animation a()
    {
        return b();
    }

    static Animation a(g g1, com.instagram.feed.e.a.a.g g2, h h1, an an, c c1, int i, com.instagram.feed.e.a a1)
    {
        return d(g1, g2, h1, an, c1, i, a1);
    }

    private static h a(View view)
    {
        h h1 = new h();
        h.a(h1, view);
        com.instagram.feed.e.a.a.h.b(h1, view.findViewById(av.row_feed_aysf_container));
        h.a(h1, (CircularImageView)view.findViewById(av.row_feed_aysf_imageview));
        h.a(h1, (TextView)view.findViewById(av.row_feed_aysf_username));
        com.instagram.feed.e.a.a.h.b(h1, (TextView)view.findViewById(av.row_feed_aysf_social_context));
        h.a(h1, (FollowButton)view.findViewById(av.row_feed_aysf_follow_button));
        com.instagram.feed.e.a.a.h.c(h1, view.findViewById(av.row_feed_aysf_dismiss_button));
        com.instagram.feed.e.a.a.h.d(h1, view.findViewById(av.row_feed_aysf_divider));
        return h1;
    }

    static void a(g g1, com.instagram.feed.e.a.a.g g2, an an, c c1, int i, com.instagram.feed.e.a a1)
    {
        b(g1, g2, an, c1, i, a1);
    }

    public static void a(g g1, com.instagram.feed.e.a.a.g g2, an an, c c1, com.instagram.feed.e.a a1)
    {
        int i = 0;
        com.instagram.feed.e.a.a.g.b(g2).setOnClickListener(new com.instagram.feed.e.a.a.b(a1));
        h.a(g.a(g2)[0]).setVisibility(8);
        while (i < g.a(g2).length) 
        {
            if (i < c1.e().size())
            {
                b(g1, g2, g.a(g2)[i], an, c1, i, a1);
            } else
            {
                com.instagram.feed.e.a.a.h.b(g.a(g2)[i]).setVisibility(8);
            }
            i++;
        }
    }

    private static Animation b()
    {
        TranslateAnimation translateanimation = new TranslateAnimation(2, -1F, 2, 0.0F, 2, 0.0F, 2, 0.0F);
        translateanimation.setDuration(200L);
        translateanimation.setInterpolator(a);
        return translateanimation;
    }

    private static void b(g g1, com.instagram.feed.e.a.a.g g2, an an, c c1, int i, com.instagram.feed.e.a a1)
    {
        int j = c1.e().size();
        if (i >= j)
        {
            i = j - 1;
        }
        com.instagram.user.d.a a2 = (com.instagram.user.d.a)c1.e().get(i);
        c1.a(i);
        a1.a(d.c, a2);
        if (c1.e().isEmpty())
        {
            a1.b(d.c);
            return;
        } else
        {
            a(g1, g2, an, c1, a1);
            return;
        }
    }

    private static void b(g g1, com.instagram.feed.e.a.a.g g2, h h1, an an, c c1, int i, com.instagram.feed.e.a a1)
    {
        com.instagram.user.d.a a2 = (com.instagram.user.d.a)c1.e().get(i);
        if (a1.av().add(a2.a().g()))
        {
            com.instagram.user.d.b.a(g1, a2, i, false);
        }
        com.instagram.feed.e.a.a.h.c(h1).setOnClickListener(new com.instagram.feed.e.a.a.c(g1, a2, i, a1));
        com.instagram.feed.e.a.a.h.d(h1).setUrl(a2.a().f());
        com.instagram.feed.e.a.a.h.e(h1).setText(a2.a().b());
        if (!com.instagram.common.y.e.c(a2.e()))
        {
            h.f(h1).setText(a2.e());
            h.f(h1).setCompoundDrawablesWithIntrinsicBounds(a2.g(), 0, 0, 0);
            h.f(h1).setVisibility(0);
        } else
        {
            h.f(h1).setVisibility(8);
        }
        com.instagram.feed.e.a.a.h.g(h1).setVisibility(0);
        com.instagram.feed.e.a.a.h.g(h1).a(a2.a(), an, false, new com.instagram.feed.e.a.a.d(g1, a2, i));
        if (a2.a().t() == com.instagram.user.c.c.d)
        {
            com.instagram.feed.e.a.a.h.c(h1).startAnimation(c(g1, g2, h1, an, c1, i, a1));
        }
        h.h(h1).setOnClickListener(new com.instagram.feed.e.a.a.e(g1, a2, i, h1, g2, an, c1, a1));
    }

    private static Animation c(g g1, com.instagram.feed.e.a.a.g g2, h h1, an an, c c1, int i, com.instagram.feed.e.a a1)
    {
        TranslateAnimation translateanimation = new TranslateAnimation(2, 0.0F, 2, 1.0F, 2, 0.0F, 2, 0.0F);
        translateanimation.setAnimationListener(e(g1, g2, h1, an, c1, i, a1));
        translateanimation.setDuration(200L);
        translateanimation.setInterpolator(a);
        return translateanimation;
    }

    private static Animation d(g g1, com.instagram.feed.e.a.a.g g2, h h1, an an, c c1, int i, com.instagram.feed.e.a a1)
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setAnimationListener(e(g1, g2, h1, an, c1, i, a1));
        alphaanimation.setDuration(300L);
        alphaanimation.setInterpolator(b);
        return alphaanimation;
    }

    private static android.view.animation.Animation.AnimationListener e(g g1, com.instagram.feed.e.a.a.g g2, h h1, an an, c c1, int i, com.instagram.feed.e.a a1)
    {
        return new f(g1, g2, an, c1, i, a1, h1);
    }

}
