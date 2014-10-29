// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.a;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.at;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.ui.colorfilter.a;
import com.instagram.ui.widget.refresh.RefreshButton;
import com.instagram.ui.widget.searchedittext.SearchEditText;

// Referenced classes of package com.instagram.a:
//            b, a, d, e, 
//            c, i, g, h

public final class f
    implements b
{

    private final ViewGroup a;
    private final RefreshButton b;
    private final ImageView c;
    private final android.view.View.OnClickListener d;
    private final TextView e;
    private final ViewGroup f;
    private c g;

    public f(ViewGroup viewgroup, android.view.View.OnClickListener onclicklistener)
    {
        a = viewgroup;
        b = (RefreshButton)a.findViewById(av.action_bar_button_refresh);
        c = (ImageView)a.findViewById(av.action_bar_button_back);
        d = onclicklistener;
        e = (TextView)a.findViewById(av.action_bar_textview_title);
        f = (ViewGroup)a.findViewById(av.action_bar_textview_custom_title_container);
    }

    static android.view.View.OnClickListener a(f f1)
    {
        return f1.d;
    }

    public static f a(Activity activity)
    {
        return ((com.instagram.a.a)activity).a();
    }

    private void a(View view, boolean flag)
    {
        view.setBackgroundResource(au.action_bar_blue_button_background);
        ViewGroup viewgroup = a;
        int j;
        if (flag)
        {
            j = -2;
        } else
        {
            j = a.getResources().getDimensionPixelSize(at.action_bar_button_width);
        }
        viewgroup.addView(view, 3, new android.widget.LinearLayout.LayoutParams(j, -1));
        a.getChildAt(4).setBackgroundDrawable(new d(a.getResources(), e.b, 3));
    }

    private void b(String s)
    {
        a.setBackgroundResource(au.dark_action_bar_background);
        a(s);
        c.setVisibility(0);
        c.setImageResource(au.nav_cancel);
        c.setBackgroundDrawable(new d(a.getResources(), com.instagram.a.e.a, 5));
    }

    private void d()
    {
        a.setBackgroundResource(au.action_bar_background);
        a.setOnClickListener(null);
        c.setBackgroundDrawable(new d(a.getResources(), e.b, 5));
        c.setOnClickListener(d);
        c.setVisibility(8);
        c.setImageResource(au.nav_arrow_back);
        c.getDrawable().setColorFilter(null);
        b.setVisibility(8);
        b.setEnabled(true);
        b.setButtonResource(au.nav_refresh);
        b.setColorFilter(null);
        b.setBackgroundResource(au.action_bar_blue_button_background);
        b.setOnClickListener(null);
        e.setTextColor(e.getResources().getColor(as.white));
        e.setText("");
        e.setVisibility(0);
        f.setPadding(a.getResources().getDimensionPixelSize(at.action_bar_item_padding), 0, 0, 0);
        f.removeAllViews();
        f.setVisibility(8);
        int j = a.getChildCount();
        for (int k = 3; k < j - 1; k++)
        {
            a.removeViewAt(3);
        }

        if (g != null)
        {
            g.a(this);
        }
    }

    private View e(int j, android.view.View.OnClickListener onclicklistener)
    {
        ImageView imageview = new ImageView(a.getContext());
        imageview.setOnClickListener(onclicklistener);
        imageview.setScaleType(android.widget.ImageView.ScaleType.CENTER);
        imageview.setImageResource(j);
        a(imageview, false);
        return imageview;
    }

    public final View a(int j, android.view.View.OnClickListener onclicklistener)
    {
        View view = LayoutInflater.from(a.getContext()).inflate(j, a, false);
        view.setOnClickListener(onclicklistener);
        a(view, false);
        return view;
    }

    public final View a(i j, android.view.View.OnClickListener onclicklistener)
    {
        return e(j.a(), onclicklistener);
    }

    public final RefreshButton a(String s, android.view.View.OnClickListener onclicklistener)
    {
        b(s);
        b.setVisibility(0);
        b.setButtonResource(au.check);
        b.setOnClickListener(onclicklistener);
        b.setBackgroundResource(au.action_bar_light_blue_button_background);
        b(false);
        return b;
    }

    public final SearchEditText a()
    {
        SearchEditText searchedittext = (SearchEditText)b(aw.action_bar_title_search);
        searchedittext.getCompoundDrawables()[0].mutate().setAlpha(128);
        searchedittext.setClearButtonAlpha(128);
        Drawable drawable = searchedittext.getBackground().mutate();
        byte byte0;
        if (searchedittext.isFocused())
        {
            byte0 = 77;
        } else
        {
            byte0 = 51;
        }
        drawable.setAlpha(byte0);
        searchedittext.setOnFocusChangeListener(new g(this));
        c.setBackgroundResource(au.action_bar_blue_button_background);
        if (c.getVisibility() == 0)
        {
            com.instagram.common.y.f.d(f, 0);
        } else
        {
            com.instagram.common.y.f.d(f, a.getResources().getDimensionPixelSize(at.action_bar_search_padding));
        }
        if (b.getVisibility() != 0)
        {
            com.instagram.common.y.f.c(f, a.getResources().getDimensionPixelSize(at.action_bar_search_padding));
            return searchedittext;
        } else
        {
            com.instagram.common.y.f.c(f, 0);
            return searchedittext;
        }
    }

    public final void a(int j)
    {
        a(a.getContext().getString(j));
    }

    public final void a(int j, int k, int l, e e1)
    {
        int i1 = 0;
        while (i1 < a.getChildCount()) 
        {
            View view = a.getChildAt(i1);
            if (view instanceof ImageView)
            {
                Drawable drawable = ((ImageView)view).getDrawable().mutate();
                drawable.setColorFilter(com.instagram.common.ui.colorfilter.a.a(j));
                ((ImageView)view).setImageDrawable(drawable);
            } else
            if (view instanceof RefreshButton)
            {
                ((RefreshButton)view).setColorFilter(com.instagram.common.ui.colorfilter.a.a(j));
            } else
            if (view instanceof TextView)
            {
                ((TextView)view).setTextColor(j);
            }
            if (view.getBackground() instanceof d)
            {
                view.setBackgroundDrawable(new d(view.getResources(), e1, ((d)view.getBackground()).a()));
            } else
            {
                StateListDrawable statelistdrawable = new StateListDrawable();
                statelistdrawable.addState(new int[] {
                    0x10100a7
                }, new ColorDrawable(l));
                view.setBackgroundDrawable(statelistdrawable);
            }
            i1++;
        }
        a.setBackgroundDrawable(new ColorDrawable(k));
    }

    public final void a(android.view.View.OnClickListener onclicklistener)
    {
        a.setOnClickListener(onclicklistener);
    }

    public final void a(c c1)
    {
        g = c1;
        if (g != null)
        {
            a.setVisibility(0);
            d();
            return;
        } else
        {
            a.setVisibility(8);
            return;
        }
    }

    public final void a(String s)
    {
        e.setText(s);
    }

    public final void a(boolean flag)
    {
        ImageView imageview = c;
        int j;
        if (flag)
        {
            j = 0;
        } else
        {
            j = 8;
        }
        imageview.setVisibility(j);
    }

    public final void a(boolean flag, android.view.View.OnClickListener onclicklistener)
    {
        RefreshButton refreshbutton = b;
        int j;
        if (flag)
        {
            j = 0;
        } else
        {
            j = 8;
        }
        refreshbutton.setVisibility(j);
        b.setOnClickListener(onclicklistener);
    }

    public final View b(int j)
    {
        View view = LayoutInflater.from(a.getContext()).inflate(j, f, false);
        f.addView(view);
        f.setVisibility(0);
        e.setVisibility(8);
        return view;
    }

    public final View b(int j, android.view.View.OnClickListener onclicklistener)
    {
        TextView textview = (TextView)LayoutInflater.from(a.getContext()).inflate(aw.action_bar_button_text, a, false);
        textview.setText(j);
        textview.setOnClickListener(onclicklistener);
        a(textview, true);
        return textview;
    }

    public final void b()
    {
        d();
    }

    public final void b(android.view.View.OnClickListener onclicklistener)
    {
        if (c.getVisibility() == 0)
        {
            c.setOnClickListener(new h(this, onclicklistener));
        }
    }

    public final void b(boolean flag)
    {
        if (b != null)
        {
            RefreshButton refreshbutton = b;
            int j;
            if (flag)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            refreshbutton.setDisplayedChild(j);
        }
    }

    public final View c()
    {
        return a;
    }

    public final RefreshButton c(int j, android.view.View.OnClickListener onclicklistener)
    {
        return a(a.getResources().getString(j), onclicklistener);
    }

    public final RefreshButton d(int j, android.view.View.OnClickListener onclicklistener)
    {
        a.setBackgroundResource(au.dark_action_bar_background);
        a(a.getResources().getString(j));
        c.setVisibility(0);
        c.setImageResource(au.nav_arrow_back);
        c.setBackgroundDrawable(new d(a.getResources(), com.instagram.a.e.a, 5));
        b.setVisibility(0);
        b.setButtonResource(au.nav_arrow_next);
        b.setOnClickListener(onclicklistener);
        b.setBackgroundResource(au.action_bar_light_blue_button_background);
        b(false);
        return b;
    }
}
