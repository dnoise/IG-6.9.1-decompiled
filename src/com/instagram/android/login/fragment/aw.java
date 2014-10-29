// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.facebook.au;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            bt, an, ax

final class aw extends bt
{

    final an a;

    aw(an an1)
    {
        a = an1;
        super(an1, (byte)0);
    }

    public final void a(boolean flag)
    {
        View view = an.y(a);
        int i;
        if (flag)
        {
            i = au.input_highlighted;
        } else
        {
            i = au.input;
        }
        view.setBackgroundResource(i);
        if (flag)
        {
            com.instagram.common.analytics.b b1 = b.x.b();
            if (TextUtils.isEmpty(an.a(a)) && an.j(a) != null)
            {
                b1.a("prechecked_username", an.j(a));
                an.c(a).post(new ax(this));
            }
            b1.a();
            return;
        } else
        {
            String s = an.a(a);
            b.A.b().a("username", s).a();
            an.a(a, s);
            return;
        }
    }
}
