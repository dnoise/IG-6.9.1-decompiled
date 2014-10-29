// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;

// Referenced classes of package com.instagram.creation.video.ui:
//            s

public final class r extends PopupWindow
{

    private s a;

    public r(Context context, s s1)
    {
        super(a(context, s1), -2, -2, false);
        a = s1;
    }

    private static View a(Context context, s s1)
    {
        View view = LayoutInflater.from(context).inflate(aw.tooltip_popup_window, null, false);
        view.findViewById(av.tooltip_popup_window_container).setBackgroundResource(s.a(s1));
        TextView textview = (TextView)view.findViewById(av.tooltip_bold_text);
        TextView textview1;
        if (s.b(s1) != 0)
        {
            textview.setText(s.b(s1));
        } else
        {
            textview.setVisibility(8);
        }
        textview1 = (TextView)view.findViewById(av.tooltip_plain_text);
        if (s.c(s1) != 0)
        {
            textview1.setText(s.c(s1));
            return view;
        } else
        {
            textview1.setVisibility(8);
            return view;
        }
    }

    public final s a()
    {
        return a;
    }
}
