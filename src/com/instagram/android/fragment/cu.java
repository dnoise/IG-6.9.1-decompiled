// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;
import com.facebook.b.b;
import com.instagram.o.f.e;
import com.instagram.o.f.f;
import com.instagram.share.b.a;
import com.instagram.share.b.g;
import com.instagram.share.vkontakte.VkontakteAuthActivity;

// Referenced classes of package com.instagram.android.fragment:
//            cr

final class cu
    implements android.view.View.OnClickListener
{

    final cr a;

    cu(cr cr1)
    {
        a = cr1;
        super();
    }

    public final void onClick(View view)
    {
        cr.d(a);
        b b1 = com.instagram.share.b.a.a();
        com.instagram.share.vkontakte.a a1 = com.instagram.share.vkontakte.a.a();
        if (b1.b() || a1 != null)
        {
            f.a().b(a.p()).a();
            return;
        }
        if (com.instagram.share.vkontakte.a.a(a.n()))
        {
            VkontakteAuthActivity.b(a);
            return;
        } else
        {
            b1.a(a, g.a, com.instagram.android.fragment.cr.e(a));
            return;
        }
    }
}
