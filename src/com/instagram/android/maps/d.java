// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import com.google.android.maps.Overlay;
import com.instagram.android.maps.ui.ah;
import com.instagram.android.maps.ui.i;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.maps:
//            PhotoMapsActivity

final class d
    implements com.instagram.android.maps.e.d
{

    final PhotoMapsActivity a;

    d(PhotoMapsActivity photomapsactivity)
    {
        a = photomapsactivity;
        super();
    }

    public final void a()
    {
        Iterator iterator = PhotoMapsActivity.f(a).getOverlays().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Overlay overlay = (Overlay)iterator.next();
            if (overlay instanceof ah)
            {
                ((ah)overlay).e();
            }
        } while (true);
    }
}
