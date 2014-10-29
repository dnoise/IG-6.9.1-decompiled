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

public class AsWrapperTypeSerializer extends TypeSerializerBase
{

    public AsWrapperTypeSerializer(TypeIdResolver typeidresolver, BeanProperty beanproperty)
    {
        super(typeidresolver, beanproperty);
    }

    public volatile TypeSerializer forProperty(BeanProperty beanproperty)
    {
        return forProperty(beanproperty);
    }

    public AsWrapperTypeSerializer forProperty(BeanProperty beanproperty)
    {
        if (_property == beanproperty)
        {
            return this;
        } else
        {
            return new AsWrapperTypeSerializer(_idResolver, beanproperty);
        }
    }

    public com.fasterxml.jackson.annotation.JsonTypeInfo.As getTypeInclusion()
    {
        return com.fasterxml.jackson.annotation.JsonTypeInfo.As.WRAPPER_OBJECT;
    }

    public void writeCustomTypePrefixForArray(Object obj, h h1, String s)
    {
        h1.writeStartObject();
        h1.writeArrayFieldStart(s);
    }

    public void writeCustomTypePrefixForObject(Object obj, h h1, String s)
    {
        h1.writeStartObject();
        h1.writeObjectFieldStart(s);
    }

    public void writeCustomTypePrefixForScalar(Object obj, h h1, String s)
    {
        h1.writeStartObject();
        h1.writeFieldName(s);
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
        h1.writeStartObject();
        h1.writeArrayFieldStart(idFromValue(obj));
    }

    public void writeTypePrefixForArray(Object obj, h h1, Class class1)
    {
        h1.writeStartObject();
        h1.writeArrayFieldStart(idFromValueAndType(obj, class1));
    }

    public void writeTypePrefixForObject(Object obj, h h1)
    {
        h1.writeStartObject();
        h1.writeObjectFieldStart(idFromValue(obj));
    }

    public void writeTypePrefixForObject(Object obj, h h1, Class class1)
    {
        h1.writeStartObject();
        h1.writeObjectFieldStart(idFromValueAndType(obj, class1));
    }

    public void writeTypePrefixForScalar(Object obj, h h1)
    {
        h1.writeStartObject();
        h1.writeFieldName(idFromValue(obj));
    }

    public void writeTypePrefixForScalar(Object obj, h h1, Class class1)
    {
        h1.writeStartObject();
        h1.writeFieldName(idFromValueAndType(obj, class1));
    }

    public void writeTypeSuffixForArray(Object obj, h h1)
    {
        h1.writeEndArray();
        h1.writeEndObject();
    }

    public void writeTypeSuffixForObject(Object obj, h h1)
    {
        h1.writeEndObject();
        h1.writeEndObject();
    }

    public void writeTypeSuffixForScalar(Object obj, h h1)
    {
        h1.writeEndObject();
    }
}
