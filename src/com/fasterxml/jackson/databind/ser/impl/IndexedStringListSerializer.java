// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.std.StaticListSerializerBase;
import java.util.List;

public final class IndexedStringListSerializer extends StaticListSerializerBase
    implements ContextualSerializer
{

    public static final IndexedStringListSerializer instance = new IndexedStringListSerializer();
    protected final JsonSerializer _serializer;

    protected IndexedStringListSerializer()
    {
        this(null);
    }

    public IndexedStringListSerializer(JsonSerializer jsonserializer)
    {
        super(java/util/List);
        _serializer = jsonserializer;
    }

    private final void _serializeUnwrapped(List list, h h1, SerializerProvider serializerprovider)
    {
        if (_serializer == null)
        {
            serializeContents(list, h1, serializerprovider, 1);
            return;
        } else
        {
            serializeUsingCustom(list, h1, serializerprovider, 1);
            return;
        }
    }

    private final void serializeContents(List list, h h1, SerializerProvider serializerprovider, int i)
    {
        int j = 0;
_L2:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        String s = (String)list.get(j);
        if (s == null)
        {
            try
            {
                serializerprovider.defaultSerializeNull(h1);
                break MISSING_BLOCK_LABEL_58;
            }
            catch (Exception exception)
            {
                wrapAndThrow(serializerprovider, exception, list, j);
            }
            break MISSING_BLOCK_LABEL_57;
        }
        h1.writeString(s);
        break MISSING_BLOCK_LABEL_58;
        return;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private final void serializeUsingCustom(List list, h h1, SerializerProvider serializerprovider, int i)
    {
        int j = 0;
        JsonSerializer jsonserializer = _serializer;
_L2:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        String s = (String)list.get(j);
        if (s == null)
        {
            try
            {
                serializerprovider.defaultSerializeNull(h1);
                break MISSING_BLOCK_LABEL_67;
            }
            catch (Exception exception)
            {
                wrapAndThrow(serializerprovider, exception, list, j);
            }
            break MISSING_BLOCK_LABEL_66;
        }
        jsonserializer.serialize(s, h1, serializerprovider);
        break MISSING_BLOCK_LABEL_67;
        return;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected final void acceptContentVisitor(JsonArrayFormatVisitor jsonarrayformatvisitor)
    {
        jsonarrayformatvisitor.itemsFormat(JsonFormatTypes.STRING);
    }

    protected final JsonNode contentSchema()
    {
        return createSchemaNode("string", true);
    }

    public final JsonSerializer createContextual(SerializerProvider serializerprovider, BeanProperty beanproperty)
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
            jsonserializer = _serializer;
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
        if (jsonserializer1 == _serializer)
        {
            return this;
        } else
        {
            return new IndexedStringListSerializer(jsonserializer1);
        }
_L2:
        jsonserializer = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serialize((List)obj, h1, serializerprovider);
    }

    public final void serialize(List list, h h1, SerializerProvider serializerprovider)
    {
        int i = list.size();
        if (i == 1 && serializerprovider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED))
        {
            _serializeUnwrapped(list, h1, serializerprovider);
            return;
        }
        h1.writeStartArray();
        if (_serializer == null)
        {
            serializeContents(list, h1, serializerprovider, i);
        } else
        {
            serializeUsingCustom(list, h1, serializerprovider, i);
        }
        h1.writeEndArray();
    }

    public final volatile void serializeWithType(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        serializeWithType((List)obj, h1, serializerprovider, typeserializer);
    }

    public final void serializeWithType(List list, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        int i = list.size();
        typeserializer.writeTypePrefixForArray(list, h1);
        if (_serializer == null)
        {
            serializeContents(list, h1, serializerprovider, i);
        } else
        {
            serializeUsingCustom(list, h1, serializerprovider, i);
        }
        typeserializer.writeTypeSuffixForArray(list, h1);
    }

}
