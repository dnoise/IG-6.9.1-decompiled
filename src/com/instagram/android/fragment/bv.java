// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.instagram.share.vkontakte.a;

// Referenced classes of package com.instagram.android.fragment:
//            bp

final class bv
    implements Runnable
{

    final bp a;

    bv(bp bp1)
    {
        a = bp1;
        super();
    }

    public final void run()
    {
        a a1 = com.instagram.share.vkontakte.a.a();
        if (a1 != null)
        {
            com.instagram.android.fragment.bp.a(a, a1.f());
        }
    }
}
