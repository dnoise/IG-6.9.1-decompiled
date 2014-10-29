// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.at;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.feed.ui.e;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.a.d;
import com.instagram.service.a.a;

// Referenced classes of package com.instagram.android.a.b:
//            w, u, r, s, 
//            t

public final class q
{

    public static View a(Context context, int i)
    {
        LayoutInflater layoutinflater = LayoutInflater.from(context);
        int j;
        View view;
        u u1;
        if (i == com.instagram.android.a.b.w.a)
        {
            j = aw.row_pending_media;
        } else
        {
            j = aw.row_pending_direct_share;
        }
        view = layoutinflater.inflate(j, null);
        u1 = new u();
        u1.b = (ImageView)view.findViewById(av.row_pending_media_imageview);
        u1.c = (ImageView)view.findViewById(av.row_pending_media_imageview_overlay);
        u1.d = view.findViewById(av.row_pending_media_retry_button);
        u1.e = view.findViewById(av.row_pending_media_cancel_button);
        u1.f = (ProgressBar)view.findViewById(av.row_pending_media_progress_bar);
        u1.g = (TextView)view.findViewById(av.row_pending_media_text_view_status);
        u1.h = (CircularImageView)view.findViewById(av.row_pending_media_user_profile);
        u1.i = view.findViewById(av.vertical_divider);
        u1.j = view.findViewById(av.row_pending_media_imageview_container);
        a(u1.f);
        view.setTag(u1);
        return view;
    }

    public static void a(Context context, u u1, b b1)
    {
        if (u1.a != null && u1.a.y() == u1)
        {
            u1.a.a(null);
        }
        u1.a = b1;
        b1.a(u1);
        u1.b.setImageURI(Uri.parse(b1.k()));
        com.instagram.creation.b.c.a a1;
        if (b1.P())
        {
            u1.h.setUrl(com.instagram.service.a.a.a().b().f());
        } else
        if (b1.O())
        {
            u1.c.setBackgroundResource(au.grid_camera_icon_small);
        } else
        {
            u1.c.setBackgroundDrawable(null);
        }
        b(u1, b1);
        a1 = com.instagram.creation.b.c.a.a(context);
        u1.d.setOnClickListener(new r(a1, b1, context));
        u1.e.setOnClickListener(new s(a1, b1, context));
    }

    private static void a(ProgressBar progressbar)
    {
        ((LayerDrawable)progressbar.getProgressDrawable()).setDrawableByLayerId(0x102000d, new com.instagram.android.feed.ui.a(progressbar.getResources().getDrawable(au.upload_track)));
        int i = progressbar.getResources().getDimensionPixelSize(at.indeterminate_progress_foreground_width);
        ((LayerDrawable)progressbar.getIndeterminateDrawable()).setDrawableByLayerId(0x102000d, new e(progressbar.getResources().getDrawable(au.upload_track), i));
    }

    static void a(u u1, b b1)
    {
        b(u1, b1);
    }

    private static void b(u u1, b b1)
    {
        u1.g.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        u1.g.setPadding(0, 0, 0, 0);
        if (!b1.w() && b1.z() != d.c)
        {
            u1.d.setVisibility(0);
            u1.e.setVisibility(0);
            u1.i.setVisibility(0);
            u1.f.setVisibility(8);
            u1.g.setText(az.failed_to_upload);
            u1.g.setVisibility(0);
            if (!b1.P())
            {
                u1.j.setVisibility(0);
            }
            return;
        }
        u1.d.setVisibility(8);
        u1.e.setVisibility(8);
        u1.i.setVisibility(8);
        if (!b1.P())
        {
            u1.j.setVisibility(8);
        }
        switch (com.instagram.android.a.b.t.a[b1.z().ordinal()])
        {
        default:
            TextView textview;
            int i;
            Drawable drawable;
            if (b1.n() == com.instagram.model.a.a.a)
            {
                u1.f.setIndeterminate(true);
                u1.f.setBackgroundResource(au.upload_indeterminate_background);
            } else
            {
                u1.f.setIndeterminate(false);
                u1.f.setBackgroundDrawable(null);
                u1.f.setProgress(b1.x());
            }
            u1.g.setVisibility(8);
            u1.f.setVisibility(0);
            return;

        case 1: // '\001'
        case 2: // '\002'
            break;
        }
        if (!b1.P())
        {
            drawable = u1.g.getResources().getDrawable(au.check).mutate();
            drawable.setColorFilter(com.instagram.common.ui.colorfilter.a.a(u1.g.getResources().getColor(as.grey_medium)));
            u1.g.setCompoundDrawablesWithIntrinsicBounds(drawable, null, null, null);
            u1.g.setPadding(u1.b.getPaddingLeft(), 0, 0, 0);
        }
        textview = u1.g;
        if (b1.P())
        {
            i = az.directshare_sending;
        } else
        {
            i = az.finishing_up;
        }
        textview.setText(i);
        u1.g.setVisibility(0);
        u1.f.setVisibility(4);
    }
}
