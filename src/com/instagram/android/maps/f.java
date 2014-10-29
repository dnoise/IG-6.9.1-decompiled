// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import android.os.Handler;
import com.google.android.maps.GeoPoint;

// Referenced classes of package com.instagram.android.maps:
//            PhotoMapsActivity, g

final class f
    implements Runnable
{

    final int a;
    final GeoPoint b;
    final PhotoMapsActivity c;

    f(PhotoMapsActivity photomapsactivity, int i, GeoPoint geopoint)
    {
        c = photomapsactivity;
        a = i;
        b = geopoint;
        super();
    }

    public final void run()
    {
        PhotoMapsActivity.g(c).post(new g(this));
    }
}
