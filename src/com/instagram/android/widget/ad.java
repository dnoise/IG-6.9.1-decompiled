// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.support.v4.app.Fragment;
import com.facebook.b.e;
import com.instagram.model.a.b;
import com.instagram.share.vkontakte.VkontakteAuthActivity;
import com.instagram.share.vkontakte.a;

// Referenced classes of package com.instagram.android.widget:
//            x

final class ad extends x
{

    ad(String s, int i, String s1, int j)
    {
        super(s, 5, i, s1, j, (byte)0);
    }

    public final void a(Fragment fragment, e e)
    {
        VkontakteAuthActivity.b(fragment);
    }

    public final void a(b b1, boolean flag)
    {
        b1.f(flag);
    }

    public final boolean a(b b1)
    {
        return b1.v();
    }

    public final boolean c()
    {
        return com.instagram.share.vkontakte.a.a() != null;
    }

    public final void d()
    {
        com.instagram.share.vkontakte.a.b();
    }
}
