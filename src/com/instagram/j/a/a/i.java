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
import com.instagram.common.ui.widget.imageview.IgImageView;
import com.instagram.j.a;
import com.instagram.j.d.c;

// Referenced classes of package com.instagram.j.a.a:
//            l, j, k, a

public final class i
{

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_newsfeed_story_single_media, null);
        l l1 = new l();
        l1.a = (CircularImageView)view.findViewById(av.row_newsfeed_user_imageview);
        l1.b = (TextView)view.findViewById(av.row_newsfeed_text);
        l1.c = (IgImageView)view.findViewById(av.row_newsfeed_media_image);
        view.setTag(l1);
        return view;
    }

    public static void a(Context context, l l1, c c1, com.instagram.j.a.a.a a1)
    {
        l1.a.setUrl(c1.e());
        l1.a.setOnClickListener(new j(a1, c1));
        l1.b.setText(com.instagram.j.a.a(context, c1, a1));
        l1.b.setMovementMethod(LinkMovementMethod.getInstance());
        l1.c.setUrl(c1.g());
        l1.c.setOnClickListener(new k(a1, c1));
    }
}
