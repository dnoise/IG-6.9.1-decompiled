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
import com.instagram.share.vkontakte.VkontakteAuthActivity;

// Referenced classes of package com.instagram.android.fragment:
//            fx, cb, ca, bc, 
//            by, bz, cc

public final class bx extends b
    implements c
{

    public bx()
    {
    }

    static void a(bx bx1)
    {
        bx1.b();
    }

    private void a(String s)
    {
        new fx();
        com.instagram.android.fragment.fx.a(p(), s, c(az.find_friends_item_vkontakte_friends), true).a();
    }

    private void b()
    {
        com.instagram.share.vkontakte.a a1 = com.instagram.share.vkontakte.a.a();
        if (a1 != null)
        {
            a(a1.f());
            return;
        } else
        {
            VkontakteAuthActivity.b(this);
            return;
        }
    }

    static void b(bx bx1)
    {
        bx1.c();
    }

    private void c()
    {
        (new com.instagram.ui.dialog.b(l())).b(az.prompt_when_user_wants_to_skip_finding_friends_during_signup).b(az.find_friends, new cb(this)).c(az.yes_skip_this_step, new ca(this)).c().show();
    }

    static void c(bx bx1)
    {
        bx1.d();
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
        return layoutinflater.inflate(aw.fragment_find_vkontakte_friends_prompt, viewgroup, false);
    }

    public final void a(int j, int k, Intent intent)
    {
        if (k == -1)
        {
            com.instagram.share.vkontakte.a a1 = com.instagram.share.vkontakte.a.a();
            if (a1 != null)
            {
                a(a1.f());
            }
        }
        super.a(j, k, intent);
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        view.findViewById(av.button_find_friends).setOnClickListener(new by(this));
        view.findViewById(av.button_skip).setOnClickListener(new bz(this));
        ((TextView)view.findViewById(av.find_friends_textview)).getCompoundDrawables()[0].setColorFilter(com.instagram.common.ui.colorfilter.a.a(o().getColor(as.white)));
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(az.find_friends_menu_label);
        b1.a(i.c, new cc(this));
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
        return "register_flow_find_friends_vkontakte_prompt";
    }
}
