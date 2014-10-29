// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.util.EnumSet;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdDeserializer

public class EnumSetDeserializer extends StdDeserializer
    implements ContextualDeserializer
{

    private static final long serialVersionUID = 0x304981f4d0f126c9L;
    protected final Class _enumClass;
    protected JsonDeserializer _enumDeserializer;
    protected final JavaType _enumType;

    public EnumSetDeserializer(JavaType javatype, JsonDeserializer jsondeserializer)
    {
        super(java/util/EnumSet);
        _enumType = javatype;
        _enumClass = javatype.getRawClass();
        _enumDeserializer = jsondeserializer;
    }

    private EnumSet constructSet()
    {
        return EnumSet.noneOf(_enumClass);
    }

    public JsonDeserializer createContextual(DeserializationContext deserializationcontext, BeanProperty beanproperty)
    {
        JsonDeserializer jsondeserializer = _enumDeserializer;
        if (jsondeserializer != null) goto _L2; else goto _L1
_L1:
        jsondeserializer = deserializationcontext.findContextualValueDeserializer(_enumType, beanproperty);
_L4:
        return withDeserializer(jsondeserializer);
_L2:
        if (jsondeserializer instanceof ContextualDeserializer)
        {
            jsondeserializer = ((ContextualDeserializer)jsondeserializer).createContextual(deserializationcontext, beanproperty);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public EnumSet deserialize(l l1, DeserializationContext deserializationcontext)
    {
        if (!l1.isExpectedStartArrayToken())
        {
            throw deserializationcontext.mappingException(java/util/EnumSet);
        }
        EnumSet enumset = constructSet();
        do
        {
            r r1 = l1.nextToken();
            if (r1 == r.e)
            {
                break;
            }
            if (r1 == r.m)
            {
                throw deserializationcontext.mappingException(_enumClass);
            }
            Enum enum = (Enum)_enumDeserializer.deserialize(l1, deserializationcontext);
            if (enum != null)
            {
                enumset.add(enum);
            }
        } while (true);
        return enumset;
    }

    public Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return typedeserializer.deserializeTypedFromArray(l1, deserializationcontext);
    }

    public boolean isCachable()
    {
        return true;
    }

    public EnumSetDeserializer withDeserializer(JsonDeserializer jsondeserializer)
    {
        if (_enumDeserializer == jsondeserializer)
        {
            return this;
        } else
        {
            return new EnumSetDeserializer(_enumType, jsondeserializer);
        }
    }
}
