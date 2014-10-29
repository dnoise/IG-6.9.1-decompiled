// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.c;

import android.app.Dialog;
import android.view.View;
import com.facebook.az;
import com.instagram.android.k.a.a;
import com.instagram.ui.dialog.b;
import java.util.List;

// Referenced classes of package com.instagram.android.k.c:
//            l, a

final class k
    implements android.view.View.OnClickListener
{

    final com.instagram.android.k.c.a a;

    k(com.instagram.android.k.c.a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        l l1 = new l(this);
        if (com.instagram.android.k.c.a.g(a).e().size() > 50)
        {
            String s;
            if (com.instagram.android.k.c.a.h(a))
            {
                com.instagram.android.k.c.a a1 = a;
                int i = az.confirm_follow_all_request_in_signup;
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(com.instagram.android.k.c.a.g(a).e().size());
                s = a1.a(i, aobj);
            } else
            {
                s = a.c(az.are_you_sure);
            }
            (new b(a.l())).a(s).b(az.follow_all, l1).c(az.cancel, null).a(true).c().show();
            return;
        } else
        {
            com.instagram.android.k.c.a.f(a);
            return;
        }
    }
}
