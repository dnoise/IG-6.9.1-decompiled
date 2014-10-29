// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;

public final class TypeWrappedSerializer extends JsonSerializer
{

    protected final JsonSerializer _serializer;
    protected final TypeSerializer _typeSerializer;

    public TypeWrappedSerializer(TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        _typeSerializer = typeserializer;
        _serializer = jsonserializer;
    }

    public final Class handledType()
    {
        return java/lang/Object;
    }

    public final void serialize(Object obj, h h, SerializerProvider serializerprovider)
    {
        _serializer.serializeWithType(obj, h, serializerprovider, _typeSerializer);
    }

    public final void serializeWithType(Object obj, h h, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        _serializer.serializeWithType(obj, h, serializerprovider, typeserializer);
    }
}
