// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;

public final class a extends StdDeserializer
{

    public a()
    {
        super(com/instagram/creation/b/a/a);
    }

    private static com.instagram.creation.b.a.a a(l l1)
    {
        JsonNode jsonnode = (JsonNode)l1.readValueAs(com/fasterxml/jackson/databind/JsonNode);
        com.instagram.creation.b.a.a a1 = new com.instagram.creation.b.a.a();
        a1.a(jsonnode.get("clipFilePath").asText());
        a1.a(jsonnode.get("camera_id").asInt());
        a1.b(jsonnode.get("rotation").asInt());
        a1.a((float)jsonnode.get("pan").asDouble());
        a1.c(jsonnode.get("startMS").asInt());
        a1.d(jsonnode.get("endMS").asInt());
        a1.a(jsonnode.get("videoWidth").asInt(), jsonnode.get("videoHeight").asInt());
        return a1;
    }

    public final Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return a(l1);
    }
}
