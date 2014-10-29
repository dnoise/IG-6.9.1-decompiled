// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import com.instagram.android.maps.ui.ah;
import com.instagram.android.maps.ui.i;

// Referenced classes of package com.instagram.android.maps:
//            x, ae, PhotoMapsActivity

final class y
    implements Runnable
{

    final x a;

    y(x x1)
    {
        a = x1;
        super();
    }

    public final void run()
    {
        ah.h();
        PhotoMapsActivity.a(a.a, new ae(a.a, PhotoMapsActivity.f(a.a).getLatitudeSpan(), PhotoMapsActivity.f(a.a).getLongitudeSpan(), PhotoMapsActivity.f(a.a).getMapCenter(), PhotoMapsActivity.f(a.a).getZoomLevel()));
        PhotoMapsActivity.a(a.a, true);
    }
}
