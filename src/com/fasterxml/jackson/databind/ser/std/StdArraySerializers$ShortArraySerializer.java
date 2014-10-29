// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.reflect.Type;

public final class rializer extends rializer
{

    private static final JavaType VALUE_TYPE;

    public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
    {
        return new <init>(this, _property, typeserializer);
    }

    public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        if (jsonformatvisitorwrapper != null)
        {
            JsonArrayFormatVisitor jsonarrayformatvisitor = jsonformatvisitorwrapper.expectArrayFormat(javatype);
            if (jsonarrayformatvisitor != null)
            {
                jsonarrayformatvisitor.itemsFormat(JsonFormatTypes.INTEGER);
            }
        }
    }

    public final JsonSerializer getContentSerializer()
    {
        return null;
    }

    public final JavaType getContentType()
    {
        return VALUE_TYPE;
    }

    public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        ObjectNode objectnode = createSchemaNode("array", true);
        objectnode.put("items", createSchemaNode("integer"));
        return objectnode;
    }

    public final volatile boolean hasSingleElement(Object obj)
    {
        return hasSingleElement((short[])obj);
    }

    public final boolean hasSingleElement(short aword0[])
    {
        return aword0.length == 1;
    }

    public final volatile boolean isEmpty(Object obj)
    {
        return isEmpty((short[])obj);
    }

    public final boolean isEmpty(short aword0[])
    {
        return aword0 == null || aword0.length == 0;
    }

    public final volatile void serializeContents(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serializeContents((short[])obj, h1, serializerprovider);
    }

    public final void serializeContents(short aword0[], h h1, SerializerProvider serializerprovider)
    {
        int i = 0;
        if (_valueTypeSerializer != null)
        {
            for (int k = aword0.length; i < k; i++)
            {
                _valueTypeSerializer.writeTypePrefixForScalar(null, h1, Short.TYPE);
                h1.writeNumber(aword0[i]);
                _valueTypeSerializer.writeTypeSuffixForScalar(null, h1);
            }

        } else
        {
            for (int j = aword0.length; i < j; i++)
            {
                h1.writeNumber(aword0[i]);
            }

        }
    }

    static 
    {
        VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(Short.TYPE);
    }

    public rializer()
    {
        super([S);
    }

    public rializer(rializer rializer, BeanProperty beanproperty, TypeSerializer typeserializer)
    {
        super(rializer, beanproperty, typeserializer);
    }
}
