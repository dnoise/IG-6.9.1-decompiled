// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.maps.e.a;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.instagram.android.a.b:
//            aj, ai

public final class ah
{

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_review_photo_map, null);
        aj aj1 = new aj();
        aj1.a = (TextView)view.findViewById(av.row_review_photo_map_textview);
        view.setTag(aj1);
        return view;
    }

    public static void a(Context context, aj aj1)
    {
        boolean flag;
        String s;
        String s1;
        SpannableStringBuilder spannablestringbuilder;
        ai ai1;
        if (com.instagram.android.maps.e.a.a().h() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            s = context.getResources().getString(az.please_select_the_photos_deselect_link);
        } else
        {
            s = context.getResources().getString(az.please_select_the_photos_select_link);
        }
        s1 = String.format(context.getResources().getString(az.please_select_the_photos), new Object[] {
            s
        });
        spannablestringbuilder = new SpannableStringBuilder(s1);
        ai1 = new ai(context, flag);
        aj1.a.setMovementMethod(LinkMovementMethod.getInstance());
        for (Matcher matcher = Pattern.compile((new StringBuilder("(")).append(s).append(")").toString(), 2).matcher(s1); matcher.find(); spannablestringbuilder.setSpan(ai1, matcher.start(1), matcher.end(1), 33)) { }
        aj1.a.setText(spannablestringbuilder);
    }
}
