// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.SerializerProvider;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            ValueNode, JsonNodeType

public final class NullNode extends ValueNode
{

    public static final NullNode instance = new NullNode();

    private NullNode()
    {
    }

    public static NullNode getInstance()
    {
        return instance;
    }

    public final String asText()
    {
        return "null";
    }

    public final r asToken()
    {
        return r.m;
    }

    public final boolean equals(Object obj)
    {
        return obj == this;
    }

    public final JsonNodeType getNodeType()
    {
        return JsonNodeType.NULL;
    }

    public final void serialize(h h, SerializerProvider serializerprovider)
    {
        serializerprovider.defaultSerializeNull(h);
    }

}
