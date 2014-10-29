// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.venue.a;

import android.location.Location;
import com.instagram.venue.model.Venue;

public final class a
{

    public static Venue a(String s, Location location)
    {
        Venue venue = new Venue();
        venue.b(s);
        com.instagram.user.c.a a1 = com.instagram.service.a.a.a().b();
        venue.e((new StringBuilder("user-")).append(a1.g()).toString());
        if (location != null)
        {
            venue.a(Double.valueOf(location.getLatitude()));
            venue.b(Double.valueOf(location.getLongitude()));
        }
        return venue;
    }
}
