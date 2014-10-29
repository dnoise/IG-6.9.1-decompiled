// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import java.util.EnumSet;
import java.util.Iterator;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            AsArraySerializerBase

public class EnumSetSerializer extends AsArraySerializerBase
{

    public EnumSetSerializer(JavaType javatype, BeanProperty beanproperty)
    {
        super(java/util/EnumSet, javatype, true, null, beanproperty, null);
    }

    public EnumSetSerializer(EnumSetSerializer enumsetserializer, BeanProperty beanproperty, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        super(enumsetserializer, beanproperty, typeserializer, jsonserializer);
    }

    public volatile ContainerSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
    {
        return _withValueTypeSerializer(typeserializer);
    }

    public EnumSetSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
    {
        return this;
    }

    public volatile boolean hasSingleElement(Object obj)
    {
        return hasSingleElement((EnumSet)obj);
    }

    public boolean hasSingleElement(EnumSet enumset)
    {
        return enumset.size() == 1;
    }

    public volatile boolean isEmpty(Object obj)
    {
        return isEmpty((EnumSet)obj);
    }

    public boolean isEmpty(EnumSet enumset)
    {
        return enumset == null || enumset.isEmpty();
    }

    public volatile void serializeContents(Object obj, h h, SerializerProvider serializerprovider)
    {
        serializeContents((EnumSet)obj, h, serializerprovider);
    }

    public void serializeContents(EnumSet enumset, h h, SerializerProvider serializerprovider)
    {
        JsonSerializer jsonserializer = _elementSerializer;
        Iterator iterator = enumset.iterator();
        JsonSerializer jsonserializer1 = jsonserializer;
        Enum enum;
        for (; iterator.hasNext(); jsonserializer1.serialize(enum, h, serializerprovider))
        {
            enum = (Enum)iterator.next();
            if (jsonserializer1 == null)
            {
                jsonserializer1 = serializerprovider.findValueSerializer(enum.getDeclaringClass(), _property);
            }
        }

    }

    public volatile AsArraySerializerBase withResolved(BeanProperty beanproperty, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        return withResolved(beanproperty, typeserializer, jsonserializer);
    }

    public EnumSetSerializer withResolved(BeanProperty beanproperty, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        return new EnumSetSerializer(this, beanproperty, typeserializer, jsonserializer);
    }
}
