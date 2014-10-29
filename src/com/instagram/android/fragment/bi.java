// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.a.i;
import com.instagram.android.nux.SignedOutFragmentActivity;
import com.instagram.base.a.a.a;
import com.instagram.base.a.b;
import com.instagram.share.b.g;

// Referenced classes of package com.instagram.android.fragment:
//            bo, fx, bm, bl, 
//            bc, bj, bk, bn

public final class bi extends b
    implements c
{

    private final bo a = new bo(this, (byte)0);

    public bi()
    {
    }

    static void a(bi bi1)
    {
        bi1.b();
    }

    static void a(bi bi1, String s)
    {
        bi1.a(s);
    }

    private void a(String s)
    {
        new fx();
        com.instagram.android.fragment.fx.a(p(), s, c(az.find_friends_item_facebook_friends), true, false).a();
    }

    private void b()
    {
        com.facebook.b.b b1 = com.instagram.share.b.a.a();
        if (b1.b())
        {
            a(b1.c());
            return;
        } else
        {
            b1.a(this, g.a, a);
            return;
        }
    }

    static void b(bi bi1)
    {
        bi1.c();
    }

    private void c()
    {
        (new com.instagram.ui.dialog.b(l())).b(az.prompt_when_user_wants_to_skip_finding_friends_during_signup).b(az.find_friends, new bm(this)).c(az.yes_skip_this_step, new bl(this)).c().show();
    }

    static void c(bi bi1)
    {
        bi1.d();
    }

    private void d()
    {
        (new a(p())).a(new bc(), j()).b("next").a();
    }

    public final void F()
    {
        if (l() instanceof SignedOutFragmentActivity)
        {
            ((SignedOutFragmentActivity)l()).b(false);
        }
        super.F();
    }

    public final void G()
    {
        if (l() instanceof SignedOutFragmentActivity)
        {
            ((SignedOutFragmentActivity)l()).b(true);
        }
        super.G();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.fragment_find_facebook_friends_prompt, viewgroup, false);
    }

    public final void a(int j, int k, Intent intent)
    {
        if (k == -1)
        {
            com.facebook.b.b b1 = com.instagram.share.b.a.a();
            b1.a(a);
            b1.a(j, k, intent);
        }
        super.a(j, k, intent);
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        view.findViewById(av.button_find_friends).setOnClickListener(new bj(this));
        view.findViewById(av.button_skip).setOnClickListener(new bk(this));
        ((TextView)view.findViewById(av.find_friends_textview)).getCompoundDrawables()[0].setColorFilter(com.instagram.common.ui.colorfilter.a.a(o().getColor(as.white)));
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(az.find_friends_menu_label);
        b1.a(i.c, new bn(this));
    }

    public final void d(Bundle bundle)
    {
        super.d(bundle);
        try
        {
            ((SignedOutFragmentActivity)l()).k();
            return;
        }
        catch (ClassCastException classcastexception)
        {
            return;
        }
    }

    public final String j_()
    {
        return "register_flow_find_friends_facebook_prompt";
    }
}
