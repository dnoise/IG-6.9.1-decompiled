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
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.e.c.k;
import com.instagram.android.feed.ui.MediaOptionsButton;
import com.instagram.android.fragment.ab;
import com.instagram.common.y.e;
import com.instagram.common.y.f;
import com.instagram.feed.d.l;
import com.instagram.feed.d.w;
import com.instagram.ui.widget.textview.IgTextLayoutView;
import com.instagram.user.c.c;

// Referenced classes of package com.instagram.android.feed.a.b:
//            m, x, g, ac, 
//            b, c, d, e, 
//            f, r

public class a
{

    private static final Class a = com/instagram/android/feed/a/b/a;
    private final Context b;
    private final an c;
    private final s d;
    private final com.instagram.android.feed.a.b.f e;
    private final com.instagram.feed.g.a f;
    private final ab g;
    private final m h;
    private final x i;
    private final boolean j;
    private final boolean k;
    private boolean l;

    public a(com.instagram.android.fragment.a a1, com.instagram.android.feed.a.b.f f1)
    {
        b = a1.n();
        c = a1.z();
        d = a1.p();
        f = a1;
        g = a1;
        e = f1;
        h = new m(b, d, f);
        i = new x(b, e);
        j = a1.ao();
        k = a1.ap();
    }

    static Context a(a a1)
    {
        return a1.b;
    }

    private static g a(View view)
    {
        g g1 = new g();
        g1.c = (IgTextLayoutView)view.findViewById(av.row_feed_textview_comments);
        g1.d = (TextView)view.findViewById(av.row_feed_textview_explore_attribution);
        g1.e = (TextView)view.findViewById(av.row_feed_textview_likes);
        g1.f = (ViewStub)view.findViewById(av.row_feedback_photo_profile_metalabel);
        g1.i = (ImageView)view.findViewById(av.row_feed_button_like);
        g1.j = (ImageView)view.findViewById(av.row_feed_button_comment);
        g1.k = (MediaOptionsButton)view.findViewById(av.row_feed_button_options);
        g1.h = view.findViewById(av.row_feed_view_group_buttons);
        g1.a = m.a(view);
        g1.b = x.a(view);
        return g1;
    }

    private boolean a(l l1)
    {
        if (!l)
        {
            boolean flag;
            if (k && !com.instagram.service.a.a.a().b().g().equals(l1.c().g()) && l1.c().t() == c.c)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            l = flag;
        }
        return l;
    }

    static an b(a a1)
    {
        return a1.c;
    }

    static ab c(a a1)
    {
        return a1.g;
    }

    static com.instagram.feed.g.a d(a a1)
    {
        return a1.f;
    }

    static s e(a a1)
    {
        return a1.d;
    }

    static com.instagram.android.feed.a.b.f f(a a1)
    {
        return a1.e;
    }

    public final View a()
    {
        Object aobj[] = new Object[2];
        aobj[0] = a;
        aobj[1] = "newView";
        com.facebook.e.c.k.a("%s#%s", aobj);
        View view;
        view = LayoutInflater.from(b).inflate(aw.row_feed_photo, null);
        g g1 = a(view);
        view.setTag(g1);
        g1.b.a.setTag(g1.b);
        com.facebook.e.c.k.a();
        return view;
        Exception exception;
        exception;
        com.facebook.e.c.k.a();
        throw exception;
    }

    public final void a(View view, l l1, int i1, boolean flag, int j1)
    {
        g g1 = (g)view.getTag();
        h.a(c, g1.a, l1, a(l1));
        i.a(g1.b, l1, i1, flag, j1);
        int k1;
        boolean flag1;
        if (l1.j() > 0)
        {
            g1.e.setText(w.a(b).a(l1));
            g1.e.setMovementMethod(LinkMovementMethod.getInstance());
            g1.e.setVisibility(0);
        } else
        {
            g1.e.setVisibility(8);
        }
        if (j && !com.instagram.common.y.e.c(l1.v()))
        {
            g1.d.setText(w.a(b).b(l1));
            g1.d.setMovementMethod(LinkMovementMethod.getInstance());
            g1.d.setVisibility(0);
        } else
        {
            g1.d.setVisibility(8);
        }
        if (l1.s().intValue() > 0)
        {
            g1.c.setTextLayout(w.a(b).e(l1));
            g1.c.setVisibility(0);
        } else
        {
            g1.c.setVisibility(8);
        }
        if (a(l1))
        {
            if (g1.g == null)
            {
                g1.g = (TextView)g1.f.inflate();
            }
            ImageView imageview;
            android.view.ViewGroup.MarginLayoutParams marginlayoutparams;
            int i2;
            if (g1.d.getVisibility() == 0 || g1.e.getVisibility() == 0)
            {
                g1.g.setText(l1.c(b));
            } else
            {
                g1.g.setText(com.instagram.o.g.a.a(b, l1.m().longValue()));
                android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)g1.g.getLayoutParams();
                layoutparams.addRule(11, 0);
                layoutparams.addRule(9, -1);
            }
            g1.g.setVisibility(0);
        } else
        if (g1.g != null)
        {
            g1.g.setVisibility(8);
        }
        imageview = g1.i;
        if (l1.r())
        {
            k1 = au.feed_button_like_background_liked;
        } else
        {
            k1 = au.feed_button_like_background;
        }
        imageview.setImageResource(k1);
        g1.i.setOnClickListener(new b(this, l1, i1));
        g1.j.setOnClickListener(new com.instagram.android.feed.a.b.c(this, l1, i1));
        g1.k.setOnClickListener(new d(this, l1, view, i1));
        g1.k.setEnabled(g1.b.b.a());
        g1.k.setClickable(g1.b.b.a());
        if (g1.c.getVisibility() == 8 && g1.e.getVisibility() == 8)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)g1.h.getLayoutParams();
        i2 = 0;
        if (flag1)
        {
            i2 = (int)com.instagram.common.y.f.a(b.getResources().getDisplayMetrics(), 4);
        }
        marginlayoutparams.topMargin = i2;
        g1.b.b.a(new com.instagram.android.feed.a.b.e(this, g1));
    }

    public final void a(r r, l l1)
    {
        h.a(c, r, l1, a(l1));
    }

}
