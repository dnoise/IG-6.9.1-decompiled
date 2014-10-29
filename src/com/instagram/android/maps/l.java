// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import android.os.Handler;
import com.instagram.android.maps.ui.d;

// Referenced classes of package com.instagram.android.maps:
//            k, j, PhotoMapsActivity, m

final class l
    implements d
{

    final k a;

    l(k k1)
    {
        a = k1;
        super();
    }

    public final void a()
    {
        PhotoMapsActivity.g(a.b.b).postDelayed(new m(this), 50L);
    }
}
