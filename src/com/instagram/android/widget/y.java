// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.support.v4.app.Fragment;
import com.facebook.b.b;
import com.facebook.b.e;
import com.instagram.share.b.a;
import com.instagram.share.b.g;

// Referenced classes of package com.instagram.android.widget:
//            x

final class y extends x
{

    y(String s, int i, String s1, int j)
    {
        super(s, 0, i, s1, j, (byte)0);
    }

    public final void a(Fragment fragment, e e)
    {
        com.instagram.share.b.a.a().a(fragment, g.a, e);
    }

    public final void a(com.instagram.model.a.b b1, boolean flag)
    {
        b1.b(flag);
    }

    public final boolean a(com.instagram.model.a.b b1)
    {
        return b1.s();
    }

    public final boolean c()
    {
        return com.instagram.share.b.a.a().b();
    }

    public final void d()
    {
        com.instagram.share.b.a.a(true);
    }
}
