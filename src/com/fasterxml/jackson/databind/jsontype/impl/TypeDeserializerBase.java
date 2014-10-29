// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.annotation.NoClass;
import com.fasterxml.jackson.databind.deser.std.NullifyingDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import java.io.Serializable;
import java.util.HashMap;

public abstract class TypeDeserializerBase extends TypeDeserializer
    implements Serializable
{

    private static final long serialVersionUID = 0x3dd3c47a2bb4a93L;
    protected final JavaType _baseType;
    protected final JavaType _defaultImpl;
    protected JsonDeserializer _defaultImplDeserializer;
    protected final HashMap _deserializers;
    protected final TypeIdResolver _idResolver;
    protected final BeanProperty _property;
    protected final boolean _typeIdVisible;
    protected final String _typePropertyName;

    protected TypeDeserializerBase(JavaType javatype, TypeIdResolver typeidresolver, String s, boolean flag, Class class1)
    {
        _baseType = javatype;
        _idResolver = typeidresolver;
        _typePropertyName = s;
        _typeIdVisible = flag;
        _deserializers = new HashMap();
        if (class1 == null)
        {
            _defaultImpl = null;
        } else
        {
            _defaultImpl = javatype.forcedNarrowBy(class1);
        }
        _property = null;
    }

    protected TypeDeserializerBase(TypeDeserializerBase typedeserializerbase, BeanProperty beanproperty)
    {
        _baseType = typedeserializerbase._baseType;
        _idResolver = typedeserializerbase._idResolver;
        _typePropertyName = typedeserializerbase._typePropertyName;
        _typeIdVisible = typedeserializerbase._typeIdVisible;
        _deserializers = typedeserializerbase._deserializers;
        _defaultImpl = typedeserializerbase._defaultImpl;
        _defaultImplDeserializer = typedeserializerbase._defaultImplDeserializer;
        _property = beanproperty;
    }

    protected final JsonDeserializer _findDefaultImplDeserializer(DeserializationContext deserializationcontext)
    {
        if (_defaultImpl == null)
        {
            if (!deserializationcontext.isEnabled(DeserializationFeature.FAIL_ON_INVALID_SUBTYPE))
            {
                return NullifyingDeserializer.instance;
            } else
            {
                return null;
            }
        }
        if (_defaultImpl.getRawClass() == com/fasterxml/jackson/databind/annotation/NoClass)
        {
            return NullifyingDeserializer.instance;
        }
        JsonDeserializer jsondeserializer;
        synchronized (_defaultImpl)
        {
            if (_defaultImplDeserializer == null)
            {
                _defaultImplDeserializer = deserializationcontext.findContextualValueDeserializer(_defaultImpl, _property);
            }
            jsondeserializer = _defaultImplDeserializer;
        }
        return jsondeserializer;
    }

    protected final JsonDeserializer _findDeserializer(DeserializationContext deserializationcontext, String s)
    {
        HashMap hashmap = _deserializers;
        hashmap;
        JVM INSTR monitorenter ;
        JsonDeserializer jsondeserializer = (JsonDeserializer)_deserializers.get(s);
        if (jsondeserializer != null) goto _L2; else goto _L1
_L1:
        JavaType javatype = _idResolver.typeFromId(s);
        if (javatype != null) goto _L4; else goto _L3
_L3:
        if (_defaultImpl == null)
        {
            throw deserializationcontext.unknownTypeException(_baseType, s);
        }
        break MISSING_BLOCK_LABEL_66;
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        jsondeserializer = _findDefaultImplDeserializer(deserializationcontext);
_L5:
        _deserializers.put(s, jsondeserializer);
_L2:
        hashmap;
        JVM INSTR monitorexit ;
        return jsondeserializer;
_L4:
        JsonDeserializer jsondeserializer1;
        if (_baseType != null && _baseType.getClass() == javatype.getClass())
        {
            javatype = _baseType.narrowBy(javatype.getRawClass());
        }
        jsondeserializer1 = deserializationcontext.findContextualValueDeserializer(javatype, _property);
        jsondeserializer = jsondeserializer1;
          goto _L5
    }

    public String baseTypeName()
    {
        return _baseType.getRawClass().getName();
    }

    public abstract TypeDeserializer forProperty(BeanProperty beanproperty);

    public Class getDefaultImpl()
    {
        if (_defaultImpl == null)
        {
            return null;
        } else
        {
            return _defaultImpl.getRawClass();
        }
    }

    public final String getPropertyName()
    {
        return _typePropertyName;
    }

    public TypeIdResolver getTypeIdResolver()
    {
        return _idResolver;
    }

    public abstract com.fasterxml.jackson.annotation.JsonTypeInfo.As getTypeInclusion();

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append('[').append(getClass().getName());
        stringbuilder.append("; base-type:").append(_baseType);
        stringbuilder.append("; id-resolver: ").append(_idResolver);
        stringbuilder.append(']');
        return stringbuilder.toString();
    }
}
