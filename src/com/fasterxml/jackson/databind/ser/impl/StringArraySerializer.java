// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
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
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.std.ArraySerializerBase;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.reflect.Type;

public class StringArraySerializer extends ArraySerializerBase
    implements ContextualSerializer
{

    private static final JavaType VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(java/lang/String);
    public static final StringArraySerializer instance = new StringArraySerializer();
    protected final JsonSerializer _elementSerializer;

    protected StringArraySerializer()
    {
        super([Ljava/lang/String;, null);
        _elementSerializer = null;
    }

    public StringArraySerializer(StringArraySerializer stringarrayserializer, BeanProperty beanproperty, JsonSerializer jsonserializer)
    {
        super(stringarrayserializer, beanproperty);
        _elementSerializer = jsonserializer;
    }

    private void serializeContentsSlow(String as[], h h1, SerializerProvider serializerprovider, JsonSerializer jsonserializer)
    {
        int i = 0;
        int j = as.length;
        while (i < j) 
        {
            if (as[i] == null)
            {
                serializerprovider.defaultSerializeNull(h1);
            } else
            {
                jsonserializer.serialize(as[i], h1, serializerprovider);
            }
            i++;
        }
    }

    public ContainerSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
    {
        return this;
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        if (jsonformatvisitorwrapper != null)
        {
            JsonArrayFormatVisitor jsonarrayformatvisitor = jsonformatvisitorwrapper.expectArrayFormat(javatype);
            if (jsonarrayformatvisitor != null)
            {
                jsonarrayformatvisitor.itemsFormat(JsonFormatTypes.STRING);
            }
        }
    }

    public JsonSerializer createContextual(SerializerProvider serializerprovider, BeanProperty beanproperty)
    {
        if (beanproperty == null) goto _L2; else goto _L1
_L1:
        com.fasterxml.jackson.databind.introspect.AnnotatedMember annotatedmember = beanproperty.getMember();
        if (annotatedmember == null) goto _L2; else goto _L3
_L3:
        Object obj = serializerprovider.getAnnotationIntrospector().findContentSerializer(annotatedmember);
        if (obj == null) goto _L2; else goto _L4
_L4:
        JsonSerializer jsonserializer = serializerprovider.serializerInstance(annotatedmember, obj);
_L6:
        if (jsonserializer == null)
        {
            jsonserializer = _elementSerializer;
        }
        JsonSerializer jsonserializer1 = findConvertingContentSerializer(serializerprovider, beanproperty, jsonserializer);
        if (jsonserializer1 == null)
        {
            jsonserializer1 = serializerprovider.findValueSerializer(java/lang/String, beanproperty);
        } else
        if (jsonserializer1 instanceof ContextualSerializer)
        {
            jsonserializer1 = ((ContextualSerializer)jsonserializer1).createContextual(serializerprovider, beanproperty);
        }
        if (isDefaultSerializer(jsonserializer1))
        {
            jsonserializer1 = null;
        }
        if (jsonserializer1 == _elementSerializer)
        {
            return this;
        } else
        {
            return new StringArraySerializer(this, beanproperty, jsonserializer1);
        }
_L2:
        jsonserializer = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public JsonSerializer getContentSerializer()
    {
        return _elementSerializer;
    }

    public JavaType getContentType()
    {
        return VALUE_TYPE;
    }

    public JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        ObjectNode objectnode = createSchemaNode("array", true);
        objectnode.put("items", createSchemaNode("string"));
        return objectnode;
    }

    public volatile boolean hasSingleElement(Object obj)
    {
        return hasSingleElement((String[])obj);
    }

    public boolean hasSingleElement(String as[])
    {
        return as.length == 1;
    }

    public volatile boolean isEmpty(Object obj)
    {
        return isEmpty((String[])obj);
    }

    public boolean isEmpty(String as[])
    {
        return as == null || as.length == 0;
    }

    public volatile void serializeContents(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serializeContents((String[])obj, h1, serializerprovider);
    }

    public void serializeContents(String as[], h h1, SerializerProvider serializerprovider)
    {
        int i = as.length;
        if (i != 0)
        {
            if (_elementSerializer != null)
            {
                serializeContentsSlow(as, h1, serializerprovider, _elementSerializer);
                return;
            }
            int j = 0;
            while (j < i) 
            {
                if (as[j] == null)
                {
                    h1.writeNull();
                } else
                {
                    h1.writeString(as[j]);
                }
                j++;
            }
        }
    }

}
