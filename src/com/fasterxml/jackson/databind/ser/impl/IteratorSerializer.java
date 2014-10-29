// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase;
import java.util.Iterator;

public class IteratorSerializer extends AsArraySerializerBase
{

    public IteratorSerializer(JavaType javatype, boolean flag, TypeSerializer typeserializer, BeanProperty beanproperty)
    {
        super(java/util/Iterator, javatype, flag, typeserializer, beanproperty, null);
    }

    public IteratorSerializer(IteratorSerializer iteratorserializer, BeanProperty beanproperty, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        super(iteratorserializer, beanproperty, typeserializer, jsonserializer);
    }

    public ContainerSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
    {
        return new IteratorSerializer(_elementType, _staticTyping, typeserializer, _property);
    }

    public volatile boolean hasSingleElement(Object obj)
    {
        return hasSingleElement((Iterator)obj);
    }

    public boolean hasSingleElement(Iterator iterator)
    {
        return false;
    }

    public volatile boolean isEmpty(Object obj)
    {
        return isEmpty((Iterator)obj);
    }

    public boolean isEmpty(Iterator iterator)
    {
        return iterator == null || !iterator.hasNext();
    }

    public volatile void serializeContents(Object obj, h h, SerializerProvider serializerprovider)
    {
        serializeContents((Iterator)obj, h, serializerprovider);
    }

    public void serializeContents(Iterator iterator, h h, SerializerProvider serializerprovider)
    {
        Class class1 = null;
        if (iterator.hasNext())
        {
            TypeSerializer typeserializer = _valueTypeSerializer;
            JsonSerializer jsonserializer = null;
            do
            {
                Object obj = iterator.next();
                if (obj == null)
                {
                    serializerprovider.defaultSerializeNull(h);
                } else
                {
                    Class class2 = obj.getClass();
                    JsonSerializer jsonserializer1;
                    if (class2 == class1)
                    {
                        jsonserializer1 = jsonserializer;
                    } else
                    {
                        jsonserializer = serializerprovider.findValueSerializer(class2, _property);
                        class1 = class2;
                        jsonserializer1 = jsonserializer;
                    }
                    if (typeserializer == null)
                    {
                        jsonserializer1.serialize(obj, h, serializerprovider);
                    } else
                    {
                        jsonserializer1.serializeWithType(obj, h, serializerprovider, typeserializer);
                    }
                }
            } while (iterator.hasNext());
        }
    }

    public IteratorSerializer withResolved(BeanProperty beanproperty, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        return new IteratorSerializer(this, beanproperty, typeserializer, jsonserializer);
    }

    public volatile AsArraySerializerBase withResolved(BeanProperty beanproperty, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        return withResolved(beanproperty, typeserializer, jsonserializer);
    }
}
