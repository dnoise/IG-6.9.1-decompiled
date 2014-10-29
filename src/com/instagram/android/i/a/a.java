// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.i.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.app.an;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.as;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.android.i.b;
import com.instagram.android.k.a.f;
import com.instagram.android.k.a.j;
import com.instagram.common.analytics.g;
import com.instagram.ui.widget.triangleshape.TriangleShape;
import com.instagram.user.follow.h;
import java.util.List;

// Referenced classes of package com.instagram.android.i.a:
//            e, b, c, d

public final class a
{

    public static View a(Context context, ViewGroup viewgroup, h h, h h1, View view)
    {
        View view1 = LayoutInflater.from(context).inflate(aw.similar_accounts_flyout, null, false);
        e e1 = new e();
        e1.a = (ViewGroup)view1;
        e1.c = (ImageView)view1.findViewById(av.similar_accounts_header_x);
        e1.c.getDrawable().mutate().setColorFilter(com.instagram.common.ui.colorfilter.a.a(context.getResources().getColor(as.accent_blue_medium)));
        f f1 = new f();
        e1.d = new View[3];
        for (int i = 0; i < 3; i++)
        {
            View view2 = f1.a(context, h, h1, false);
            view2.setVisibility(8);
            e1.d[i] = view2;
            e1.a.addView(view2);
        }

        e1.b = (TriangleShape)view1.findViewById(av.similar_accounts_notch);
        e1.b.setNotchCenterXOn(view);
        view1.setTag(e1);
        return view1;
    }

    public static void a(e e1, List list, an an, s s1, d d, String s2, String s3)
    {
        f f1 = new f();
        if (list != null && !list.isEmpty())
        {
            int i = 0;
            while (i < 3) 
            {
                if (i < list.size())
                {
                    f1.a((j)e1.d[i].getTag(), (com.instagram.user.c.a)list.get(i), true, true, true, true, an, s1, null, new com.instagram.android.i.a.b(s1, s2, s3));
                    e1.d[i].setVisibility(0);
                    b.a((g)s1.a(av.layout_container_main), com.instagram.android.i.a.a, s2, ((com.instagram.user.c.a)list.get(i)).g(), s3);
                } else
                {
                    e1.d[i].setVisibility(8);
                }
                i++;
            }
        }
        e1.c.setOnClickListener(new c(d, s1, s2, s3));
    }
}
