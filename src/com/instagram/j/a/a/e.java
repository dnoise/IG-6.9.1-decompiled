// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.text.method.LinkMovementMethod;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.common.ui.widget.imageview.IgImageView;
import com.instagram.j.a;
import com.instagram.j.d.c;
import com.instagram.j.d.f;
import com.instagram.ui.widget.flowlayout.HorizontalFlowLayout;
import java.util.List;

// Referenced classes of package com.instagram.j.a.a:
//            h, f, g, a

public final class e
{

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_newsfeed_story_multi_media, null);
        h h1 = new h();
        h1.a = (CircularImageView)view.findViewById(av.row_newsfeed_user_imageview);
        h1.b = (TextView)view.findViewById(av.row_newsfeed_text);
        h1.c = (HorizontalFlowLayout)view.findViewById(av.row_newsfeed_media_set);
        view.setTag(h1);
        return view;
    }

    public static void a(Context context, h h1, c c1, com.instagram.j.a.a.a a1)
    {
        h1.a.setUrl(c1.e());
        h1.a.setOnClickListener(new com.instagram.j.a.a.f(a1, c1));
        h1.b.setText(com.instagram.j.a.a(context, c1, a1));
        h1.b.setMovementMethod(LinkMovementMethod.getInstance());
        h1.c.removeAllViews();
        int i = c1.h().size();
        for (int j = 0; j < i; j++)
        {
            IgImageView igimageview = (IgImageView)LayoutInflater.from(context).inflate(aw.newsfeed_media_imageview, null);
            igimageview.setUrl(((f)c1.h().get(j)).b());
            igimageview.setOnClickListener(new g(a1, c1, j));
            int k = (int)com.instagram.common.y.f.a(context.getResources().getDisplayMetrics(), context.getResources().getDimension(at.row_height_small) / context.getResources().getDisplayMetrics().density);
            igimageview.setLayoutParams(new android.widget.LinearLayout.LayoutParams(k, k));
            if (i < 5 || j >= 5)
            {
                com.instagram.common.y.f.a(igimageview, 0);
            }
            h1.c.addView(igimageview);
        }

    }
}
