// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import android.view.View;
import com.facebook.av;
import com.facebook.e.a.a;
import com.instagram.a.f;
import com.instagram.android.maps.ui.ag;
import com.instagram.android.maps.ui.i;
import java.util.List;

// Referenced classes of package com.instagram.android.maps:
//            PhotoMapsActivity

final class e
    implements com.instagram.android.maps.e.e
{

    final PhotoMapsActivity a;

    e(PhotoMapsActivity photomapsactivity)
    {
        a = photomapsactivity;
        super();
    }

    public final void a(boolean flag)
    {
        com.facebook.e.a.a.a("PhotoMapsActivity", "MODE CHANGE!");
        if (!flag) goto _L2; else goto _L1
_L1:
        if (com.instagram.android.maps.PhotoMapsActivity.f(a).getOverlays().size() == 0 || !(com.instagram.android.maps.PhotoMapsActivity.f(a).getOverlays().get(0) instanceof ag))
        {
            com.instagram.android.maps.PhotoMapsActivity.f(a).getOverlays().add(0, new ag());
        }
_L4:
        View view = a.findViewById(av.action_bar_shadow);
        byte byte0 = 0;
        if (flag)
        {
            byte0 = 8;
        }
        view.setVisibility(byte0);
        PhotoMapsActivity.j(a).b();
        return;
_L2:
        if (com.instagram.android.maps.PhotoMapsActivity.f(a).getOverlays().size() > 0 && (com.instagram.android.maps.PhotoMapsActivity.f(a).getOverlays().get(0) instanceof ag))
        {
            com.instagram.android.maps.PhotoMapsActivity.f(a).getOverlays().remove(0);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
