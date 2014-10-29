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
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.util.Collection;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            ContainerDeserializerBase

public class CollectionDeserializer extends ContainerDeserializerBase
    implements ContextualDeserializer
{

    private static final long serialVersionUID = 0xe430f8b0319acf62L;
    protected final JavaType _collectionType;
    protected final JsonDeserializer _delegateDeserializer;
    protected final JsonDeserializer _valueDeserializer;
    protected final ValueInstantiator _valueInstantiator;
    protected final TypeDeserializer _valueTypeDeserializer;

    public CollectionDeserializer(JavaType javatype, JsonDeserializer jsondeserializer, TypeDeserializer typedeserializer, ValueInstantiator valueinstantiator)
    {
        this(javatype, jsondeserializer, typedeserializer, valueinstantiator, null);
    }

    protected CollectionDeserializer(JavaType javatype, JsonDeserializer jsondeserializer, TypeDeserializer typedeserializer, ValueInstantiator valueinstantiator, JsonDeserializer jsondeserializer1)
    {
        super(javatype.getRawClass());
        _collectionType = javatype;
        _valueDeserializer = jsondeserializer;
        _valueTypeDeserializer = typedeserializer;
        _valueInstantiator = valueinstantiator;
        _delegateDeserializer = jsondeserializer1;
    }

    protected CollectionDeserializer(CollectionDeserializer collectiondeserializer)
    {
        super(collectiondeserializer._valueClass);
        _collectionType = collectiondeserializer._collectionType;
        _valueDeserializer = collectiondeserializer._valueDeserializer;
        _valueTypeDeserializer = collectiondeserializer._valueTypeDeserializer;
        _valueInstantiator = collectiondeserializer._valueInstantiator;
        _delegateDeserializer = collectiondeserializer._delegateDeserializer;
    }

    public volatile JsonDeserializer createContextual(DeserializationContext deserializationcontext, BeanProperty beanproperty)
    {
        return createContextual(deserializationcontext, beanproperty);
    }

    public CollectionDeserializer createContextual(DeserializationContext deserializationcontext, BeanProperty beanproperty)
    {
        JsonDeserializer jsondeserializer;
        JsonDeserializer jsondeserializer1;
        TypeDeserializer typedeserializer;
        if (_valueInstantiator != null && _valueInstantiator.canCreateUsingDelegate())
        {
            JavaType javatype = _valueInstantiator.getDelegateType(deserializationcontext.getConfig());
            if (javatype == null)
            {
                throw new IllegalArgumentException((new StringBuilder("Invalid delegate-creator definition for ")).append(_collectionType).append(": value instantiator (").append(_valueInstantiator.getClass().getName()).append(") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'").toString());
            }
            jsondeserializer = findDeserializer(deserializationcontext, javatype, beanproperty);
        } else
        {
            jsondeserializer = null;
        }
        jsondeserializer1 = findConvertingContentDeserializer(deserializationcontext, beanproperty, _valueDeserializer);
        if (jsondeserializer1 != null) goto _L2; else goto _L1
_L1:
        jsondeserializer1 = deserializationcontext.findContextualValueDeserializer(_collectionType.getContentType(), beanproperty);
_L4:
        typedeserializer = _valueTypeDeserializer;
        if (typedeserializer != null)
        {
            typedeserializer = typedeserializer.forProperty(beanproperty);
        }
        return withResolved(jsondeserializer, jsondeserializer1, typedeserializer);
_L2:
        if (jsondeserializer1 instanceof ContextualDeserializer)
        {
            jsondeserializer1 = ((ContextualDeserializer)jsondeserializer1).createContextual(deserializationcontext, beanproperty);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public volatile Object deserialize(l l1, DeserializationContext deserializationcontext, Object obj)
    {
        return deserialize(l1, deserializationcontext, (Collection)obj);
    }

    public Collection deserialize(l l1, DeserializationContext deserializationcontext)
    {
        if (_delegateDeserializer != null)
        {
            return (Collection)_valueInstantiator.createUsingDelegate(deserializationcontext, _delegateDeserializer.deserialize(l1, deserializationcontext));
        }
        if (l1.getCurrentToken() == r.h)
        {
            String s = l1.getText();
            if (s.length() == 0)
            {
                return (Collection)_valueInstantiator.createFromString(deserializationcontext, s);
            }
        }
        return deserialize(l1, deserializationcontext, (Collection)_valueInstantiator.createUsingDefault(deserializationcontext));
    }

    public Collection deserialize(l l1, DeserializationContext deserializationcontext, Collection collection)
    {
        if (l1.isExpectedStartArrayToken()) goto _L2; else goto _L1
_L1:
        collection = handleNonArray(l1, deserializationcontext, collection);
_L4:
        return collection;
_L2:
        JsonDeserializer jsondeserializer = _valueDeserializer;
        TypeDeserializer typedeserializer = _valueTypeDeserializer;
        do
        {
            r r1 = l1.nextToken();
            if (r1 == r.e)
            {
                continue;
            }
            Object obj;
            if (r1 == r.m)
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
            collection.add(obj);
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return typedeserializer.deserializeTypedFromArray(l1, deserializationcontext);
    }

    public JsonDeserializer getContentDeserializer()
    {
        return _valueDeserializer;
    }

    public JavaType getContentType()
    {
        return _collectionType.getContentType();
    }

    protected final Collection handleNonArray(l l1, DeserializationContext deserializationcontext, Collection collection)
    {
        if (!deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
        {
            throw deserializationcontext.mappingException(_collectionType.getRawClass());
        }
        JsonDeserializer jsondeserializer = _valueDeserializer;
        TypeDeserializer typedeserializer = _valueTypeDeserializer;
        Object obj;
        if (l1.getCurrentToken() == r.m)
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
        collection.add(obj);
        return collection;
    }

    protected CollectionDeserializer withResolved(JsonDeserializer jsondeserializer, JsonDeserializer jsondeserializer1, TypeDeserializer typedeserializer)
    {
        if (jsondeserializer == _delegateDeserializer && jsondeserializer1 == _valueDeserializer && typedeserializer == _valueTypeDeserializer)
        {
            return this;
        } else
        {
            return new CollectionDeserializer(_collectionType, jsondeserializer1, typedeserializer, _valueInstantiator, jsondeserializer);
        }
    }
}
