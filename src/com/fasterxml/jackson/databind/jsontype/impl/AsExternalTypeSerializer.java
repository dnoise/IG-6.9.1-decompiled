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

public class AsExternalTypeSerializer extends TypeSerializerBase
{

    protected final String _typePropertyName;

    public AsExternalTypeSerializer(TypeIdResolver typeidresolver, BeanProperty beanproperty, String s)
    {
        super(typeidresolver, beanproperty);
        _typePropertyName = s;
    }

    protected final void _writeArrayPrefix(Object obj, h h1)
    {
        h1.writeStartArray();
    }

    protected final void _writeArraySuffix(Object obj, h h1, String s)
    {
        h1.writeEndArray();
        h1.writeStringField(_typePropertyName, s);
    }

    protected final void _writeObjectPrefix(Object obj, h h1)
    {
        h1.writeStartObject();
    }

    protected final void _writeObjectSuffix(Object obj, h h1, String s)
    {
        h1.writeEndObject();
        h1.writeStringField(_typePropertyName, s);
    }

    protected final void _writeScalarPrefix(Object obj, h h1)
    {
    }

    protected final void _writeScalarSuffix(Object obj, h h1, String s)
    {
        h1.writeStringField(_typePropertyName, s);
    }

    public volatile TypeSerializer forProperty(BeanProperty beanproperty)
    {
        return forProperty(beanproperty);
    }

    public AsExternalTypeSerializer forProperty(BeanProperty beanproperty)
    {
        if (_property == beanproperty)
        {
            return this;
        } else
        {
            return new AsExternalTypeSerializer(_idResolver, beanproperty, _typePropertyName);
        }
    }

    public String getPropertyName()
    {
        return _typePropertyName;
    }

    public com.fasterxml.jackson.annotation.JsonTypeInfo.As getTypeInclusion()
    {
        return com.fasterxml.jackson.annotation.JsonTypeInfo.As.EXTERNAL_PROPERTY;
    }

    public void writeCustomTypePrefixForArray(Object obj, h h1, String s)
    {
        _writeArrayPrefix(obj, h1);
    }

    public void writeCustomTypePrefixForObject(Object obj, h h1, String s)
    {
        _writeObjectPrefix(obj, h1);
    }

    public void writeCustomTypePrefixForScalar(Object obj, h h1, String s)
    {
        _writeScalarPrefix(obj, h1);
    }

    public void writeCustomTypeSuffixForArray(Object obj, h h1, String s)
    {
        _writeArraySuffix(obj, h1, s);
    }

    public void writeCustomTypeSuffixForObject(Object obj, h h1, String s)
    {
        _writeObjectSuffix(obj, h1, s);
    }

    public void writeCustomTypeSuffixForScalar(Object obj, h h1, String s)
    {
        _writeScalarSuffix(obj, h1, s);
    }

    public void writeTypePrefixForArray(Object obj, h h1)
    {
        _writeArrayPrefix(obj, h1);
    }

    public void writeTypePrefixForArray(Object obj, h h1, Class class1)
    {
        _writeArrayPrefix(obj, h1);
    }

    public void writeTypePrefixForObject(Object obj, h h1)
    {
        _writeObjectPrefix(obj, h1);
    }

    public void writeTypePrefixForObject(Object obj, h h1, Class class1)
    {
        _writeObjectPrefix(obj, h1);
    }

    public void writeTypePrefixForScalar(Object obj, h h1)
    {
        _writeScalarPrefix(obj, h1);
    }

    public void writeTypePrefixForScalar(Object obj, h h1, Class class1)
    {
        _writeScalarPrefix(obj, h1);
    }

    public void writeTypeSuffixForArray(Object obj, h h1)
    {
        _writeArraySuffix(obj, h1, idFromValue(obj));
    }

    public void writeTypeSuffixForObject(Object obj, h h1)
    {
        _writeObjectSuffix(obj, h1, idFromValue(obj));
    }

    public void writeTypeSuffixForScalar(Object obj, h h1)
    {
        _writeScalarSuffix(obj, h1, idFromValue(obj));
    }
}
