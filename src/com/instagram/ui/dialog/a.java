// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.dialog;

import android.app.Dialog;
import android.content.Context;
import android.support.v4.app.f;
import android.support.v4.app.s;
import android.view.View;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.az;

// Referenced classes of package com.instagram.ui.dialog:
//            b, g

public final class a
{

    public static void a(Dialog dialog)
    {
        dialog.findViewById(av.alertTitleContainer).setVisibility(8);
    }

    public static void a(Dialog dialog, boolean flag)
    {
        TextView textview = (TextView)dialog.findViewById(av.button_blue);
        byte byte0;
        if (flag)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        textview.setVisibility(byte0);
    }

    public static void a(Context context)
    {
        b b1 = new b(context);
        int i = az.x_problems;
        Object aobj[] = new Object[1];
        aobj[0] = context.getString(az.instagram);
        b1.a(context.getString(i, aobj)).b(az.dismiss, null).c().show();
    }

    public static void a(s s1)
    {
        g.W().a(s1, "progressDialog");
    }

    public static void b(Context context)
    {
        (new b(context)).a(az.error).b(az.could_not_submit_flag).b(az.dismiss, null).c().show();
    }

    public static void b(s s1)
    {
        f f1 = (f)s1.a("progressDialog");
        if (f1 != null)
        {
            f1.a();
        }
    }

    public static void c(Context context)
    {
        (new b(context)).a(az.error).b(az.request_error).b(az.dismiss, null).c().show();
    }
}
