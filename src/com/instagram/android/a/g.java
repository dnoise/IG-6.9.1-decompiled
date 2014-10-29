// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import com.instagram.service.a.a;
import com.instagram.venue.model.Venue;

final class g extends StdDeserializer
{

    private g()
    {
        super(com/instagram/venue/model/Venue);
    }

    g(byte byte0)
    {
        this();
    }

    private static Venue a(l l1)
    {
        JsonNode jsonnode = (JsonNode)l1.readValueAs(com/fasterxml/jackson/databind/JsonNode);
        Venue venue = new Venue();
        venue.b(jsonnode.get("name").asText());
        if (jsonnode.has("lat") && jsonnode.has("lng") && jsonnode.get("lat") != null && jsonnode.get("lng") != null)
        {
            venue.a(Double.valueOf(jsonnode.get("lat").asDouble()));
            venue.b(Double.valueOf(jsonnode.get("lng").asDouble()));
        }
        com.instagram.user.c.a a1 = com.instagram.service.a.a.a().b();
        venue.e((new StringBuilder("user-")).append(a1.g()).toString());
        venue.j();
        return venue;
    }

    public final Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return a(l1);
    }
}
