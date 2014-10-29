// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.util.EnumMap;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdDeserializer

public class EnumMapDeserializer extends StdDeserializer
    implements ContextualDeserializer
{

    private static final long serialVersionUID = 0x1513c456622f2ab4L;
    protected final Class _enumClass;
    protected JsonDeserializer _keyDeserializer;
    protected final JavaType _mapType;
    protected JsonDeserializer _valueDeserializer;
    protected final TypeDeserializer _valueTypeDeserializer;

    public EnumMapDeserializer(JavaType javatype, JsonDeserializer jsondeserializer, JsonDeserializer jsondeserializer1)
    {
        this(javatype, jsondeserializer, jsondeserializer1, null);
    }

    public EnumMapDeserializer(JavaType javatype, JsonDeserializer jsondeserializer, JsonDeserializer jsondeserializer1, TypeDeserializer typedeserializer)
    {
        super(java/util/EnumMap);
        _mapType = javatype;
        _enumClass = javatype.getKeyType().getRawClass();
        _keyDeserializer = jsondeserializer;
        _valueDeserializer = jsondeserializer1;
        _valueTypeDeserializer = typedeserializer;
    }

    private EnumMap constructMap()
    {
        return new EnumMap(_enumClass);
    }

    public JsonDeserializer createContextual(DeserializationContext deserializationcontext, BeanProperty beanproperty)
    {
        JsonDeserializer jsondeserializer = _keyDeserializer;
        JsonDeserializer jsondeserializer1;
        JsonDeserializer jsondeserializer2;
        TypeDeserializer typedeserializer;
        if (jsondeserializer == null)
        {
            jsondeserializer1 = deserializationcontext.findContextualValueDeserializer(_mapType.getKeyType(), beanproperty);
        } else
        {
            jsondeserializer1 = jsondeserializer;
        }
        jsondeserializer2 = _valueDeserializer;
        if (jsondeserializer2 != null) goto _L2; else goto _L1
_L1:
        jsondeserializer2 = deserializationcontext.findContextualValueDeserializer(_mapType.getContentType(), beanproperty);
_L4:
        typedeserializer = _valueTypeDeserializer;
        if (typedeserializer != null)
        {
            typedeserializer = typedeserializer.forProperty(beanproperty);
        }
        return withResolved(jsondeserializer1, jsondeserializer2, typedeserializer);
_L2:
        if (jsondeserializer2 instanceof ContextualDeserializer)
        {
            jsondeserializer2 = ((ContextualDeserializer)jsondeserializer2).createContextual(deserializationcontext, beanproperty);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public EnumMap deserialize(l l1, DeserializationContext deserializationcontext)
    {
        EnumMap enummap;
        JsonDeserializer jsondeserializer;
        TypeDeserializer typedeserializer;
        if (l1.getCurrentToken() != r.b)
        {
            throw deserializationcontext.mappingException(java/util/EnumMap);
        }
        enummap = constructMap();
        jsondeserializer = _valueDeserializer;
        typedeserializer = _valueTypeDeserializer;
_L7:
        Enum enum;
        if (l1.nextToken() == r.c)
        {
            break; /* Loop/switch isn't completed */
        }
        enum = (Enum)_keyDeserializer.deserialize(l1, deserializationcontext);
        if (enum != null)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        if (deserializationcontext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) goto _L2; else goto _L1
_L1:
        if (!l1.hasCurrentToken()) goto _L4; else goto _L3
_L3:
        String s1 = l1.getText();
        String s = s1;
_L5:
        throw deserializationcontext.weirdStringException(s, _enumClass, "value not one of declared Enum instance names");
        Exception exception;
        exception;
_L4:
        s = null;
        if (true) goto _L5; else goto _L2
_L2:
        l1.nextToken();
        l1.skipChildren();
        continue; /* Loop/switch isn't completed */
        Object obj;
        if (l1.nextToken() == r.m)
        {
            obj = null;
        } else
        if (typedeserializer == null)
        {
            obj = jsondeserializer.deserialize(l1, deserializationcontext);
        } else
        {
            obj = jsondeserializer.deserializeWithType(l1, deserializationcontext, typedeserializer);
        }
        enummap.put(enum, obj);
        if (true) goto _L7; else goto _L6
_L6:
        return enummap;
    }

    public Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return typedeserializer.deserializeTypedFromObject(l1, deserializationcontext);
    }

    public boolean isCachable()
    {
        return true;
    }

    public EnumMapDeserializer withResolved(JsonDeserializer jsondeserializer, JsonDeserializer jsondeserializer1)
    {
        return withResolved(jsondeserializer, jsondeserializer1, null);
    }

    public EnumMapDeserializer withResolved(JsonDeserializer jsondeserializer, JsonDeserializer jsondeserializer1, TypeDeserializer typedeserializer)
    {
        if (jsondeserializer == _keyDeserializer && jsondeserializer1 == _valueDeserializer && typedeserializer == _valueTypeDeserializer)
        {
            return this;
        } else
        {
            return new EnumMapDeserializer(_mapType, jsondeserializer, jsondeserializer1, _valueTypeDeserializer);
        }
    }
}
