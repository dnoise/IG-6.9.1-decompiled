// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.a.r;
import com.instagram.android.maps.b.h;
import com.instagram.android.maps.e.a;
import com.instagram.android.widget.j;
import com.instagram.common.ui.widget.imageview.IgImageView;
import com.instagram.common.y.f;

// Referenced classes of package com.instagram.android.a.b:
//            am, al

public final class ak
{

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_review_map, null);
        am am1 = new am();
        am1.c = (TextView)view.findViewById(av.row_review_map_textview_expanded_copy);
        am1.a = (TextView)view.findViewById(av.row_review_map_textview_count);
        am1.b = (IgImageView)view.findViewById(av.row_review_map_imageview);
        am1.d = (ImageView)view.findViewById(av.row_review_map_button_deselect_cluster);
        view.setTag(am1);
        return view;
    }

    public static void a(Context context, am am1, r r1)
    {
        am1.a.setText(Integer.toString(r1.c));
        boolean flag;
        ImageView imageview;
        char c;
        if (r1.c > 1)
        {
            TextView textview1 = am1.c;
            int k = az.you_geotagged_x_photos_near_here;
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.toString(r1.c);
            textview1.setText(context.getString(k, aobj1));
        } else
        {
            TextView textview = am1.c;
            int i = az.you_geotagged_x_photo_near_here;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.toString(r1.c);
            textview.setText(context.getString(i, aobj));
        }
        am1.b.setUrl(j.a(am1.b.getResources().getDisplayMetrics().density, null, "12", f.a(am1.b.getContext()), context.getResources().getDimensionPixelSize(at.map_height), Double.valueOf(r1.b.c()), Double.valueOf(r1.b.f())));
        flag = com.instagram.android.maps.e.a.a().b(r1.a.g());
        imageview = am1.d;
        if (flag)
        {
            c = '\200';
        } else
        {
            c = '\377';
        }
        imageview.setAlpha(c);
        am1.d.setOnClickListener(new al(r1, am1));
    }
}
