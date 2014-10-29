// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import com.instagram.venue.model.Venue;

public final class s extends StdDeserializer
{

    public s()
    {
        super(com/instagram/venue/model/Venue);
    }

    private static Venue a(l l1)
    {
        JsonNode jsonnode = (JsonNode)l1.readValueAs(com/fasterxml/jackson/databind/JsonNode);
        Venue venue = new Venue();
        venue.a(Double.valueOf(jsonnode.get("latitude").asDouble()));
        venue.b(Double.valueOf(jsonnode.get("longitude").asDouble()));
        venue.c(jsonnode.get("address").asText());
        venue.d(jsonnode.get("externalId").asText());
        venue.e(jsonnode.get("externalSource").asText());
        venue.a(jsonnode.get("id").asText());
        venue.b(jsonnode.get("name").asText());
        return venue;
    }

    public final Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return a(l1);
    }
}
