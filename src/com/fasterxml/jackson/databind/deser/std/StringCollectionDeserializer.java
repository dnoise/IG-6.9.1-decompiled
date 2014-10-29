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

public final class StringCollectionDeserializer extends ContainerDeserializerBase
    implements ContextualDeserializer
{

    private static final long serialVersionUID = 1L;
    protected final JavaType _collectionType;
    protected final JsonDeserializer _delegateDeserializer;
    protected final JsonDeserializer _valueDeserializer;
    protected final ValueInstantiator _valueInstantiator;

    public StringCollectionDeserializer(JavaType javatype, JsonDeserializer jsondeserializer, ValueInstantiator valueinstantiator)
    {
        this(javatype, valueinstantiator, null, jsondeserializer);
    }

    protected StringCollectionDeserializer(JavaType javatype, ValueInstantiator valueinstantiator, JsonDeserializer jsondeserializer, JsonDeserializer jsondeserializer1)
    {
        super(javatype.getRawClass());
        _collectionType = javatype;
        _valueDeserializer = jsondeserializer1;
        _valueInstantiator = valueinstantiator;
        _delegateDeserializer = jsondeserializer;
    }

    private Collection deserializeUsingCustom(l l1, DeserializationContext deserializationcontext, Collection collection, JsonDeserializer jsondeserializer)
    {
        do
        {
            r r1 = l1.nextToken();
            if (r1 != r.e)
            {
                String s;
                if (r1 == r.m)
                {
                    s = null;
                } else
                {
                    s = (String)jsondeserializer.deserialize(l1, deserializationcontext);
                }
                collection.add(s);
            } else
            {
                return collection;
            }
        } while (true);
    }

    private final Collection handleNonArray(l l1, DeserializationContext deserializationcontext, Collection collection)
    {
        if (!deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
        {
            throw deserializationcontext.mappingException(_collectionType.getRawClass());
        }
        JsonDeserializer jsondeserializer = _valueDeserializer;
        String s;
        if (l1.getCurrentToken() == r.m)
        {
            s = null;
        } else
        if (jsondeserializer == null)
        {
            s = _parseString(l1, deserializationcontext);
        } else
        {
            s = (String)jsondeserializer.deserialize(l1, deserializationcontext);
        }
        collection.add(s);
        return collection;
    }

    public final JsonDeserializer createContextual(DeserializationContext deserializationcontext, BeanProperty beanproperty)
    {
        JsonDeserializer jsondeserializer;
        JsonDeserializer jsondeserializer1;
        boolean flag;
        JsonDeserializer jsondeserializer2;
        if (_valueInstantiator != null && _valueInstantiator.getDelegateCreator() != null)
        {
            jsondeserializer = findDeserializer(deserializationcontext, _valueInstantiator.getDelegateType(deserializationcontext.getConfig()), beanproperty);
        } else
        {
            jsondeserializer = null;
        }
        jsondeserializer1 = _valueDeserializer;
        if (jsondeserializer1 == null)
        {
            jsondeserializer1 = findConvertingContentDeserializer(deserializationcontext, beanproperty, jsondeserializer1);
            if (jsondeserializer1 == null)
            {
                jsondeserializer1 = deserializationcontext.findContextualValueDeserializer(_collectionType.getContentType(), beanproperty);
            }
        } else
        if (jsondeserializer1 instanceof ContextualDeserializer)
        {
            jsondeserializer1 = ((ContextualDeserializer)jsondeserializer1).createContextual(deserializationcontext, beanproperty);
        }
        flag = isDefaultDeserializer(jsondeserializer1);
        jsondeserializer2 = null;
        if (!flag)
        {
            jsondeserializer2 = jsondeserializer1;
        }
        return withResolved(jsondeserializer, jsondeserializer2);
    }

    public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext, Object obj)
    {
        return deserialize(l1, deserializationcontext, (Collection)obj);
    }

    public final Collection deserialize(l l1, DeserializationContext deserializationcontext)
    {
        if (_delegateDeserializer != null)
        {
            return (Collection)_valueInstantiator.createUsingDelegate(deserializationcontext, _delegateDeserializer.deserialize(l1, deserializationcontext));
        } else
        {
            return deserialize(l1, deserializationcontext, (Collection)_valueInstantiator.createUsingDefault(deserializationcontext));
        }
    }

    public final Collection deserialize(l l1, DeserializationContext deserializationcontext, Collection collection)
    {
        if (l1.isExpectedStartArrayToken()) goto _L2; else goto _L1
_L1:
        collection = handleNonArray(l1, deserializationcontext, collection);
_L4:
        return collection;
_L2:
        if (_valueDeserializer != null)
        {
            return deserializeUsingCustom(l1, deserializationcontext, collection, _valueDeserializer);
        }
        do
        {
            r r1 = l1.nextToken();
            if (r1 == r.e)
            {
                continue;
            }
            String s;
            if (r1 == r.m)
            {
                s = null;
            } else
            {
                s = _parseString(l1, deserializationcontext);
            }
            collection.add(s);
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return typedeserializer.deserializeTypedFromArray(l1, deserializationcontext);
    }

    public final JsonDeserializer getContentDeserializer()
    {
        return _valueDeserializer;
    }

    public final JavaType getContentType()
    {
        return _collectionType.getContentType();
    }

    protected final StringCollectionDeserializer withResolved(JsonDeserializer jsondeserializer, JsonDeserializer jsondeserializer1)
    {
        if (_valueDeserializer == jsondeserializer1 && _delegateDeserializer == jsondeserializer)
        {
            return this;
        } else
        {
            return new StringCollectionDeserializer(_collectionType, _valueInstantiator, jsondeserializer, jsondeserializer1);
        }
    }
}
