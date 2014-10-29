// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.base.a.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            f, b, c, d, 
//            e

public final class a extends b
    implements c
{

    private Handler a;
    private final f b = new f(this, (byte)0);

    public a()
    {
        a = new Handler();
    }

    static f a(a a1)
    {
        return a1.b;
    }

    static Handler b(a a1)
    {
        return a1.a;
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.fragment_forgot_password, null);
        view.findViewById(av.fragment_forgot_password_email_username).setOnClickListener(new com.instagram.android.login.fragment.b(this));
        view.findViewById(av.fragment_forgot_password_sms).setOnClickListener(new com.instagram.android.login.fragment.c(this));
        view.findViewById(av.fragment_forgot_password_facebook).setOnClickListener(new d(this));
        view.findViewById(av.fragment_forgot_password_help_center).setOnClickListener(new e(this));
        android.graphics.ColorFilter colorfilter = com.instagram.common.ui.colorfilter.a.a(o().getColor(as.grey_2));
        ((TextView)view.findViewById(av.facebook_textview)).getCompoundDrawables()[0].mutate().setColorFilter(colorfilter);
        ((TextView)view.findViewById(av.help_textview)).getCompoundDrawables()[0].mutate().setColorFilter(colorfilter);
        return view;
    }

    public final void a(int i, int j, Intent intent)
    {
        if (j == -1)
        {
            com.facebook.b.b b1 = com.instagram.share.b.a.a();
            b1.a(b);
            b1.a(i, j, intent);
        }
        super.a(i, j, intent);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        com.instagram.p.b.ah.c();
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(az.sign_in_help);
        b1.a(true);
    }

    public final String j_()
    {
        return "forgot_password";
    }
}
