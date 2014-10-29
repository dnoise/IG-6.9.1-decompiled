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

// Referenced classes of package com.fasterxml.jackson.databind.jsontype.impl:
//            AsArrayTypeDeserializer

public class AsPropertyTypeDeserializer extends AsArrayTypeDeserializer
{

    private static final long serialVersionUID = 1L;

    public AsPropertyTypeDeserializer(JavaType javatype, TypeIdResolver typeidresolver, String s, boolean flag, Class class1)
    {
        super(javatype, typeidresolver, s, flag, class1);
    }

    public AsPropertyTypeDeserializer(AsPropertyTypeDeserializer aspropertytypedeserializer, BeanProperty beanproperty)
    {
        super(aspropertytypedeserializer, beanproperty);
    }

    protected final Object _deserializeTypedForId(l l1, DeserializationContext deserializationcontext, TokenBuffer tokenbuffer)
    {
        String s = l1.getText();
        JsonDeserializer jsondeserializer = _findDeserializer(deserializationcontext, s);
        if (_typeIdVisible)
        {
            if (tokenbuffer == null)
            {
                tokenbuffer = new TokenBuffer(null);
            }
            tokenbuffer.writeFieldName(l1.getCurrentName());
            tokenbuffer.writeString(s);
        }
        if (tokenbuffer != null)
        {
            l1 = m.a(tokenbuffer.asParser(l1), l1);
        }
        l1.nextToken();
        return jsondeserializer.deserialize(l1, deserializationcontext);
    }

    protected Object _deserializeTypedUsingDefaultImpl(l l1, DeserializationContext deserializationcontext, TokenBuffer tokenbuffer)
    {
        JsonDeserializer jsondeserializer = _findDefaultImplDeserializer(deserializationcontext);
        Object obj;
        if (jsondeserializer != null)
        {
            if (tokenbuffer != null)
            {
                tokenbuffer.writeEndObject();
                l1 = tokenbuffer.asParser(l1);
                l1.nextToken();
            }
            obj = jsondeserializer.deserialize(l1, deserializationcontext);
        } else
        {
            obj = TypeDeserializer.deserializeIfNatural(l1, deserializationcontext, _baseType);
            if (obj == null)
            {
                if (l1.getCurrentToken() == r.d)
                {
                    return super.deserializeTypedFromAny(l1, deserializationcontext);
                } else
                {
                    throw deserializationcontext.wrongTokenException(l1, r.f, (new StringBuilder("missing property '")).append(_typePropertyName).append("' that is to contain type id  (for class ").append(baseTypeName()).append(")").toString());
                }
            }
        }
        return obj;
    }

    public Object deserializeTypedFromAny(l l1, DeserializationContext deserializationcontext)
    {
        if (l1.getCurrentToken() == r.d)
        {
            return super.deserializeTypedFromArray(l1, deserializationcontext);
        } else
        {
            return deserializeTypedFromObject(l1, deserializationcontext);
        }
    }

    public Object deserializeTypedFromObject(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        r r2;
        TokenBuffer tokenbuffer;
        if (r1 == r.b)
        {
            r1 = l1.nextToken();
        } else
        {
            if (r1 == r.d)
            {
                return _deserializeTypedUsingDefaultImpl(l1, deserializationcontext, null);
            }
            if (r1 != r.f)
            {
                return _deserializeTypedUsingDefaultImpl(l1, deserializationcontext, null);
            }
        }
        r2 = r1;
        tokenbuffer = null;
        for (; r2 == r.f; r2 = l1.nextToken())
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            if (_typePropertyName.equals(s))
            {
                return _deserializeTypedForId(l1, deserializationcontext, tokenbuffer);
            }
            if (tokenbuffer == null)
            {
                tokenbuffer = new TokenBuffer(null);
            }
            tokenbuffer.writeFieldName(s);
            tokenbuffer.copyCurrentStructure(l1);
        }

        return _deserializeTypedUsingDefaultImpl(l1, deserializationcontext, tokenbuffer);
    }

    public TypeDeserializer forProperty(BeanProperty beanproperty)
    {
        if (beanproperty == _property)
        {
            return this;
        } else
        {
            return new AsPropertyTypeDeserializer(this, beanproperty);
        }
    }

    public com.fasterxml.jackson.annotation.JsonTypeInfo.As getTypeInclusion()
    {
        return com.fasterxml.jackson.annotation.JsonTypeInfo.As.PROPERTY;
    }
}
