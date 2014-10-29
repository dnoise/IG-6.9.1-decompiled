// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import java.lang.reflect.Type;

public class UnknownSerializer extends StdSerializer
{

    public UnknownSerializer()
    {
        super(java/lang/Object);
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        jsonformatvisitorwrapper.expectAnyFormat(javatype);
    }

    protected void failForEmpty(Object obj)
    {
        throw new JsonMappingException((new StringBuilder("No serializer found for class ")).append(obj.getClass().getName()).append(" and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationFeature.FAIL_ON_EMPTY_BEANS) )").toString());
    }

    public JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        return null;
    }

    public void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        if (serializerprovider.isEnabled(SerializationFeature.FAIL_ON_EMPTY_BEANS))
        {
            failForEmpty(obj);
        }
        h1.writeStartObject();
        h1.writeEndObject();
    }

    public final void serializeWithType(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        if (serializerprovider.isEnabled(SerializationFeature.FAIL_ON_EMPTY_BEANS))
        {
            failForEmpty(obj);
        }
        typeserializer.writeTypePrefixForObject(obj, h1);
        typeserializer.writeTypeSuffixForObject(obj, h1);
    }
}
