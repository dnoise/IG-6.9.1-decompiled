// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.instagram.share.vkontakte.a;

// Referenced classes of package com.instagram.android.fragment:
//            cr

final class cv
    implements Runnable
{

    final cr a;

    cv(cr cr1)
    {
        a = cr1;
        super();
    }

    public final void run()
    {
        a a1 = com.instagram.share.vkontakte.a.a();
        if (a1 != null)
        {
            cr.b(a, a1.f());
        }
    }
}
