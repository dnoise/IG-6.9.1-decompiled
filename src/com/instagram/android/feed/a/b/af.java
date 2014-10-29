// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.app.an;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.at;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.a.b.k;
import com.instagram.android.a.b.n;
import com.instagram.android.i.a.a;
import com.instagram.android.i.a.e;
import com.instagram.android.i.d;
import com.instagram.android.people.widget.ProfileTagsButton;
import com.instagram.android.widget.ProfileMapButton;
import com.instagram.android.widget.ae;
import com.instagram.common.ui.widget.imageview.IgImageView;
import com.instagram.common.y.f;
import com.instagram.user.follow.ChainingButton;
import com.instagram.user.follow.FollowButton;
import com.instagram.user.follow.h;
import java.util.List;

// Referenced classes of package com.instagram.android.feed.a.b:
//            as, ag, aj, ak, 
//            al, am, an, ao, 
//            ap, ah, ai, aq, 
//            ar

public final class af
{

    public static View a(Context context, h h1)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_profile_header, null, false);
        as as1 = new as();
        as1.a = view;
        as1.c = view.findViewById(av.row_friend_request_header);
        k.a(as1.c);
        as1.d = (IgImageView)view.findViewById(av.row_profile_header_imageview);
        as1.e = view.findViewById(av.row_profile_header_container_photos);
        as1.f = (TextView)view.findViewById(av.row_profile_header_textview_photos_count);
        as1.g = view.findViewById(av.row_profile_header_container_followers);
        as1.h = (TextView)view.findViewById(av.row_profile_header_textview_followers_count);
        as1.i = view.findViewById(av.row_profile_header_container_following);
        as1.j = (TextView)view.findViewById(av.row_profile_header_textview_following_count);
        as1.k = (FollowButton)view.findViewById(av.row_profile_header_button_follow);
        as1.l = (ChainingButton)view.findViewById(av.row_profile_header_button_chaining);
        as1.u = (TextView)view.findViewById(av.row_profile_header_edit_profile);
        as1.m = view.findViewById(av.profile_container);
        as1.n = (TextView)view.findViewById(av.row_profile_header_textview_biography);
        as1.b = (TextView)view.findViewById(av.row_profile_header_textview_fullname);
        as1.o = (TextView)view.findViewById(av.row_profile_header_textview_website);
        as1.p = (ViewGroup)view.findViewById(av.layout_button_group_view_switcher_buttons);
        as1.q = view.findViewById(av.layout_button_group_view_switcher_button_grid);
        as1.r = view.findViewById(av.layout_button_group_view_switcher_button_list);
        as1.s = (ProfileMapButton)view.findViewById(av.layout_button_group_view_switcher_button_map);
        as1.t = (ProfileTagsButton)view.findViewById(av.layout_button_group_view_switcher_button_tagged);
        as1.v = (ViewGroup)view.findViewById(av.similar_accounts_container);
        as1.v.addView(com.instagram.android.i.a.a.a(context, null, h.b, h1, as1.d));
        as1.v.setVisibility(8);
        view.setTag(as1);
        return view;
    }

    private static String a(Integer integer)
    {
        if (integer != null)
        {
            int i = integer.intValue();
            if (i < 0x186a0)
            {
                return integer.toString();
            }
            if (i < 0xf4240)
            {
                double d1 = Math.round((double)i / 1000D);
                Object aobj1[] = new Object[1];
                aobj1[0] = Double.valueOf(d1);
                return String.format("%.0fk", aobj1);
            } else
            {
                double d = (double)Math.round((double)i / 10000D) / 100D;
                Object aobj[] = new Object[1];
                aobj[0] = Double.valueOf(d);
                return String.format("%.2fm", aobj);
            }
        }
        if (integer == null)
        {
            return "";
        } else
        {
            return integer.toString();
        }
    }

    public static void a(as as1, com.instagram.user.c.a a1, int i, boolean flag, boolean flag1, List list, Context context, an an1, 
            s s, com.instagram.android.feed.a.n n1, ar ar, d d)
    {
        as1.s.setVisibility(0);
        as1.t.setVisibility(0);
        if (a1 != null)
        {
            k.a((n)as1.c.getTag(), a1, context, an1, ar);
            boolean flag2;
            int j;
            if (a1.f() != null)
            {
                as1.d.setUrl(a1.f());
            } else
            {
                as1.d.setImageDrawable(context.getResources().getDrawable(au.profile_anonymous_user));
            }
            as1.d.setOnClickListener(new ag(ar));
            as1.s.setOnClickListener(new aj(ar));
            as1.f.setText(a(a1.p()));
            as1.h.setText(a(a1.l()));
            as1.j.setText(a(a1.o()));
            if (com.instagram.user.a.a.b(a1))
            {
                as1.e.setOnClickListener(new ak(as1));
                as1.g.setOnClickListener(new al(s, context, a1));
                as1.i.setOnClickListener(new am(s, context, a1));
            }
            if (a(a1))
            {
                as1.k.setVisibility(0);
                as1.k.a(a1, an1, true, new com.instagram.android.feed.a.b.an(d, a1));
                View view;
                if (flag && a(list))
                {
                    as1.l.setVisibility(0);
                    as1.l.a(a1.t(), flag1);
                    if (!flag1)
                    {
                        as1.l.setOnClickListener(new ao(d, a1));
                    }
                } else
                {
                    as1.l.setVisibility(8);
                    as1.l.setOnClickListener(null);
                }
                if (flag1 && a(list))
                {
                    com.instagram.android.i.a.a.a((e)as1.v.getChildAt(0).getTag(), list, an1, s, new ap(as1, d, a1), a1.g(), "profile");
                    as1.v.setVisibility(0);
                } else
                {
                    as1.v.setVisibility(8);
                }
            } else
            {
                as1.k.setVisibility(8);
                as1.k.setOnClickListener(null);
                as1.l.setVisibility(8);
                as1.l.setOnClickListener(null);
                as1.u.setVisibility(0);
                as1.u.setOnClickListener(new aq(s));
            }
            if (!com.instagram.common.y.e.c(a1.c()))
            {
                as1.b.setText(a1.c());
                as1.b.setVisibility(0);
            } else
            {
                as1.b.setVisibility(8);
            }
            if (!com.instagram.common.y.e.c(a1.j()))
            {
                as1.n.setText(a1.j());
                as1.n.setVisibility(0);
            } else
            {
                as1.n.setVisibility(8);
            }
            if (!com.instagram.common.y.e.c(a1.k()))
            {
                as1.o.setText(a1.k().replaceFirst("^https?://", ""));
                as1.o.setVisibility(0);
                as1.o.setOnClickListener(new ah(a1, context));
            } else
            {
                as1.o.setVisibility(8);
            }
            if (com.instagram.common.y.e.c(a1.j()) && com.instagram.common.y.e.c(a1.k()) && com.instagram.common.y.e.c(a1.c()))
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            view = as1.m;
            if (flag2)
            {
                j = 0;
            } else
            {
                j = context.getResources().getDimensionPixelSize(at.row_padding);
            }
            f.a(view, j);
            as1.t.setOnClickListener(new ai(a1, s));
            as1.t.setUser(a1);
            as1.t.setPhotosOfYouCount(i);
            if (com.instagram.user.a.a.b(a1))
            {
                as1.p.setVisibility(0);
                ae.a(as1.q, as1.r, n1);
                as1.s.setUser(a1);
                return;
            } else
            {
                as1.p.setVisibility(8);
                return;
            }
        }
        as1.d.setImageDrawable(context.getResources().getDrawable(au.profile_anonymous_user));
        as1.f.setText("-");
        as1.h.setText("-");
        as1.j.setText("-");
        as1.c.setVisibility(8);
        as1.o.setVisibility(8);
        if (n1.s())
        {
            as1.n.setText(az.user_not_found);
        } else
        if (n1.t())
        {
            as1.n.setText(az.request_error);
        } else
        {
            as1.n.setText(az.loading);
        }
        as1.p.setVisibility(8);
    }

    private static boolean a(com.instagram.user.c.a a1)
    {
        com.instagram.service.a.a.a();
        return com.instagram.service.a.a.d() && !com.instagram.user.a.a.a(a1);
    }

    private static boolean a(List list)
    {
        return list != null && !list.isEmpty();
    }
}
