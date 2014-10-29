// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.k;
import android.support.v4.app.s;
import com.instagram.venue.model.Venue;

// Referenced classes of package com.instagram.android.creation.a:
//            t

final class x extends BroadcastReceiver
{

    final t a;

    x(t t1)
    {
        a = t1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("NearbyVenuesFragment.VENUE_CLEARED"))
        {
            a.a(null, null);
        } else
        if (intent.getAction().equals("NearbyVenuesFragment.VENUE_SELECTED"))
        {
            Venue venue = (Venue)intent.getParcelableExtra("venueId");
            String s1 = intent.getStringExtra("foursquareRequestId");
            a.a(venue, s1);
            a.l().d().b("NearbyVenuesFragment");
            return;
        }
    }
}
