// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.d;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import com.facebook.av;
import com.facebook.az;
import com.instagram.android.feed.a.a;
import com.instagram.feed.d.l;
import com.instagram.feed.d.q;
import com.instagram.ui.dialog.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.feed.d:
//            f, g, h, i, 
//            e

public final class d
{

    private Dialog a;
    private l b;
    private a c;
    private View d;
    private View e;
    private Context f;
    private List g;
    private CharSequence h[];

    public d(Context context, l l1, a a1, View view)
    {
        h = null;
        f = context;
        b = l1;
        c = a1;
        d = view;
        e = c.d(av.starred_hide_shoutout);
    }

    static Dialog a(d d1)
    {
        d1.a = null;
        return null;
    }

    static List b(d d1)
    {
        d1.g = null;
        return null;
    }

    private CharSequence[] b()
    {
        if (h == null)
        {
            ArrayList arraylist = new ArrayList();
            g = b.ad();
            for (Iterator iterator = g.iterator(); iterator.hasNext(); arraylist.add(((q)iterator.next()).b)) { }
            h = new CharSequence[arraylist.size()];
            arraylist.toArray(h);
        }
        return h;
    }

    private AnimationSet c()
    {
        AnimationSet animationset = new AnimationSet(true);
        animationset.setAnimationListener(new f(this));
        animationset.setFillEnabled(true);
        TranslateAnimation translateanimation = new TranslateAnimation(0.0F, 0.0F, -100F, 0.0F);
        translateanimation.setStartOffset(500L);
        translateanimation.setDuration(300L);
        animationset.addAnimation(translateanimation);
        TranslateAnimation translateanimation1 = new TranslateAnimation(0.0F, 0.0F, 0.0F, -100F);
        translateanimation1.setDuration(200L);
        translateanimation1.setStartOffset(2000L);
        translateanimation1.setFillAfter(true);
        animationset.addAnimation(translateanimation1);
        return animationset;
    }

    static CharSequence[] c(d d1)
    {
        return d1.b();
    }

    private AnimatorSet d()
    {
        AnimatorSet animatorset = new AnimatorSet();
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(d, View.ALPHA, new float[] {
            0.0F
        });
        objectanimator.setDuration(500L);
        ValueAnimator valueanimator = ValueAnimator.ofInt(new int[] {
            d.getMeasuredHeight(), 0
        });
        valueanimator.setDuration(300L);
        valueanimator.addUpdateListener(new g(this));
        animatorset.addListener(new h(this));
        animatorset.play(objectanimator).before(valueanimator);
        return animatorset;
    }

    static List d(d d1)
    {
        return d1.g;
    }

    static l e(d d1)
    {
        return d1.b;
    }

    static a f(d d1)
    {
        return d1.c;
    }

    static AnimationSet g(d d1)
    {
        return d1.c();
    }

    static View h(d d1)
    {
        return d1.e;
    }

    static AnimatorSet i(d d1)
    {
        return d1.d();
    }

    static View j(d d1)
    {
        return d1.d;
    }

    public final void a()
    {
        a = (new b(f)).a(az.starred_hide).a(b(), new i(this, (byte)0)).a(true).d().c();
        a.setOnDismissListener(new e(this));
        a.show();
    }
}
