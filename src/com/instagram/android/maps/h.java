// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import com.google.android.maps.MapController;

// Referenced classes of package com.instagram.android.maps:
//            g, f, PhotoMapsActivity

final class h
    implements Runnable
{

    final g a;

    h(g g1)
    {
        a = g1;
        super();
    }

    public final void run()
    {
        PhotoMapsActivity.k(a.a.c).animateTo(a.a.b);
    }
}
