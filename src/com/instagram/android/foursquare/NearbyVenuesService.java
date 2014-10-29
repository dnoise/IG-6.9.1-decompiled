// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.foursquare;

import android.app.IntentService;
import android.content.Intent;
import android.location.Location;
import com.facebook.e.a.a;
import com.instagram.common.a.a.f;
import com.instagram.common.l.a.e;
import com.instagram.common.y.d;

// Referenced classes of package com.instagram.android.foursquare:
//            a, b

public class NearbyVenuesService extends IntentService
{

    private static Location a;
    private static b b;
    private f c;

    public NearbyVenuesService()
    {
        super("NearbyVenuesService");
    }

    private static b a()
    {
        return b;
    }

    private void a(Location location, String s)
    {
        f _tmp = c;
        e e1 = f.b(new com.instagram.android.foursquare.a(location, s));
        if (e1.a())
        {
            b b1 = (b)e1.b();
            if (b1.f_() && b1.d())
            {
                if (s == null)
                {
                    a(b1, location);
                }
                a(b1);
                return;
            }
        }
        a(null);
    }

    private static void a(b b1)
    {
        Intent intent = new Intent("com.instagram.android.creation.NearbyVenuesFragment.venuesFetched");
        if (b1 != null)
        {
            intent.putExtra("requestId", b1.c());
            intent.putExtra("venues", b1.b());
            intent.putExtra("isFoursquareLocation", b1.e());
        }
        d.a(intent);
    }

    private static void a(b b1, Location location)
    {
        b = b1;
        a = location;
    }

    public void onCreate()
    {
        super.onCreate();
        c = new f();
    }

    protected void onHandleIntent(Intent intent)
    {
        Location location = (Location)intent.getParcelableExtra("location");
        String s = intent.getStringExtra("searchString");
        if (location == null)
        {
            com.facebook.e.a.a.a("NearbyVenuesService", "Cannot query venues for null location");
            a(null);
            return;
        }
        if (s == null && a != null && location.distanceTo(a) < 20F)
        {
            a(a());
            return;
        } else
        {
            a(location, s);
            return;
        }
    }
}
