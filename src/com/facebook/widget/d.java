// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.res.Resources;
import android.view.View;
import com.facebook.az;
import com.facebook.bo;
import com.facebook.bz;
import com.facebook.ca;
import com.facebook.ch;
import com.facebook.g.p;
import com.facebook.g.q;
import com.facebook.h.h;

// Referenced classes of package com.facebook.widget:
//            LoginButton, e, c

final class d
    implements android.view.View.OnClickListener
{

    final LoginButton a;

    private d(LoginButton loginbutton)
    {
        a = loginbutton;
        super();
    }

    d(LoginButton loginbutton, byte byte0)
    {
        this(loginbutton);
    }

    public final void onClick(View view)
    {
        android.content.Context context;
        bo bo1;
        context = a.getContext();
        bo1 = LoginButton.a(a).b();
        if (bo1 == null) goto _L2; else goto _L1
_L1:
        if (!LoginButton.d(a)) goto _L4; else goto _L3
_L3:
        String s = a.getResources().getString(az.com_facebook_loginview_log_out_action);
        String s1 = a.getResources().getString(az.com_facebook_loginview_cancel_action);
        String s2;
        android.app.AlertDialog.Builder builder;
        if (LoginButton.c(a) != null && LoginButton.c(a).f() != null)
        {
            String s3 = a.getResources().getString(az.com_facebook_loginview_logged_in_as);
            Object aobj[] = new Object[1];
            aobj[0] = LoginButton.c(a).f();
            s2 = String.format(s3, aobj);
        } else
        {
            s2 = a.getResources().getString(az.com_facebook_loginview_logged_in_using_facebook);
        }
        builder = new android.app.AlertDialog.Builder(context);
        builder.setMessage(s2).setCancelable(true).setPositiveButton(s, new e(this, bo1)).setNegativeButton(s1, null);
        builder.create().show();
_L6:
        return;
_L4:
        bo1.f();
        return;
_L2:
        bo bo2 = LoginButton.a(a).a();
        if (bo2 == null || bo2.b().b())
        {
            LoginButton.a(a).a(null);
            bo2 = (new bz(context)).a(LoginButton.e(a)).a();
            bo.a(bo2);
        }
        if (!bo2.a())
        {
            ca ca1;
            if (LoginButton.f(a) != null)
            {
                ca1 = new ca(LoginButton.f(a));
            } else
            if (context instanceof Activity)
            {
                ca1 = new ca((Activity)context);
            } else
            {
                ca1 = null;
            }
            if (ca1 != null)
            {
                ca1.b(c.a(LoginButton.g(a)));
                ca1.b(c.b(LoginButton.g(a)));
                ca1.b(c.c(LoginButton.g(a)));
                if (p.b.equals(c.d(LoginButton.g(a))))
                {
                    bo2.b(ca1);
                    return;
                } else
                {
                    bo2.a(ca1);
                    return;
                }
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
