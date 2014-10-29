// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.content.Intent;
import android.location.Location;
import android.support.v4.app.k;
import com.instagram.android.foursquare.NearbyVenuesService;
import com.instagram.i.a;
import java.util.Observable;
import java.util.Observer;

// Referenced classes of package com.instagram.android.creation.a:
//            t

final class u
    implements Observer
{

    final t a;

    u(t t1)
    {
        a = t1;
        super();
    }

    public final void update(Observable observable, Object obj)
    {
        com.instagram.android.creation.a.t.a(a);
        Location location = (Location)obj;
        if (com.instagram.i.a.b(location))
        {
            com.instagram.android.creation.a.t.a(a, location);
            Intent intent = new Intent(a.l(), com/instagram/android/foursquare/NearbyVenuesService);
            intent.putExtra("location", location);
            a.l().startService(intent);
        }
    }
}
