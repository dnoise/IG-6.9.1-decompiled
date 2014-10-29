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
import java.util.Collection;
import java.util.Iterator;

public class StringCollectionSerializer extends StaticListSerializerBase
    implements ContextualSerializer
{

    public static final StringCollectionSerializer instance = new StringCollectionSerializer();
    protected final JsonSerializer _serializer;

    protected StringCollectionSerializer()
    {
        this(null);
    }

    protected StringCollectionSerializer(JsonSerializer jsonserializer)
    {
        super(java/util/Collection);
        _serializer = jsonserializer;
    }

    private final void _serializeUnwrapped(Collection collection, h h1, SerializerProvider serializerprovider)
    {
        if (_serializer == null)
        {
            serializeContents(collection, h1, serializerprovider);
            return;
        } else
        {
            serializeUsingCustom(collection, h1, serializerprovider);
            return;
        }
    }

    private final void serializeContents(Collection collection, h h1, SerializerProvider serializerprovider)
    {
        if (_serializer == null) goto _L2; else goto _L1
_L1:
        serializeUsingCustom(collection, h1, serializerprovider);
_L6:
        return;
_L2:
        Iterator iterator;
        int i;
        iterator = collection.iterator();
        i = 0;
_L4:
label0:
        {
            if (!iterator.hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            String s = (String)iterator.next();
            if (s == null)
            {
                try
                {
                    serializerprovider.defaultSerializeNull(h1);
                    break label0;
                }
                catch (Exception exception)
                {
                    wrapAndThrow(serializerprovider, exception, collection, i);
                }
                break; /* Loop/switch isn't completed */
            }
        }
        h1.writeString(s);
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void serializeUsingCustom(Collection collection, h h1, SerializerProvider serializerprovider)
    {
        JsonSerializer jsonserializer;
        Iterator iterator;
        jsonserializer = _serializer;
        iterator = collection.iterator();
_L2:
        String s;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        s = (String)iterator.next();
        if (s == null)
        {
            try
            {
                serializerprovider.defaultSerializeNull(h1);
            }
            catch (Exception exception)
            {
                wrapAndThrow(serializerprovider, exception, collection, 0);
            }
            continue; /* Loop/switch isn't completed */
        }
        jsonserializer.serialize(s, h1, serializerprovider);
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void acceptContentVisitor(JsonArrayFormatVisitor jsonarrayformatvisitor)
    {
        jsonarrayformatvisitor.itemsFormat(JsonFormatTypes.STRING);
    }

    protected JsonNode contentSchema()
    {
        return createSchemaNode("string", true);
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
            return new StringCollectionSerializer(jsonserializer1);
        }
_L2:
        jsonserializer = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serialize((Collection)obj, h1, serializerprovider);
    }

    public void serialize(Collection collection, h h1, SerializerProvider serializerprovider)
    {
        if (collection.size() == 1 && serializerprovider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED))
        {
            _serializeUnwrapped(collection, h1, serializerprovider);
            return;
        }
        h1.writeStartArray();
        if (_serializer == null)
        {
            serializeContents(collection, h1, serializerprovider);
        } else
        {
            serializeUsingCustom(collection, h1, serializerprovider);
        }
        h1.writeEndArray();
    }

    public volatile void serializeWithType(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        serializeWithType((Collection)obj, h1, serializerprovider, typeserializer);
    }

    public void serializeWithType(Collection collection, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        typeserializer.writeTypePrefixForArray(collection, h1);
        if (_serializer == null)
        {
            serializeContents(collection, h1, serializerprovider);
        } else
        {
            serializeUsingCustom(collection, h1, serializerprovider);
        }
        typeserializer.writeTypeSuffixForArray(collection, h1);
    }

}
