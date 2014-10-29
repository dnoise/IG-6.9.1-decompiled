// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import com.instagram.android.maps.ui.m;

// Referenced classes of package com.instagram.android.maps:
//            n, PhotoMapsActivity

final class o
    implements Runnable
{

    final n a;

    o(n n1)
    {
        a = n1;
        super();
    }

    public final void run()
    {
        PhotoMapsActivity.e(a.a).dismiss();
    }
}
