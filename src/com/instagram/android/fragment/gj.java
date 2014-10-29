// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.support.v4.app.Fragment;
import android.view.View;
import com.instagram.base.a.a.a;

// Referenced classes of package com.instagram.android.fragment:
//            fy

final class gj
    implements android.view.View.OnClickListener
{

    final fy a;

    gj(fy fy1)
    {
        a = fy1;
        super();
    }

    public final void onClick(View view)
    {
        try
        {
            (new a(a.p())).a((Fragment)Class.forName("com.instagram.debug.devoptions.DeveloperOptionsFragment").newInstance()).a();
            return;
        }
        catch (Exception exception)
        {
            com.facebook.e.a.a.a(fy.d(), "Can't find DeveloperOptionsFragment", exception);
        }
    }
}
