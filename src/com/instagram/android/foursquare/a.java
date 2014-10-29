// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.foursquare;

import android.location.Location;
import com.fasterxml.jackson.a.l;
import com.instagram.api.k.a.c;
import com.instagram.api.k.a.d;
import com.instagram.common.a.c.b;

// Referenced classes of package com.instagram.android.foursquare:
//            c, b

public final class a extends c
{

    private final String a;
    private final Location b;

    public a(Location location, String s)
    {
        b = location;
        a = s;
    }

    private static com.instagram.android.foursquare.b b(l l)
    {
        return com.instagram.android.foursquare.c.a(l);
    }

    public final d a(l l)
    {
        return b(l);
    }

    public final void a(b b1)
    {
        if (a != null)
        {
            b1.a("search_query", a);
        }
        if (com.instagram.share.d.a.a() != null)
        {
            b1.a("foursquare_access_token", com.instagram.share.d.a.a().d());
        }
        com.facebook.b.b b2 = com.instagram.share.b.a.a();
        if (b2.b())
        {
            b1.a("fb_access_token", b2.c());
        }
        b1.a("latitude", String.valueOf(b.getLatitude()));
        b1.a("longitude", String.valueOf(b.getLongitude()));
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.c;
    }

    public final String d_()
    {
        return "location_search/";
    }

    public final boolean e_()
    {
        return true;
    }
}
