// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import android.os.Handler;
import com.google.android.maps.MapController;

// Referenced classes of package com.instagram.android.maps:
//            f, PhotoMapsActivity, h

final class g
    implements Runnable
{

    final f a;

    g(f f1)
    {
        a = f1;
        super();
    }

    public final void run()
    {
        PhotoMapsActivity.k(a.c).setZoom(a.a);
        PhotoMapsActivity.g(a.c).postDelayed(new h(this), 350L);
    }
}
