// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import com.facebook.az;
import com.instagram.android.fragment.fx;
import com.instagram.base.a.a.a;

// Referenced classes of package com.instagram.android.nux:
//            z, n

final class aa
    implements Runnable
{

    final z a;

    aa(z z1)
    {
        a = z1;
        super();
    }

    public final void run()
    {
        new fx();
        fx.a(a.b.p(), a.a, a.b.c(az.find_friends_item_facebook_friends), true, true).a();
    }
}
