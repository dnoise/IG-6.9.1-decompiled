// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.ui.colorfilter.a;
import com.instagram.common.ui.widget.imageview.IgImageView;
import com.instagram.feed.e.b;
import com.instagram.feed.f.c;
import com.instagram.feed.f.e;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.a.b:
//            ab, y, z, aa

public final class x
{

    public static View a(Context context, c c1)
    {
        View view = LayoutInflater.from(context).inflate(aw.pepper_megaphone, null);
        ab ab1 = new ab();
        com.instagram.android.a.b.ab.a(ab1, view);
        com.instagram.android.a.b.ab.a(ab1, (IgImageView)view.findViewById(av.icon));
        com.instagram.android.a.b.ab.a(ab1, (TextView)view.findViewById(av.text));
        com.instagram.android.a.b.ab.b(ab1, (TextView)view.findViewById(av.button));
        com.instagram.android.a.b.ab.b(ab1, view.findViewById(av.dismiss_button));
        view.setTag(ab1);
        com.instagram.android.a.b.ab.a(ab1).setUrl(c1.b());
        SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder();
        for (Iterator iterator = c1.c().iterator(); iterator.hasNext(); spannablestringbuilder.append(((e)iterator.next()).a())) { }
        com.instagram.android.a.b.ab.b(ab1).setText(spannablestringbuilder);
        com.instagram.android.a.b.ab.c(ab1).setText(c1.d());
        int i = context.getResources().getColor(as.accent_blue_medium);
        android.graphics.ColorFilter colorfilter = com.instagram.common.ui.colorfilter.a.a(i);
        com.instagram.android.a.b.ab.c(ab1).getBackground().mutate().setColorFilter(colorfilter);
        com.instagram.android.a.b.ab.c(ab1).setTextColor(i);
        return view;
    }

    public static void a(Context context, ab ab1, b b)
    {
        ab.d(ab1).setOnClickListener(new y(b));
        ab.d(ab1).setOnLongClickListener(new z(context, b));
        com.instagram.android.a.b.ab.e(ab1).setOnClickListener(new aa(b));
    }
}
