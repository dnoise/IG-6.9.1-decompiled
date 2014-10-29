// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import android.os.Handler;
import com.instagram.android.maps.ui.d;

// Referenced classes of package com.instagram.android.maps:
//            PhotoMapsActivity, o

final class n
    implements d
{

    final PhotoMapsActivity a;

    n(PhotoMapsActivity photomapsactivity)
    {
        a = photomapsactivity;
        super();
    }

    public final void a()
    {
        PhotoMapsActivity.g(a).postDelayed(new o(this), 50L);
    }
}
