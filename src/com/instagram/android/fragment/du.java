// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.android.activity.MainTabActivity;
import com.instagram.base.a.b;
import com.instagram.bugreport.a.d;
import com.instagram.bugreport.a.g;
import com.instagram.common.y.f;
import com.instagram.ui.widget.refresh.RefreshButton;

// Referenced classes of package com.instagram.android.fragment:
//            dv, dw, dx

public final class du extends b
    implements c
{

    private EditText a;
    private RefreshButton b;
    private Dialog c;
    private final Handler d = new Handler();
    private int e;

    public du()
    {
    }

    static Dialog a(du du1, Dialog dialog)
    {
        du1.c = dialog;
        return dialog;
    }

    static RefreshButton a(du du1)
    {
        return du1.b;
    }

    private void a(int i)
    {
        ((MainTabActivity)l().getParent()).a(i);
    }

    static Handler b(du du1)
    {
        return du1.d;
    }

    static EditText c(du du1)
    {
        return du1.a;
    }

    static Dialog d(du du1)
    {
        return du1.c;
    }

    public final void F()
    {
        super.F();
        e = l().getRequestedOrientation();
        l().setRequestedOrientation(-1);
        l().getParent().getWindow().setSoftInputMode(21);
        a(8);
        a.requestFocus();
    }

    public final void G()
    {
        super.G();
        l().setRequestedOrientation(e);
        l().getParent().getWindow().setSoftInputMode(48);
        a(0);
        f.a(n(), a);
        if (c != null)
        {
            c.dismiss();
            c = null;
        }
    }

    public final void H()
    {
        super.H();
        d.removeCallbacksAndMessages(null);
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.fragment_report_problem, viewgroup, false);
        a = (EditText)view.findViewById(av.edittext);
        a.addTextChangedListener(new dv(this));
        return view;
    }

    public final void a(com.instagram.a.b b1)
    {
        boolean flag = true;
        int i = j().getInt("title");
        Object aobj[] = new Object[flag];
        aobj[0] = Integer.valueOf(az.report_problem);
        b = b1.a(a(i, aobj), new dw(this));
        RefreshButton refreshbutton = b;
        if (a.getText().toString().trim().length() <= 0)
        {
            flag = false;
        }
        refreshbutton.setEnabled(flag);
    }

    public final void b()
    {
        com.instagram.bugreport.a.b b1 = (new g(n())).a(a.getText().toString()).a();
        b1.a(new dx(this, (byte)0));
        (new com.instagram.common.a.a.g(n(), z())).a(b1);
        a.setEnabled(false);
    }

    public final String j_()
    {
        return "report_problem";
    }

    public final void m_()
    {
        super.m_();
        a = null;
        b = null;
    }
}
