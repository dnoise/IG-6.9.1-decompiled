// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.maps:
//            PhotoMapsActivity

final class ad
    implements android.content.DialogInterface.OnCancelListener
{

    final PhotoMapsActivity a;

    ad(PhotoMapsActivity photomapsactivity)
    {
        a = photomapsactivity;
        super();
    }

    public final void onCancel(DialogInterface dialoginterface)
    {
        a.onBackPressed();
    }
}
