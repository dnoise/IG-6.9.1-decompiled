// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.a;

import android.content.Context;
import android.support.v4.app.an;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.android.i.a.a;
import com.instagram.android.i.d;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.common.y.e;
import com.instagram.user.follow.FollowButton;
import com.instagram.user.follow.h;
import java.util.List;

// Referenced classes of package com.instagram.android.k.a:
//            j, g, h, i

public class f
{

    public f()
    {
    }

    protected View a(Context context)
    {
        return LayoutInflater.from(context).inflate(aw.row_user, null);
    }

    public View a(Context context, h h1, h h2, boolean flag)
    {
        View view = a(context);
        j j1 = new j();
        j1.a = view;
        j1.b = view.findViewById(av.row_user_container);
        j1.c = (CircularImageView)view.findViewById(av.row_user_imageview);
        j1.d = (TextView)view.findViewById(av.row_user_fullname);
        j1.e = (TextView)view.findViewById(av.row_user_username);
        j1.f = (ViewGroup)view.findViewById(av.row_user_follow_button_container);
        if (j1.f != null)
        {
            if (h1 == h.b || h2 == h.b)
            {
                j1.g = (FollowButton)LayoutInflater.from(context).inflate(aw.follow_button_large, j1.f, false);
            } else
            {
                j1.g = (FollowButton)LayoutInflater.from(context).inflate(aw.follow_button_medium, j1.f, false);
            }
            j1.g.setVisibility(8);
            j1.f.addView(j1.g);
        }
        j1.h = view.findViewById(av.bottom_row_divider);
        j1.i = (ViewGroup)view.findViewById(av.similar_accounts_container);
        if (flag && j1.i != null)
        {
            j1.i.addView(com.instagram.android.i.a.a.a(context, null, h.a, h2, j1.c));
            j1.i.setVisibility(8);
        }
        view.setTag(j1);
        return view;
    }

    public final void a(j j1, com.instagram.user.c.a a1, boolean flag, boolean flag1, boolean flag2, boolean flag3, an an, 
            s s, List list, d d)
    {
        j1.c.setUrl(a1.f());
        String s1;
        if (flag1 && !e.c(a1.E()))
        {
            s1 = a1.E();
        } else
        {
            s1 = a1.c();
        }
        if (e.c(s1))
        {
            j1.d.setVisibility(8);
        } else
        {
            j1.d.setVisibility(0);
            j1.d.setText(s1);
        }
        j1.e.setText(a1.b());
        if (!flag) goto _L2; else goto _L1
_L1:
        j1.g.setVisibility(0);
        j1.g.a(a1, an, false, new g(this, d, a1));
        if (list != null && !list.isEmpty())
        {
            com.instagram.android.i.a.a.a((com.instagram.android.i.a.e)j1.i.getChildAt(0).getTag(), list, an, s, new com.instagram.android.k.a.h(this, j1, d, a1), a1.g(), "follow_list");
            j1.i.setVisibility(0);
            j1.h.setVisibility(8);
        } else
        {
            j1.i.setVisibility(8);
            j1.h.setVisibility(0);
        }
_L4:
        if (flag2)
        {
            j1.b.setOnClickListener(new i(this, flag3, d, a1, s));
        }
        if (flag3)
        {
            j1.h.setBackgroundResource(as.white);
            j1.b.setBackgroundResource(au.bg_simple_row_grey);
        }
        j1.a.setTag(j1);
        return;
_L2:
        if (j1.g != null)
        {
            j1.g.setVisibility(8);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
