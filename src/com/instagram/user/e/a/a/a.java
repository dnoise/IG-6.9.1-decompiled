// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.e.a.a;

import android.content.Context;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.common.y.e;
import com.instagram.user.follow.FollowButton;
import com.instagram.user.follow.h;

// Referenced classes of package com.instagram.user.e.a.a:
//            f, b, c, d, 
//            e

public final class a
{

    public static View a(Context context, ViewGroup viewgroup, h h1)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_requested_user, viewgroup, false);
        f f1 = new f();
        f.a(f1, view);
        f.a(f1, (CircularImageView)view.findViewById(av.row_user_imageview));
        f.a(f1, (TextView)view.findViewById(av.row_user_username));
        f.b(f1, (TextView)view.findViewById(av.row_user_fullname));
        f.b(f1, view.findViewById(av.row_requested_user_approval_actions));
        f.c(f1, view.findViewById(av.row_requested_user_accept));
        f.d(f1, view.findViewById(av.row_requested_user_ignore));
        FollowButton followbutton;
        if (h1 == h.b)
        {
            followbutton = (FollowButton)view.findViewById(av.row_requested_user_follow_button_large);
        } else
        {
            followbutton = (FollowButton)view.findViewById(av.row_requested_user_follow_button_medium);
        }
        f.a(f1, followbutton);
        view.setTag(f1);
        return view;
    }

    public static void a(com.instagram.user.e.a.a.e e1, f f1, com.instagram.user.c.a a1, int i, boolean flag)
    {
        f.a(f1).setOnClickListener(new b(e1, i));
        f.b(f1).setUrl(a1.f());
        f.c(f1).setText(a1.b());
        if (e.c(a1.c()))
        {
            f.d(f1).setVisibility(8);
        } else
        {
            f.d(f1).setText(a1.c());
            f.d(f1).setVisibility(0);
        }
        com.instagram.user.e.a.a.f.e(f1).setOnClickListener(new c(e1, i));
        f.f(f1).setOnClickListener(new d(e1, i));
        f.g(f1).a(a1, ((Fragment)e1).z());
        if (flag && !a1.A())
        {
            com.instagram.user.e.a.a.f.h(f1).setVisibility(8);
            f.g(f1).setVisibility(0);
            return;
        } else
        {
            com.instagram.user.e.a.a.f.h(f1).setVisibility(0);
            f.g(f1).setVisibility(8);
            return;
        }
    }
}
