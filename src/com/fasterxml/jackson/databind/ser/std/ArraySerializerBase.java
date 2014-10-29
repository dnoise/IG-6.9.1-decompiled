// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;

public abstract class ArraySerializerBase extends ContainerSerializer
{

    protected final BeanProperty _property;

    protected ArraySerializerBase(ArraySerializerBase arrayserializerbase)
    {
        super(arrayserializerbase._handledType, false);
        _property = arrayserializerbase._property;
    }

    protected ArraySerializerBase(ArraySerializerBase arrayserializerbase, BeanProperty beanproperty)
    {
        super(arrayserializerbase._handledType, false);
        _property = beanproperty;
    }

    protected ArraySerializerBase(Class class1)
    {
        super(class1);
        _property = null;
    }

    protected ArraySerializerBase(Class class1, BeanProperty beanproperty)
    {
        super(class1);
        _property = beanproperty;
    }

    public final void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        if (serializerprovider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) && hasSingleElement(obj))
        {
            serializeContents(obj, h1, serializerprovider);
            return;
        } else
        {
            h1.writeStartArray();
            serializeContents(obj, h1, serializerprovider);
            h1.writeEndArray();
            return;
        }
    }

    protected abstract void serializeContents(Object obj, h h1, SerializerProvider serializerprovider);

    public final void serializeWithType(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        typeserializer.writeTypePrefixForArray(obj, h1);
        serializeContents(obj, h1, serializerprovider);
        typeserializer.writeTypeSuffixForArray(obj, h1);
    }
}
