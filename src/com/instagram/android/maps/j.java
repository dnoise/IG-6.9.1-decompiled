// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import com.instagram.android.maps.b.f;
import com.instagram.android.maps.ui.a.a;
import com.instagram.android.maps.ui.ah;
import com.instagram.android.maps.ui.i;

// Referenced classes of package com.instagram.android.maps:
//            PhotoMapsActivity, k

final class j
    implements a
{

    final ah a;
    final PhotoMapsActivity b;

    j(PhotoMapsActivity photomapsactivity, ah ah)
    {
        b = photomapsactivity;
        a = ah;
        super();
    }

    public final boolean a(f f1)
    {
        com.instagram.android.maps.PhotoMapsActivity.f(b).getMapCenter();
        com.instagram.android.maps.PhotoMapsActivity.a(b, f1.d(), f1.e(), new k(this, f1));
        return true;
    }
}
