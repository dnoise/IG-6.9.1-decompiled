// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.a.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.j.d.c;

// Referenced classes of package com.instagram.j.a.a:
//            d, c, a

public final class b
{

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_newsfeed_story_group_follow_request, null);
        d d1 = new d();
        d1.a = view;
        d1.b = (CircularImageView)view.findViewById(av.row_newsfeed_user_imageview);
        d1.c = (TextView)view.findViewById(av.newsfeed_group_follow_request_count);
        view.setTag(d1);
        return view;
    }

    public static void a(d d1, c c1, a a1)
    {
        d1.a.setOnClickListener(new com.instagram.j.a.a.c(a1));
        d1.b.setUrl(c1.e());
        d1.c.setText(Integer.toString(c1.j()));
    }
}
