// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.ArrayBlockingQueue;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            CollectionDeserializer

public class ArrayBlockingQueueDeserializer extends CollectionDeserializer
{

    private static final long serialVersionUID = 0x4bf04fdfa60ff8f4L;

    public ArrayBlockingQueueDeserializer(JavaType javatype, JsonDeserializer jsondeserializer, TypeDeserializer typedeserializer, ValueInstantiator valueinstantiator, JsonDeserializer jsondeserializer1)
    {
        super(javatype, jsondeserializer, typedeserializer, valueinstantiator, jsondeserializer1);
    }

    protected ArrayBlockingQueueDeserializer(ArrayBlockingQueueDeserializer arrayblockingqueuedeserializer)
    {
        super(arrayblockingqueuedeserializer);
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
        return deserialize(l1, deserializationcontext, ((Collection) (null)));
    }

    public Collection deserialize(l l1, DeserializationContext deserializationcontext, Collection collection)
    {
        if (!l1.isExpectedStartArrayToken())
        {
            return handleNonArray(l1, deserializationcontext, new ArrayBlockingQueue(1));
        }
        ArrayList arraylist = new ArrayList();
        JsonDeserializer jsondeserializer = _valueDeserializer;
        TypeDeserializer typedeserializer = _valueTypeDeserializer;
        do
        {
            r r1 = l1.nextToken();
            if (r1 == r.e)
            {
                break;
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
            arraylist.add(obj);
        } while (true);
        if (collection != null)
        {
            collection.addAll(arraylist);
            return collection;
        } else
        {
            return new ArrayBlockingQueue(arraylist.size(), false, arraylist);
        }
    }

    public Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return typedeserializer.deserializeTypedFromArray(l1, deserializationcontext);
    }

    protected ArrayBlockingQueueDeserializer withResolved(JsonDeserializer jsondeserializer, JsonDeserializer jsondeserializer1, TypeDeserializer typedeserializer)
    {
        if (jsondeserializer == _delegateDeserializer && jsondeserializer1 == _valueDeserializer && typedeserializer == _valueTypeDeserializer)
        {
            return this;
        } else
        {
            return new ArrayBlockingQueueDeserializer(_collectionType, jsondeserializer1, typedeserializer, _valueInstantiator, jsondeserializer);
        }
    }

    protected volatile CollectionDeserializer withResolved(JsonDeserializer jsondeserializer, JsonDeserializer jsondeserializer1, TypeDeserializer typedeserializer)
    {
        return withResolved(jsondeserializer, jsondeserializer1, typedeserializer);
    }
}
