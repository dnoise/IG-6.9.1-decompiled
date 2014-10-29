// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.a.i;
import com.instagram.android.nux.SignedOutFragmentActivity;
import com.instagram.base.a.a.a;
import com.instagram.base.a.b;

// Referenced classes of package com.instagram.android.fragment:
//            bg, bf, dn, bd, 
//            be, bh

public final class bc extends b
    implements c
{

    public bc()
    {
    }

    static void a(bc bc1)
    {
        bc1.b();
    }

    private void b()
    {
        if (j() != null && (l() instanceof SignedOutFragmentActivity) && ((SignedOutFragmentActivity)l()).j())
        {
            c();
            return;
        } else
        {
            (new com.instagram.ui.dialog.b(l())).b(az.prompt_when_user_wants_to_skip_finding_friends_during_signup).b(az.find_friends, new bg(this)).c(az.yes_skip_this_step, new bf(this)).c().show();
            return;
        }
    }

    static void b(bc bc1)
    {
        bc1.c();
    }

    private void c()
    {
        j().putBoolean("com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW", true);
        (new a(p())).a(new dn(), j()).b("next").a();
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
        return layoutinflater.inflate(aw.fragment_find_contact_list_friends_prompt, viewgroup, false);
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        view.findViewById(av.button_find_friends).setOnClickListener(new bd(this));
        view.findViewById(av.button_skip).setOnClickListener(new be(this));
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(az.find_friends_menu_label);
        b1.a(i.c, new bh(this));
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
        return "register_flow_find_friends_contacts_prompt";
    }
}
