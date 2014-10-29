// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import android.os.Handler;
import com.instagram.android.maps.ui.a.b;
import com.instagram.android.maps.ui.ah;

// Referenced classes of package com.instagram.android.maps:
//            PhotoMapsActivity, y

final class x
    implements b
{

    final PhotoMapsActivity a;

    x(PhotoMapsActivity photomapsactivity)
    {
        a = photomapsactivity;
        super();
    }

    public final void a()
    {
        ah.h();
        PhotoMapsActivity.a(a, false);
    }

    public final void b()
    {
        PhotoMapsActivity.g(a).postDelayed(new y(this), 350L);
    }
}
