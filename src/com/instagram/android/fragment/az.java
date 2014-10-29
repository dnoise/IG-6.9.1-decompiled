// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.app.Dialog;
import android.view.View;
import com.instagram.android.widget.x;
import com.instagram.common.y.e;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.fragment:
//            aw, ba

final class az
    implements android.view.View.OnClickListener
{

    final aw a;

    az(aw aw1)
    {
        a = aw1;
        super();
    }

    public final void onClick(View view)
    {
        b b1 = new b(a.n());
        String s = a.c(com.facebook.az.unlink_account);
        Object aobj[] = new Object[1];
        aobj[0] = x.a.a(a.n());
        b1.b(e.a(s, aobj)).c(com.facebook.az.cancel, null).b(com.facebook.az.unlink, new ba(this)).c().show();
    }
}
