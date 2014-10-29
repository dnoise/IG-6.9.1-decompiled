// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import android.view.View;

// Referenced classes of package com.instagram.android.maps:
//            PhotoMapsActivity

final class r
    implements android.view.View.OnClickListener
{

    final PhotoMapsActivity a;

    r(PhotoMapsActivity photomapsactivity)
    {
        a = photomapsactivity;
        super();
    }

    public final void onClick(View view)
    {
        PhotoMapsActivity.l(a);
    }
}
