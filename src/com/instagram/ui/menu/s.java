// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RadioGroup;
import com.facebook.aw;
import com.instagram.common.y.e;
import java.util.List;

// Referenced classes of package com.instagram.ui.menu:
//            t, g, CheckRadioButton, h

public final class s
{

    public static View a(Context context)
    {
        RadioGroup radiogroup = new RadioGroup(context);
        t t1 = new t();
        t1.a = radiogroup;
        radiogroup.setTag(t1);
        return radiogroup;
    }

    public static void a(View view, Context context, g g1)
    {
        t t1 = (t)view.getTag();
        List list = g1.a();
        android.widget.RadioGroup.LayoutParams layoutparams = new android.widget.RadioGroup.LayoutParams(-1, -2, 16F);
        t1.a.setOnCheckedChangeListener(null);
        if (list != null && !list.isEmpty())
        {
            String s1 = g1.b();
            t1.a.removeAllViews();
            int i = 0;
            CheckRadioButton checkradiobutton = null;
            while (i < list.size()) 
            {
                CheckRadioButton checkradiobutton1 = (CheckRadioButton)LayoutInflater.from(context).inflate(aw.row_check_radio_button_item, null);
                checkradiobutton1.setText(((h)list.get(i)).b());
                checkradiobutton1.setLayoutParams(layoutparams);
                checkradiobutton1.setId(i);
                t1.a.addView(checkradiobutton1);
                LayoutInflater.from(context).inflate(aw.row_check_radio_button_divider, t1.a);
                if ((!e.c(s1) || i != 0) && (e.c(s1) || !s1.equals(((h)list.get(i)).a())))
                {
                    checkradiobutton1 = checkradiobutton;
                }
                i++;
                checkradiobutton = checkradiobutton1;
            }
            if (checkradiobutton != null)
            {
                checkradiobutton.setChecked(true);
            }
        }
        t1.a.setOnCheckedChangeListener(g1.c());
    }
}
