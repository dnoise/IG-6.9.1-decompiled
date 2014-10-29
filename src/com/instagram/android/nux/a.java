// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import com.facebook.az;
import com.instagram.common.a.a.k;
import com.instagram.common.a.a.o;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.nux:
//            b, c, h, d, 
//            e

public final class a
{

    private static String a = "FacebookHelper";
    private k b;
    private e c;
    private Activity d;
    private ProgressDialog e;
    private boolean f;

    public a(Activity activity, e e1)
    {
        b = new o();
        c = e1;
        d = activity;
    }

    static void a(a a1)
    {
        a1.d();
    }

    static void b(a a1)
    {
        a1.e();
    }

    private void c()
    {
        (new b(d)).a(az.error).b(az.request_error).b(az.dismiss, new com.instagram.android.nux.b(this)).c().show();
    }

    static boolean c(a a1)
    {
        return a1.f;
    }

    static e d(a a1)
    {
        return a1.c;
    }

    private void d()
    {
        if (c != null)
        {
            e = new ProgressDialog(d);
            ProgressDialog progressdialog = e;
            Activity activity = d;
            int i = az.connecting_to_x;
            Object aobj[] = new Object[1];
            aobj[0] = d.getString(az.facebook);
            progressdialog.setMessage(activity.getString(i, aobj));
            e.setCancelable(true);
            e.setIndeterminate(true);
            e.setOnCancelListener(new c(this));
            e.show();
        }
    }

    private void e()
    {
        if (e != null)
        {
            e.dismiss();
            e = null;
        }
    }

    static void e(a a1)
    {
        a1.c();
    }

    static boolean f(a a1)
    {
        a1.f = true;
        return true;
    }

    public final void a()
    {
        c = null;
        d = null;
    }

    public final void b()
    {
        h h1 = new h(com.instagram.share.b.a.a().c());
        h1.a(new d(this, (byte)0));
        b.a(h1);
    }

}
