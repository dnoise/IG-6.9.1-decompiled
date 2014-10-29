// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.app.Dialog;
import android.content.Context;
import android.support.v4.app.Fragment;
import android.support.v4.app.an;
import com.facebook.az;
import com.instagram.android.feed.c.a;
import com.instagram.feed.d.l;
import com.instagram.ui.dialog.b;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.android.directshare.d:
//            af, ag, ah, ai, 
//            ae

public final class ad
{

    private final Context a;
    private final an b;
    private final a c;
    private final l d;
    private Dialog e;
    private CharSequence f[];

    public ad(Fragment fragment, l l1)
    {
        a = fragment.n();
        b = fragment.z();
        c = new a(a, b);
        d = l1;
    }

    static Dialog a(ad ad1)
    {
        ad1.e = null;
        return null;
    }

    private CharSequence[] b()
    {
        if (f == null)
        {
            com.instagram.user.c.a a1 = d.c();
            com.instagram.user.c.a a2 = com.instagram.service.a.a.a().b();
            ArrayList arraylist = new ArrayList();
            if (a2.equals(a1))
            {
                arraylist.add(a.getString(az.directshare_delete));
            } else
            {
                arraylist.add(a.getString(az.directshare_hide));
                arraylist.add(com.instagram.android.feed.c.a.a(a1, a.getResources()));
                arraylist.add(a.getString(az.directshare_ignore_all));
                arraylist.add(a.getString(az.report_inappropriate));
            }
            f = new CharSequence[arraylist.size()];
            arraylist.toArray(f);
        }
        return f;
    }

    static CharSequence[] b(ad ad1)
    {
        return ad1.b();
    }

    static Context c(ad ad1)
    {
        return ad1.a;
    }

    private void c()
    {
        af af1 = new af(this);
        (new b(a)).a(az.directshare_delete_dialog_title).b(az.directshare_delete_dialog_message).b(az.directshare_delete, af1).c(az.cancel, null).c().show();
    }

    private void d()
    {
        ag ag1 = new ag(this);
        (new b(a)).a(az.directshare_hide_dialog_title).b(az.directshare_hide_dialog_message).b(az.directshare_hide, ag1).c(az.cancel, null).c().show();
    }

    static void d(ad ad1)
    {
        ad1.c();
    }

    private void e()
    {
        b b1 = new b(a);
        Context context = a;
        int j = az.directshare_requested_direct_shares_confirm_ignore_title;
        Object aobj[] = new Object[1];
        aobj[0] = d.c().b();
        b b2 = b1.b(context.getString(j, aobj));
        Context context1 = a;
        int k = az.directshare_requested_direct_shares_confirm_ignore_msg;
        Object aobj1[] = new Object[1];
        aobj1[0] = d.c().b();
        b2.a(context1.getString(k, aobj1)).b(az.directshare_requested_direct_shares_confirm_ignore, new ah(this)).a(true).c(az.cancel, null).c().show();
    }

    static void e(ad ad1)
    {
        ad1.d();
    }

    static l f(ad ad1)
    {
        return ad1.d;
    }

    static a g(ad ad1)
    {
        return ad1.c;
    }

    static void h(ad ad1)
    {
        ad1.e();
    }

    static an i(ad ad1)
    {
        return ad1.b;
    }

    public final void a()
    {
        e = (new b(a)).a(b(), new ai(this, (byte)0)).a(true).d().c();
        e.setOnDismissListener(new ae(this));
        e.show();
    }
}
