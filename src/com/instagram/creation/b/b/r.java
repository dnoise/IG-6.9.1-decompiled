// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.b;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import com.instagram.venue.model.Venue;

public final class r extends StdSerializer
{

    public r()
    {
        super(com/instagram/venue/model/Venue);
    }

    private static void a(Venue venue, h h1)
    {
        h1.writeStartObject();
        h1.writeStringField("name", venue.c());
        h1.writeStringField("address", venue.d());
        h1.writeNumberField("lat", venue.g().doubleValue());
        h1.writeNumberField("lng", venue.h().doubleValue());
        h1.writeStringField("external_source", venue.f());
        if (!venue.f().equals("foursquare")) goto _L2; else goto _L1
_L1:
        h1.writeStringField("foursquare_v2_id", venue.e());
_L4:
        h1.writeEndObject();
        return;
_L2:
        if (venue.f().equals("facebook_places"))
        {
            h1.writeStringField("facebook_places_id", venue.e());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        a((Venue)obj, h1);
    }
}
