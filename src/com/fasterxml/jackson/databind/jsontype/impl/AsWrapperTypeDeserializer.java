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

public class AsWrapperTypeDeserializer extends TypeDeserializerBase
    implements Serializable
{

    private static final long serialVersionUID = 0x4a2f47f9ad71b962L;

    public AsWrapperTypeDeserializer(JavaType javatype, TypeIdResolver typeidresolver, String s, boolean flag, Class class1)
    {
        super(javatype, typeidresolver, s, flag, null);
    }

    protected AsWrapperTypeDeserializer(AsWrapperTypeDeserializer aswrappertypedeserializer, BeanProperty beanproperty)
    {
        super(aswrappertypedeserializer, beanproperty);
    }

    private final Object _deserialize(l l1, DeserializationContext deserializationcontext)
    {
        if (l1.getCurrentToken() != r.b)
        {
            throw deserializationcontext.wrongTokenException(l1, r.b, (new StringBuilder("need JSON Object to contain As.WRAPPER_OBJECT type information for class ")).append(baseTypeName()).toString());
        }
        if (l1.nextToken() != r.f)
        {
            throw deserializationcontext.wrongTokenException(l1, r.f, (new StringBuilder("need JSON String that contains type id (for subtype of ")).append(baseTypeName()).append(")").toString());
        }
        String s = l1.getText();
        JsonDeserializer jsondeserializer = _findDeserializer(deserializationcontext, s);
        l1.nextToken();
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
        if (l1.nextToken() != r.c)
        {
            throw deserializationcontext.wrongTokenException(l1, r.c, "expected closing END_OBJECT after type information and deserialized value");
        } else
        {
            return obj;
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
            return new AsWrapperTypeDeserializer(this, beanproperty);
        }
    }

    public com.fasterxml.jackson.annotation.JsonTypeInfo.As getTypeInclusion()
    {
        return com.fasterxml.jackson.annotation.JsonTypeInfo.As.WRAPPER_OBJECT;
    }
}
