// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.app.Dialog;
import android.view.View;
import com.facebook.az;
import com.instagram.android.maps.f.a;
import com.instagram.common.y.f;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.widget:
//            s

final class u
    implements android.view.View.OnClickListener
{

    final s a;

    u(s s1)
    {
        a = s1;
        super();
    }

    public final void onClick(View view)
    {
        if (!com.instagram.android.maps.f.a.a())
        {
            f.a(a.getContext(), a);
            (new b(a.getContext())).b(az.unable_to_add_foursquare_location_no_maps).b(az.ok, null).c().show();
        }
    }
}
