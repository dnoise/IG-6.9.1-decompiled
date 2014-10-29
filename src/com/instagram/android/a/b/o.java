// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.android.g.c;
import com.instagram.android.util.d;
import com.instagram.common.y.e;

// Referenced classes of package com.instagram.android.a.b:
//            p

public final class o
{

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_hashtag, null);
        p p1 = new p();
        p.a(p1, (TextView)view.findViewById(av.row_hashtag_textview_tag_name));
        p.b(p1, (TextView)view.findViewById(av.row_hashtag_textview_media_count));
        view.setTag(p1);
        return view;
    }

    public static void a(p p1, c c1, Context context)
    {
        TextView textview = p.a(p1);
        Object aobj[] = new Object[1];
        aobj[0] = c1.a();
        textview.setText(String.format("#%s", aobj));
        String s = d.a(context.getResources(), c1.b());
        if (e.c(s))
        {
            p.b(p1).setVisibility(8);
            return;
        } else
        {
            p.b(p1).setVisibility(0);
            p.b(p1).setText(s);
            return;
        }
    }
}
