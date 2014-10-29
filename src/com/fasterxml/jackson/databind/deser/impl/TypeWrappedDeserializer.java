// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;

public final class TypeWrappedDeserializer extends JsonDeserializer
{

    final JsonDeserializer _deserializer;
    final TypeDeserializer _typeDeserializer;

    public TypeWrappedDeserializer(TypeDeserializer typedeserializer, JsonDeserializer jsondeserializer)
    {
        _typeDeserializer = typedeserializer;
        _deserializer = jsondeserializer;
    }

    public final Object deserialize(l l, DeserializationContext deserializationcontext)
    {
        return _deserializer.deserializeWithType(l, deserializationcontext, _typeDeserializer);
    }

    public final Object deserialize(l l, DeserializationContext deserializationcontext, Object obj)
    {
        return _deserializer.deserialize(l, deserializationcontext, obj);
    }

    public final Object deserializeWithType(l l, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        throw new IllegalStateException("Type-wrapped deserializer's deserializeWithType should never get called");
    }
}
