// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.KeyDeserializer;
import java.io.Serializable;

final class _delegate extends KeyDeserializer
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    protected final JsonDeserializer _delegate;
    protected final Class _keyClass;

    public final Object deserializeKey(String s, DeserializationContext deserializationcontext)
    {
        Object obj1;
        if (s == null)
        {
            obj1 = null;
        } else
        {
            Object obj;
            try
            {
                obj = _delegate.deserialize(deserializationcontext.getParser(), deserializationcontext);
            }
            catch (Exception exception)
            {
                throw deserializationcontext.weirdKeyException(_keyClass, s, (new StringBuilder("not a valid representation: ")).append(exception.getMessage()).toString());
            }
            obj1 = obj;
            if (obj1 == null)
            {
                throw deserializationcontext.weirdKeyException(_keyClass, s, "not a valid representation");
            }
        }
        return obj1;
    }

    public final Class getKeyClass()
    {
        return _keyClass;
    }

    protected (Class class1, JsonDeserializer jsondeserializer)
    {
        _keyClass = class1;
        _delegate = jsondeserializer;
    }
}
