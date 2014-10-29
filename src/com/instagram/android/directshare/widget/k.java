// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.common.y.e;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.a.g;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.directshare.widget:
//            l

public final class k
{

    public k()
    {
    }

    public static void a(l l1, a a1, b b1)
    {
        l1.a.setUrl(a1.f());
        boolean flag = e.c(a1.E());
        boolean flag1 = e.c(a1.c());
        boolean flag2;
        if (flag && flag1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (flag2)
        {
            l1.b.setVisibility(8);
        } else
        {
            if (flag1)
            {
                l1.b.setText(a1.E());
            } else
            {
                l1.b.setText(a1.c());
            }
            l1.b.setVisibility(0);
        }
        l1.c.setText(a1.b());
        l1.d.setChecked(b1.N().a(a1.g()));
    }

    public final View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.directshare_row_user, null);
        l l1 = new l(this);
        l1.a = (CircularImageView)view.findViewById(av.row_user_imageview);
        l1.b = (TextView)view.findViewById(av.row_user_fullname);
        l1.c = (TextView)view.findViewById(av.row_user_username);
        l1.d = (CheckBox)view.findViewById(av.recipient_toggle);
        l1.e = view.findViewById(av.user_row_background);
        view.setTag(l1);
        return view;
    }
}
