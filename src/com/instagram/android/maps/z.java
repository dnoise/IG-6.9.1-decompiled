// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import android.app.Activity;

// Referenced classes of package com.instagram.android.maps:
//            PhotoMapsActivity

final class z
    implements Runnable
{

    final PhotoMapsActivity a;

    z(PhotoMapsActivity photomapsactivity)
    {
        a = photomapsactivity;
        super();
    }

    public final void run()
    {
        a.getParent().onBackPressed();
    }
}
