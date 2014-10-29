// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.comments.a;

import android.content.Context;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.common.y.f;
import com.instagram.feed.d.b;
import com.instagram.feed.d.c;
import com.instagram.feed.d.d;

// Referenced classes of package com.instagram.feed.comments.a:
//            h, b, c, d, 
//            g

public final class a
{

    private final g a;

    public a(g g)
    {
        a = g;
    }

    public static View a(Context context, ViewGroup viewgroup)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_comment, viewgroup, false);
        a(view);
        return view;
    }

    static g a(a a1)
    {
        return a1.a;
    }

    private static void a(View view)
    {
        h h1 = new h();
        h1.a = view;
        h1.b = (CircularImageView)view.findViewById(av.row_comment_imageview);
        h1.c = (TextView)view.findViewById(av.row_comment_textview_comment);
        h1.d = (TextView)view.findViewById(av.row_comment_textview_time_ago);
        h1.e = (Button)view.findViewById(av.row_comment_button_action);
        h1.f = (ProgressBar)view.findViewById(av.row_comment_progressbar);
        h1.g = view.findViewById(av.row_caption_divider);
        view.setTag(h1);
    }

    public static View b(Context context, ViewGroup viewgroup)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_caption_comment, viewgroup, false);
        a(view);
        return view;
    }

    public final void a(Context context, h h1, b b1, boolean flag)
    {
        View view = h1.a;
        int i;
        if (flag)
        {
            i = 2 * h1.a.getPaddingTop();
        } else
        {
            i = h1.a.getPaddingTop();
        }
        f.a(view, i);
        if (b1.i() == d.b)
        {
            View view1 = h1.g;
            byte byte0;
            if (flag)
            {
                byte0 = 8;
            } else
            {
                byte0 = 0;
            }
            view1.setVisibility(byte0);
        }
        h1.b.setUrl(b1.g().f());
        h1.b.setOnClickListener(new com.instagram.feed.comments.a.b(this, b1));
        if (b1.h() == c.b)
        {
            h1.e.setVisibility(0);
            h1.e.setText(az.failed);
            h1.e.setOnClickListener(new com.instagram.feed.comments.a.c(this, b1));
        } else
        {
            h1.e.setVisibility(8);
        }
        h1.c.setText(com.instagram.feed.d.f.a().a(b1));
        h1.c.setMovementMethod(LinkMovementMethod.getInstance());
        h1.d.setText(b1.a(context));
        if (b1.h() == c.c)
        {
            h1.f.setVisibility(0);
        } else
        {
            h1.f.setVisibility(8);
        }
        h1.a.setLongClickable(true);
        h1.a.setOnTouchListener(new com.instagram.feed.comments.a.d(this, context, h1, b1));
    }
}
