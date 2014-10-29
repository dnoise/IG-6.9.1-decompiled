// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.util.DisplayMetrics;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.av;
import com.instagram.common.y.f;
import com.instagram.creation.a.a;

// Referenced classes of package com.instagram.android.creation.a:
//            ba, ax

final class az
    implements Runnable
{

    final View a;
    final ax b;

    az(ax ax1, View view)
    {
        b = ax1;
        a = view;
        super();
    }

    public final void run()
    {
        a.findViewById(av.preview_image_spinner).setVisibility(8);
        ((FrameLayout)a.findViewById(av.preview_image_container)).setOnClickListener(new ba(this));
        ImageView imageview = (ImageView)a.findViewById(av.preview_image);
        DisplayMetrics displaymetrics = f.c(b.n());
        int i = Math.min(com.instagram.creation.a.a.a(), Math.min(displaymetrics.widthPixels, displaymetrics.heightPixels));
        imageview.setImageBitmap(com.instagram.android.creation.a.ax.a(com.instagram.android.creation.a.ax.a(b), i));
    }
}
