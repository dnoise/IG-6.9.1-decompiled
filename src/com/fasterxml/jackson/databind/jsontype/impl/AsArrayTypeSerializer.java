// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;

// Referenced classes of package com.fasterxml.jackson.databind.jsontype.impl:
//            TypeSerializerBase

public class AsArrayTypeSerializer extends TypeSerializerBase
{

    public AsArrayTypeSerializer(TypeIdResolver typeidresolver, BeanProperty beanproperty)
    {
        super(typeidresolver, beanproperty);
    }

    public volatile TypeSerializer forProperty(BeanProperty beanproperty)
    {
        return forProperty(beanproperty);
    }

    public AsArrayTypeSerializer forProperty(BeanProperty beanproperty)
    {
        if (_property == beanproperty)
        {
            return this;
        } else
        {
            return new AsArrayTypeSerializer(_idResolver, beanproperty);
        }
    }

    public com.fasterxml.jackson.annotation.JsonTypeInfo.As getTypeInclusion()
    {
        return com.fasterxml.jackson.annotation.JsonTypeInfo.As.WRAPPER_ARRAY;
    }

    public void writeCustomTypePrefixForArray(Object obj, h h1, String s)
    {
        h1.writeStartArray();
        h1.writeString(s);
        h1.writeStartArray();
    }

    public void writeCustomTypePrefixForObject(Object obj, h h1, String s)
    {
        h1.writeStartArray();
        h1.writeString(s);
        h1.writeStartObject();
    }

    public void writeCustomTypePrefixForScalar(Object obj, h h1, String s)
    {
        h1.writeStartArray();
        h1.writeString(s);
    }

    public void writeCustomTypeSuffixForArray(Object obj, h h1, String s)
    {
        writeTypeSuffixForArray(obj, h1);
    }

    public void writeCustomTypeSuffixForObject(Object obj, h h1, String s)
    {
        writeTypeSuffixForObject(obj, h1);
    }

    public void writeCustomTypeSuffixForScalar(Object obj, h h1, String s)
    {
        writeTypeSuffixForScalar(obj, h1);
    }

    public void writeTypePrefixForArray(Object obj, h h1)
    {
        h1.writeStartArray();
        h1.writeString(idFromValue(obj));
        h1.writeStartArray();
    }

    public void writeTypePrefixForArray(Object obj, h h1, Class class1)
    {
        h1.writeStartArray();
        h1.writeString(idFromValueAndType(obj, class1));
        h1.writeStartArray();
    }

    public void writeTypePrefixForObject(Object obj, h h1)
    {
        h1.writeStartArray();
        h1.writeString(idFromValue(obj));
        h1.writeStartObject();
    }

    public void writeTypePrefixForObject(Object obj, h h1, Class class1)
    {
        h1.writeStartArray();
        h1.writeString(idFromValueAndType(obj, class1));
        h1.writeStartObject();
    }

    public void writeTypePrefixForScalar(Object obj, h h1)
    {
        h1.writeStartArray();
        h1.writeString(idFromValue(obj));
    }

    public void writeTypePrefixForScalar(Object obj, h h1, Class class1)
    {
        h1.writeStartArray();
        h1.writeString(idFromValueAndType(obj, class1));
    }

    public void writeTypeSuffixForArray(Object obj, h h1)
    {
        h1.writeEndArray();
        h1.writeEndArray();
    }

    public void writeTypeSuffixForObject(Object obj, h h1)
    {
        h1.writeEndObject();
        h1.writeEndArray();
    }

    public void writeTypeSuffixForScalar(Object obj, h h1)
    {
        h1.writeEndArray();
    }
}
