// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.c;

import android.app.Dialog;
import android.view.View;
import com.facebook.az;
import com.instagram.feed.d.l;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.people.c:
//            a, h, g

final class f
    implements android.view.View.OnClickListener
{

    final Dialog a;
    final l b;
    final a c;

    f(a a1, Dialog dialog, l l)
    {
        c = a1;
        a = dialog;
        b = l;
        super();
    }

    public final void onClick(View view)
    {
        a.hide();
        (new b(com.instagram.android.people.c.a.f(c))).a(az.are_you_sure).b(az.people_tagging_remove_me_confirm).b(az.yes_im_sure, new h(this)).c(az.cancel, new g(this)).c().show();
    }
}
