// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.i;

import android.content.Context;
import android.os.Handler;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.instagram.feed.i:
//            c, b

public final class a
{

    private static boolean a = false;
    private final Handler b = new Handler();
    private ViewGroup c;
    private View d;

    public a(ViewGroup viewgroup)
    {
        c = viewgroup;
        Context context = viewgroup.getContext();
        d = LayoutInflater.from(context).inflate(aw.no_items_camera_nux, viewgroup, false);
        TextView textview = (TextView)d.findViewById(av.tap_on_camera_textview);
        String s = context.getString(az.tap_on_the_camera_full);
        String s1 = context.getString(az.tap_on_the_camera_bold);
        SpannableString spannablestring = new SpannableString(s);
        Matcher matcher = Pattern.compile(Pattern.quote(s1), 2).matcher(s);
        if (matcher.find())
        {
            spannablestring.setSpan(new StyleSpan(1), matcher.start(), matcher.end(), 18);
        }
        textview.setText(spannablestring);
        viewgroup.addView(d);
    }

    static ViewGroup a(a a1)
    {
        return a1.c;
    }

    static void b(a a1)
    {
        a1.f();
    }

    static void c(a a1)
    {
        a1.d();
    }

    static boolean c()
    {
        a = true;
        return true;
    }

    private void d()
    {
        TranslateAnimation translateanimation = new TranslateAnimation(0.0F, 0.0F, c.findViewById(av.tap_on_camera_textview).getHeight(), 0.0F);
        translateanimation.setDuration(500L);
        translateanimation.setInterpolator(new DecelerateInterpolator());
        translateanimation.setAnimationListener(new c(this));
        d.setVisibility(0);
        d.startAnimation(translateanimation);
    }

    private void e()
    {
        d.setVisibility(0);
    }

    private void f()
    {
        b.removeCallbacksAndMessages(null);
    }

    public final void a()
    {
        if (!a)
        {
            b.postDelayed(new b(this), 1000L);
            return;
        } else
        {
            e();
            return;
        }
    }

    public final void b()
    {
        f();
        c.removeView(d);
        d = null;
    }

}
