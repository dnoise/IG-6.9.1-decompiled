// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import com.instagram.creation.b.a.j;
import java.util.Date;

public final class u extends StdDeserializer
{

    public u()
    {
        super(com/instagram/creation/b/a/j);
    }

    private static j a(l l1)
    {
        JsonNode jsonnode = (JsonNode)l1.readValueAs(com/fasterxml/jackson/databind/JsonNode);
        return new j(jsonnode.get("url").asText(), jsonnode.get("job").asText(), new Date(jsonnode.get("expires").asLong()));
    }

    public final Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return a(l1);
    }
}
