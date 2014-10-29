// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.support.v4.app.Fragment;
import com.facebook.b.e;
import com.instagram.android.activity.FoursquareAuthActivity;
import com.instagram.model.a.b;
import com.instagram.share.d.a;

// Referenced classes of package com.instagram.android.widget:
//            x

final class aa extends x
{

    aa(String s, int i, int j)
    {
        super(s, 2, i, null, j, (byte)0);
    }

    public final void a(Fragment fragment, e e)
    {
        FoursquareAuthActivity.b(fragment);
    }

    public final void a(b b1, boolean flag)
    {
        b1.c(flag);
    }

    public final boolean a(b b1)
    {
        return b1.t();
    }

    public final boolean c()
    {
        return com.instagram.share.d.a.a() != null;
    }

    public final void d()
    {
        com.instagram.share.d.a.b();
    }
}
