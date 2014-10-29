// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.app.an;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.common.ui.widget.imageview.ConstrainedImageView;
import com.instagram.common.y.e;
import com.instagram.ui.widget.imagebutton.IgImageButton;
import com.instagram.user.d.a;
import com.instagram.user.follow.FollowButton;
import com.instagram.user.follow.h;
import java.util.List;

// Referenced classes of package com.instagram.android.a.b:
//            ag, ad, ae, af

public final class ac
{

    public static View a(Context context, h h1)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_recommended_user, null);
        ag ag1 = new ag();
        ag1.b = (CircularImageView)view.findViewById(av.row_recommended_user_imageview);
        ag1.c = (TextView)view.findViewById(av.row_recommended_user_description);
        ag1.d = (TextView)view.findViewById(av.row_recommended_user_username);
        ag1.e = (TextView)view.findViewById(av.row_recommended_user_fullname);
        ag1.f = (TextView)view.findViewById(av.row_recommended_social_context);
        FollowButton followbutton;
        if (h1 == h.b)
        {
            followbutton = (FollowButton)view.findViewById(av.row_recommended_user_follow_button_large);
        } else
        {
            followbutton = (FollowButton)view.findViewById(av.row_recommended_user_follow_button_medium);
        }
        ag1.g = followbutton;
        ag1.i[0] = (IgImageButton)view.findViewById(av.row_recommended_user_imagebutton_1);
        ag1.i[1] = (IgImageButton)view.findViewById(av.row_recommended_user_imagebutton_2);
        ag1.i[2] = (IgImageButton)view.findViewById(av.row_recommended_user_imagebutton_3);
        ag1.i[3] = (IgImageButton)view.findViewById(av.row_recommended_user_imagebutton_4);
        ag1.a = (ViewGroup)view.findViewById(av.row_recommended_user_row);
        view.setTag(ag1);
        ag1.h = (ViewGroup)view.findViewById(av.row_recommended_user_thumbnail_container);
        ag1.j = view.findViewById(av.row_recommended_user_divider);
        return view;
    }

    public static void a(ag ag1, int i, int j, a a1, s s, an an, boolean flag, boolean flag1, 
            boolean flag2, boolean flag3, boolean flag4, boolean flag5)
    {
        ag1.b.setUrl(a1.a().f());
        String s1 = e.e(a1.b());
        int k;
        if (!e.c(s1) && flag3)
        {
            ag1.c.setText(s1);
            ag1.c.setVisibility(0);
        } else
        {
            ag1.c.setVisibility(8);
        }
        ag1.d.setText(a1.a().b());
        if (!a1.a().d().equals(a1.a().b()))
        {
            ag1.e.setText(a1.a().d());
            ag1.e.setVisibility(0);
        } else
        {
            ag1.e.setVisibility(8);
        }
        if (!e.c(a1.e()) && flag2)
        {
            ag1.f.setText(a1.e());
            ag1.f.setCompoundDrawablesWithIntrinsicBounds(a1.g(), 0, 0, 0);
            ag1.f.setVisibility(0);
        } else
        {
            ag1.f.setVisibility(8);
        }
        for (k = j; k < 4; k++)
        {
            ag1.i[k].getImageView().setOnClickListener(null);
            ag1.i[k].setVisibility(8);
        }

        int l = a1.c().size();
        int i1 = 0;
        while (i1 < j) 
        {
            if (i1 < l)
            {
                ag1.i[i1].getImageView().setUrl((String)a1.c().get(i1));
                ag1.i[i1].setVisibility(0);
            } else
            {
                ag1.i[i1].setVisibility(4);
            }
            i1++;
        }
        ag1.g.setVisibility(0);
        ag1.g.a(a1.a(), an, false, new ad(flag1, s, a1, i));
        if (flag)
        {
            ae ae1 = new ae(flag1, s, a1, i);
            int j1;
            int k1;
            if (a1.f() == null)
            {
                j1 = 0;
            } else
            {
                j1 = a1.f().size();
            }
            k1 = 0;
            while (k1 < j) 
            {
                if (k1 < j1)
                {
                    ag1.i[k1].getImageView().setOnClickListener(new af(s, a1, k1));
                } else
                if (k1 < l)
                {
                    ag1.i[k1].getImageView().setOnClickListener(ae1);
                } else
                {
                    ag1.i[k1].getImageView().setOnClickListener(null);
                }
                k1++;
            }
            ag1.b.setOnClickListener(ae1);
            ag1.d.setOnClickListener(ae1);
            ag1.e.setOnClickListener(ae1);
            ag1.f.setOnClickListener(ae1);
            ag1.c.setOnClickListener(ae1);
        }
        ((android.view.ViewGroup.MarginLayoutParams)ag1.i[0].getLayoutParams()).setMargins(0, 0, 0, 0);
        if (flag4)
        {
            ag1.j.setVisibility(0);
        } else
        {
            ag1.j.setVisibility(8);
        }
        if (flag5)
        {
            int l1 = ag1.h.getContext().getResources().getDimensionPixelSize(at.row_padding);
            ag1.h.setPadding(l1, ag1.h.getPaddingTop(), l1, 0);
        }
    }
}
