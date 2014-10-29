// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import android.view.View;
import com.instagram.android.maps.e.a;
import com.instagram.android.maps.e.f;

// Referenced classes of package com.instagram.android.maps:
//            PhotoMapsActivity

final class q
    implements android.view.View.OnClickListener
{

    final PhotoMapsActivity a;

    q(PhotoMapsActivity photomapsactivity)
    {
        a = photomapsactivity;
        super();
    }

    public final void onClick(View view)
    {
        if (com.instagram.android.maps.e.a.a().g() > 0)
        {
            (new com.instagram.android.maps.c.a(a.b(), f.a)).onClick(view);
            return;
        } else
        {
            com.instagram.android.maps.e.a.a().a(false);
            return;
        }
    }
}
