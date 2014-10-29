// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;

public class JSONPObject
    implements JsonSerializable
{

    protected final String _function;
    protected final JavaType _serializationType;
    protected final Object _value;

    public JSONPObject(String s, Object obj)
    {
        this(s, obj, null);
    }

    public JSONPObject(String s, Object obj, JavaType javatype)
    {
        _function = s;
        _value = obj;
        _serializationType = javatype;
    }

    public String getFunction()
    {
        return _function;
    }

    public JavaType getSerializationType()
    {
        return _serializationType;
    }

    public Object getValue()
    {
        return _value;
    }

    public void serialize(h h1, SerializerProvider serializerprovider)
    {
        h1.writeRaw(_function);
        h1.writeRaw('(');
        if (_value == null)
        {
            serializerprovider.defaultSerializeNull(h1);
        } else
        if (_serializationType != null)
        {
            serializerprovider.findTypedValueSerializer(_serializationType, true, null).serialize(_value, h1, serializerprovider);
        } else
        {
            serializerprovider.findTypedValueSerializer(_value.getClass(), true, null).serialize(_value, h1, serializerprovider);
        }
        h1.writeRaw(')');
    }

    public void serializeWithType(h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        serialize(h1, serializerprovider);
    }
}
