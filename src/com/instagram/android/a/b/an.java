// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.a.q;
import com.instagram.android.maps.b.f;
import com.instagram.android.maps.e.a;

// Referenced classes of package com.instagram.android.a.b:
//            ap, ao

public final class an
{

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_review_name, null);
        ap ap1 = new ap();
        ap1.a = (TextView)view.findViewById(av.row_review_map_textview_expanded_copy);
        ap1.b = (TextView)view.findViewById(av.row_review_name_textview_name);
        ap1.c = (ImageView)view.findViewById(av.row_review_name_button_deselect_cluster);
        view.setTag(ap1);
        return view;
    }

    public static void a(Context context, ap ap1, q q1)
    {
        boolean flag;
        ImageView imageview;
        char c;
        if (q1.b > 1)
        {
            TextView textview1 = ap1.a;
            int j = az.you_geotagged_x_photos_near;
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.toString(q1.b);
            textview1.setText(context.getString(j, aobj1));
        } else
        {
            TextView textview = ap1.a;
            int i = az.you_geotagged_x_photo_near;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.toString(q1.b);
            textview.setText(context.getString(i, aobj));
        }
        ap1.b.setText(q1.c);
        flag = com.instagram.android.maps.e.a.a().b(q1.a.g());
        imageview = ap1.c;
        if (flag)
        {
            c = '\200';
        } else
        {
            c = '\377';
        }
        imageview.setAlpha(c);
        ap1.c.setOnClickListener(new ao(q1, ap1));
    }
}
