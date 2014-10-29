// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;
import com.facebook.az;
import com.instagram.common.s.a;
import com.instagram.common.s.b;

// Referenced classes of package com.instagram.android.fragment:
//            fy

final class gf
    implements android.view.View.OnClickListener
{

    final fy a;

    gf(fy fy1)
    {
        a = fy1;
        super();
    }

    public final void onClick(View view)
    {
        fy fy1 = a;
        String s;
        if (b.d())
        {
            s = a.c(az.about_this_version);
        } else
        {
            s = (new StringBuilder("Build #")).append(com.instagram.common.s.a.a(a.n())).toString();
        }
        com.instagram.android.fragment.fy.a(fy1, "/legal/libraries/android/", s);
    }
}
