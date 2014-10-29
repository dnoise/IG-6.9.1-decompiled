// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.a.a;

import android.content.Context;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.j.a;
import com.instagram.j.d.c;

// Referenced classes of package com.instagram.j.a.a:
//            s, r, a

public final class q
{

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_newsfeed_story_user_simple, null);
        s s1 = new s();
        s1.a = (CircularImageView)view.findViewById(av.row_newsfeed_user_imageview);
        s1.b = (TextView)view.findViewById(av.row_newsfeed_text);
        view.setTag(s1);
        return view;
    }

    public static void a(Context context, s s1, c c1, com.instagram.j.a.a.a a1)
    {
        s1.a.setUrl(c1.e());
        s1.a.setOnClickListener(new r(a1, c1));
        s1.b.setText(com.instagram.j.a.a(context, c1, a1));
        s1.b.setMovementMethod(LinkMovementMethod.getInstance());
    }
}
