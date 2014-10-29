// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;

// Referenced classes of package com.instagram.ui.menu:
//            z, ab

public final class y
{

    public static View a(Context context, ViewGroup viewgroup)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_text, viewgroup, false);
        z z1 = new z();
        z.a(z1, (TextView)view.findViewById(av.row_text_textview));
        view.setTag(z1);
        return view;
    }

    public static void a(z z1, ab ab1)
    {
        z.a(z1).setText(ab1.a());
    }
}
