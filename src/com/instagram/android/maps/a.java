// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import android.app.Activity;
import android.app.LocalActivityManager;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import com.instagram.android.activity.MainTabActivity;
import com.instagram.base.a.b;

// Referenced classes of package com.instagram.android.maps:
//            DedicatedMapActivity, PhotoMapsActivity

public final class a extends b
{

    private static String b = " tag";
    private Window a;

    public a()
    {
    }

    public final void F()
    {
        super.F();
        ((DedicatedMapActivity)l()).g().dispatchResume();
        if (l().getParent() != null && (l().getParent() instanceof MainTabActivity))
        {
            l().getParent().getWindow().setSoftInputMode(16);
            ((MainTabActivity)l().getParent()).a(8);
        }
    }

    public final void G()
    {
        if (l().getParent() != null && (l().getParent() instanceof MainTabActivity))
        {
            l().getParent().getWindow().setSoftInputMode(48);
            ((MainTabActivity)l().getParent()).a(0);
        }
        ((DedicatedMapActivity)l()).g().dispatchPause(l().isFinishing());
        super.G();
    }

    public final void H()
    {
        ((DedicatedMapActivity)l()).g().destroyActivity(b, true);
        super.H();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        FrameLayout framelayout = new FrameLayout(viewgroup.getContext());
        View view = a.getDecorView();
        view.setVisibility(0);
        view.setFocusableInTouchMode(true);
        ((ViewGroup)view).setDescendantFocusability(0x40000);
        framelayout.addView(view);
        return framelayout;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        Intent intent = new Intent(l(), com/instagram/android/maps/PhotoMapsActivity);
        intent.setAction(j().getString("ARGUMENT_USER_ID"));
        ((DedicatedMapActivity)l()).g().dispatchCreate(bundle);
        a = ((DedicatedMapActivity)l()).g().startActivity(b, intent);
    }

    public final String j_()
    {
        String s = j().getString("ARGUMENT_USER_ID");
        if (com.instagram.service.a.a.a().c().equals(s))
        {
            return "self_photomap";
        } else
        {
            return "photomap";
        }
    }

    public final void m_()
    {
        ((ViewGroup)a.getDecorView().getParent()).removeAllViews();
        super.m_();
    }

}
