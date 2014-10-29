// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.b;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.d;
import com.instagram.a.e;
import com.instagram.android.c.a.y;
import com.instagram.android.people.activity.PeopleTagActivity;
import com.instagram.android.people.widget.PeopleTagsInteractiveLayout;
import com.instagram.android.people.widget.PhotoScrollView;
import com.instagram.base.a.b;
import com.instagram.common.ui.widget.imageview.IgImageView;
import com.instagram.common.y.f;
import com.instagram.ui.widget.refresh.RefreshButton;

// Referenced classes of package com.instagram.android.people.b:
//            b, f, c, d, 
//            e

public final class a extends b
{

    private String a;
    private IgImageView b;
    private RefreshButton c;
    private TextView d;
    private PeopleTagsInteractiveLayout e;
    private PhotoScrollView f;
    private boolean g;
    private com.instagram.android.people.widget.f h;

    public a()
    {
        g = true;
        h = new com.instagram.android.people.b.b(this);
    }

    private void V()
    {
        String s = j().getString("media_id");
        if (s == null)
        {
            Intent intent = new Intent();
            intent.putExtra("people_tags", c());
            l().setResult(-1, intent);
            l().finish();
            return;
        } else
        {
            java.util.ArrayList arraylist = j().getParcelableArrayList("people_tags");
            (new y(n(), z(), s, arraylist, c(), new com.instagram.android.people.b.f(this, (byte)0))).g();
            return;
        }
    }

    static PhotoScrollView a(a a1)
    {
        return a1.f;
    }

    static boolean a(a a1, boolean flag)
    {
        a1.g = flag;
        return flag;
    }

    static void b(a a1)
    {
        a1.d();
    }

    private com.instagram.model.people.b c()
    {
        return ((PeopleTagActivity)l()).h();
    }

    static void c(a a1)
    {
        a1.V();
    }

    static RefreshButton d(a a1)
    {
        return a1.c;
    }

    private void d()
    {
        if (c().size() > 0)
        {
            d.setText((new StringBuilder()).append(c(az.people_tagging_tap_to_add)).append("\n").append(c(az.people_tagging_drag_to_move)).toString());
        }
        if (!g || c().size() >= 20 || com.instagram.common.y.f.e(n()) && com.instagram.common.y.f.d(n()))
        {
            d.setVisibility(8);
            return;
        } else
        {
            d.setVisibility(0);
            return;
        }
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        ViewGroup viewgroup1 = (ViewGroup)layoutinflater.inflate(aw.fragment_people_tag, viewgroup, false);
        ImageView imageview = (ImageView)viewgroup1.findViewById(av.action_bar_button_back);
        imageview.setBackgroundDrawable(new d(o(), e.a, 5));
        imageview.setOnClickListener(new c(this));
        c = (RefreshButton)viewgroup1.findViewById(av.action_bar_button_done);
        c.setButtonResource(au.check);
        c.setOnClickListener(new com.instagram.android.people.b.d(this));
        b = (IgImageView)viewgroup1.findViewById(av.image_view);
        b.setUrl(a);
        e = (PeopleTagsInteractiveLayout)viewgroup1.findViewById(av.people_tagging_layout);
        e.setEditListener(h);
        d = (TextView)viewgroup1.findViewById(av.tags_help_text);
        d();
        f = (PhotoScrollView)viewgroup1.findViewById(av.photo_scroll_view);
        if (o().getConfiguration().orientation == 2)
        {
            f.setOnMeasureListener(new com.instagram.android.people.b.e(this));
        }
        return viewgroup1;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        a = j().getString("media_url");
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        e.setPeopleTags$7d2216ca(c());
    }

    public final void a(com.instagram.user.c.a a1)
    {
        e.a(a1);
    }

    public final void b()
    {
        e.a();
    }

    public final String j_()
    {
        return "people_tagging";
    }

    public final void m_()
    {
        super.m_();
        e.setEditListener(null);
        e.b();
        e = null;
        b = null;
        c = null;
        d = null;
    }
}
