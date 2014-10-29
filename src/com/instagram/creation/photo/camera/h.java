// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.camera;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.facebook.as;
import com.instagram.l.b.a;

// Referenced classes of package com.instagram.creation.photo.camera:
//            c

final class h
    implements android.view.View.OnClickListener
{

    final View a;
    final a b;
    final c c;

    h(c c1, View view, a a1)
    {
        c = c1;
        a = view;
        b = a1;
        super();
    }

    public final void onClick(View view)
    {
        if (a.getVisibility() == 0)
        {
            a.setVisibility(8);
            com.instagram.creation.photo.camera.c.i(c).getDrawable().mutate().setColorFilter(null);
            b.a(false);
            return;
        } else
        {
            a.setVisibility(0);
            com.instagram.creation.photo.camera.c.i(c).getDrawable().mutate().setColorFilter(com.instagram.common.ui.colorfilter.a.a(c.o().getColor(as.accent_blue_medium)));
            b.a(true);
            return;
        }
    }
}
