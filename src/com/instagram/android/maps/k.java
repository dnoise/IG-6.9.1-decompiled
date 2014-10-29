// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import com.instagram.android.maps.b.f;
import com.instagram.android.maps.ui.m;

// Referenced classes of package com.instagram.android.maps:
//            j, PhotoMapsActivity, l

final class k
    implements Runnable
{

    final f a;
    final j b;

    k(j j1, f f)
    {
        b = j1;
        a = f;
        super();
    }

    public final void run()
    {
        PhotoMapsActivity photomapsactivity = b.b;
        PhotoMapsActivity photomapsactivity1 = b.b;
        com.instagram.android.maps.ui.af af = b.b.d();
        PhotoMapsActivity _tmp = b.b;
        PhotoMapsActivity.a(photomapsactivity, new m(photomapsactivity1, af, PhotoMapsActivity.b(a), com.instagram.android.maps.PhotoMapsActivity.f(b.b), b.a));
        PhotoMapsActivity.e(b.b).showAtLocation(com.instagram.android.maps.PhotoMapsActivity.f(b.b), 51, 0, 0);
        PhotoMapsActivity.e(b.b).a(new l(this));
    }
}
