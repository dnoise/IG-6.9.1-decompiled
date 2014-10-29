// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.a.a;

import android.content.Context;
import android.support.v4.app.an;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.j.a;
import com.instagram.j.d.c;
import com.instagram.user.follow.FollowButton;

// Referenced classes of package com.instagram.j.a.a:
//            p, n, o, a

public final class m
{

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_newsfeed_story_user_follow, null);
        p p1 = new p();
        p1.a = (CircularImageView)view.findViewById(av.row_newsfeed_user_imageview);
        p1.b = (TextView)view.findViewById(av.row_newsfeed_text);
        p1.c = view.findViewById(av.row_newsfeed_follow_button_holder);
        p1.d = (FollowButton)view.findViewById(av.row_newsfeed_follow_button);
        view.setTag(p1);
        return view;
    }

    public static void a(Context context, an an, p p1, c c1, com.instagram.j.a.a.a a1)
    {
        p1.a.setUrl(c1.e());
        p1.a.setOnClickListener(new n(a1, c1));
        p1.b.setText(com.instagram.j.a.a(context, c1, a1));
        p1.b.setMovementMethod(LinkMovementMethod.getInstance());
        if (c1.i() != null)
        {
            p1.c.setVisibility(0);
            p1.d.setVisibility(0);
            p1.d.a(c1.i(), an, false, new o(a1, c1));
            return;
        } else
        {
            p1.c.setVisibility(8);
            p1.d.setVisibility(8);
            return;
        }
    }
}
