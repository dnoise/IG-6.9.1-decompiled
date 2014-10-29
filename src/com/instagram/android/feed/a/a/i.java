// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.graphics.Rect;
import android.os.Handler;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import com.instagram.android.feed.a.a;
import com.instagram.android.feed.a.h;
import com.instagram.android.people.widget.PeopleTagsLayout;
import com.instagram.feed.d.l;
import com.instagram.feed.widget.ConstrainedProgressImageView;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.instagram.android.feed.a.a:
//            j, k, l

public final class i
    implements android.widget.AbsListView.OnScrollListener
{

    private final a a;
    private Set b;
    private final Rect c = new Rect();
    private final Handler d = new j(this);

    public i(a a1)
    {
        b = new HashSet();
        a = a1;
    }

    static a a(i i1)
    {
        return i1.a;
    }

    private void a(View view)
    {
        if (view.getVisibility() != 4)
        {
            view.clearAnimation();
            AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
            alphaanimation.setInterpolator(new LinearInterpolator());
            alphaanimation.setDuration(200L);
            alphaanimation.setAnimationListener(new k(this, view));
            view.startAnimation(alphaanimation);
        }
    }

    private void a(AbsListView abslistview)
    {
        for (int i1 = 0; i1 < abslistview.getChildCount(); i1++)
        {
            a _tmp = a;
            ConstrainedProgressImageView constrainedprogressimageview = com.instagram.android.feed.a.a.a(abslistview, i1);
            if (constrainedprogressimageview != null && constrainedprogressimageview.a())
            {
                a _tmp1 = a;
                a(com.instagram.android.feed.a.a.a(constrainedprogressimageview));
            }
        }

    }

    static void a(i i1, View view)
    {
        i1.a(view);
    }

    static Rect b(i i1)
    {
        return i1.c;
    }

    private void b(View view)
    {
        if (view.getVisibility() != 0)
        {
            view.clearAnimation();
            AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
            alphaanimation.setInterpolator(new LinearInterpolator());
            alphaanimation.setDuration(200L);
            alphaanimation.setAnimationListener(new com.instagram.android.feed.a.a.l(this, view));
            view.startAnimation(alphaanimation);
        }
    }

    private void b(AbsListView abslistview)
    {
        if (a.n())
        {
            return;
        }
        HashSet hashset = new HashSet();
        for (int i1 = abslistview.getFirstVisiblePosition(); i1 <= abslistview.getLastVisiblePosition(); i1++)
        {
            if (((ListAdapter)abslistview.getAdapter()).getItemViewType(i1) != 0)
            {
                continue;
            }
            l l1 = (l)((ListAdapter)abslistview.getAdapter()).getItem(i1);
            if (b.contains(l1))
            {
                hashset.add(l1);
            }
        }

        b = hashset;
    }

    public final void a()
    {
        d.removeMessages(0);
    }

    public final void a(l l1, PeopleTagsLayout peopletagslayout, View view)
    {
        if (b.contains(l1))
        {
            b.remove(l1);
            peopletagslayout.d();
            a(view);
        } else
        if (l1.X().intValue() > 0)
        {
            b.add(l1);
            peopletagslayout.removeAllViews();
            peopletagslayout.a(l1, true);
            b(view);
            return;
        }
    }

    public final void a(String s)
    {
        android.os.Message message = d.obtainMessage(0, s);
        d.sendMessageDelayed(message, 2000L);
    }

    public final boolean a(l l1)
    {
        return b.contains(l1);
    }

    public final void onScroll(AbsListView abslistview, int i1, int j1, int k1)
    {
        if (a.o() == h.a && a.l() == 1)
        {
            d.removeMessages(0);
        }
    }

    public final void onScrollStateChanged(AbsListView abslistview, int i1)
    {
        if (i1 == 0)
        {
            a(abslistview);
        }
        b(abslistview);
    }
}
