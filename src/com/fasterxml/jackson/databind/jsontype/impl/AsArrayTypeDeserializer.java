// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.a.g.m;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.Serializable;

// Referenced classes of package com.fasterxml.jackson.databind.jsontype.impl:
//            TypeDeserializerBase

public class AsArrayTypeDeserializer extends TypeDeserializerBase
    implements Serializable
{

    private static final long serialVersionUID = 0x4a2f47f9ad71b962L;

    public AsArrayTypeDeserializer(JavaType javatype, TypeIdResolver typeidresolver, String s, boolean flag, Class class1)
    {
        super(javatype, typeidresolver, s, flag, class1);
    }

    public AsArrayTypeDeserializer(AsArrayTypeDeserializer asarraytypedeserializer, BeanProperty beanproperty)
    {
        super(asarraytypedeserializer, beanproperty);
    }

    private final Object _deserialize(l l1, DeserializationContext deserializationcontext)
    {
        boolean flag = l1.isExpectedStartArrayToken();
        String s = _locateTypeId(l1, deserializationcontext);
        JsonDeserializer jsondeserializer = _findDeserializer(deserializationcontext, s);
        if (_typeIdVisible && l1.getCurrentToken() == r.b)
        {
            TokenBuffer tokenbuffer = new TokenBuffer(null);
            tokenbuffer.writeStartObject();
            tokenbuffer.writeFieldName(_typePropertyName);
            tokenbuffer.writeString(s);
            l1 = m.a(tokenbuffer.asParser(l1), l1);
            l1.nextToken();
        }
        Object obj = jsondeserializer.deserialize(l1, deserializationcontext);
        if (flag && l1.nextToken() != r.e)
        {
            throw deserializationcontext.wrongTokenException(l1, r.e, "expected closing END_ARRAY after type information and deserialized value");
        } else
        {
            return obj;
        }
    }

    protected final String _locateTypeId(l l1, DeserializationContext deserializationcontext)
    {
        if (!l1.isExpectedStartArrayToken())
        {
            if (_defaultImpl != null)
            {
                return _idResolver.idFromBaseType();
            } else
            {
                throw deserializationcontext.wrongTokenException(l1, r.d, (new StringBuilder("need JSON Array to contain As.WRAPPER_ARRAY type information for class ")).append(baseTypeName()).toString());
            }
        }
        if (l1.nextToken() == r.h)
        {
            String s = l1.getText();
            l1.nextToken();
            return s;
        }
        if (_defaultImpl != null)
        {
            return _idResolver.idFromBaseType();
        } else
        {
            throw deserializationcontext.wrongTokenException(l1, r.h, (new StringBuilder("need JSON String that contains type id (for subtype of ")).append(baseTypeName()).append(")").toString());
        }
    }

    public Object deserializeTypedFromAny(l l1, DeserializationContext deserializationcontext)
    {
        return _deserialize(l1, deserializationcontext);
    }

    public Object deserializeTypedFromArray(l l1, DeserializationContext deserializationcontext)
    {
        return _deserialize(l1, deserializationcontext);
    }

    public Object deserializeTypedFromObject(l l1, DeserializationContext deserializationcontext)
    {
        return _deserialize(l1, deserializationcontext);
    }

    public Object deserializeTypedFromScalar(l l1, DeserializationContext deserializationcontext)
    {
        return _deserialize(l1, deserializationcontext);
    }

    public TypeDeserializer forProperty(BeanProperty beanproperty)
    {
        if (beanproperty == _property)
        {
            return this;
        } else
        {
            return new AsArrayTypeDeserializer(this, beanproperty);
        }
    }

    public com.fasterxml.jackson.annotation.JsonTypeInfo.As getTypeInclusion()
    {
        return com.fasterxml.jackson.annotation.JsonTypeInfo.As.WRAPPER_ARRAY;
    }
}
