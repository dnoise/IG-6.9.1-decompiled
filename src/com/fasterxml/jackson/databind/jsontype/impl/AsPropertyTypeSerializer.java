// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;

// Referenced classes of package com.fasterxml.jackson.databind.jsontype.impl:
//            AsArrayTypeSerializer

public class AsPropertyTypeSerializer extends AsArrayTypeSerializer
{

    protected final String _typePropertyName;

    public AsPropertyTypeSerializer(TypeIdResolver typeidresolver, BeanProperty beanproperty, String s)
    {
        super(typeidresolver, beanproperty);
        _typePropertyName = s;
    }

    public volatile TypeSerializer forProperty(BeanProperty beanproperty)
    {
        return forProperty(beanproperty);
    }

    public volatile AsArrayTypeSerializer forProperty(BeanProperty beanproperty)
    {
        return forProperty(beanproperty);
    }

    public AsPropertyTypeSerializer forProperty(BeanProperty beanproperty)
    {
        if (_property == beanproperty)
        {
            return this;
        } else
        {
            return new AsPropertyTypeSerializer(_idResolver, beanproperty, _typePropertyName);
        }
    }

    public String getPropertyName()
    {
        return _typePropertyName;
    }

    public com.fasterxml.jackson.annotation.JsonTypeInfo.As getTypeInclusion()
    {
        return com.fasterxml.jackson.annotation.JsonTypeInfo.As.PROPERTY;
    }

    public void writeCustomTypePrefixForObject(Object obj, h h1, String s)
    {
        h1.writeStartObject();
        h1.writeStringField(_typePropertyName, s);
    }

    public void writeCustomTypeSuffixForObject(Object obj, h h1, String s)
    {
        h1.writeEndObject();
    }

    public void writeTypePrefixForObject(Object obj, h h1)
    {
        h1.writeStartObject();
        h1.writeStringField(_typePropertyName, idFromValue(obj));
    }

    public void writeTypePrefixForObject(Object obj, h h1, Class class1)
    {
        h1.writeStartObject();
        h1.writeStringField(_typePropertyName, idFromValueAndType(obj, class1));
    }

    public void writeTypeSuffixForObject(Object obj, h h1)
    {
        h1.writeEndObject();
    }
}
