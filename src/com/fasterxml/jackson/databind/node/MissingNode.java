// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            ValueNode, JsonNodeType

public final class MissingNode extends ValueNode
{

    private static final MissingNode instance = new MissingNode();

    private MissingNode()
    {
    }

    public static MissingNode getInstance()
    {
        return instance;
    }

    public final String asText()
    {
        return "";
    }

    public final r asToken()
    {
        return r.a;
    }

    public final JsonNode deepCopy()
    {
        return this;
    }

    public final boolean equals(Object obj)
    {
        return obj == this;
    }

    public final JsonNodeType getNodeType()
    {
        return JsonNodeType.MISSING;
    }

    public final void serialize(h h1, SerializerProvider serializerprovider)
    {
        h1.writeNull();
    }

    public final void serializeWithType(h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        h1.writeNull();
    }

    public final String toString()
    {
        return "";
    }

}
