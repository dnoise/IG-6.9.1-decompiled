// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.b;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import com.instagram.venue.model.Venue;

public final class t extends StdSerializer
{

    public t()
    {
        super(com/instagram/venue/model/Venue);
    }

    private static void a(Venue venue, h h1)
    {
        h1.writeStartObject();
        h1.writeNumberField("latitude", venue.g().doubleValue());
        h1.writeNumberField("longitude", venue.h().doubleValue());
        h1.writeStringField("address", venue.d());
        h1.writeStringField("externalId", venue.e());
        h1.writeStringField("externalSource", venue.f());
        h1.writeStringField("id", venue.b());
        h1.writeStringField("name", venue.c());
        h1.writeEndObject();
    }

    public final void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        a((Venue)obj, h1);
    }
}
