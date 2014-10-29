// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.util.Collection;

// Referenced classes of package com.fasterxml.jackson.databind:
//            DeserializationContext

public abstract class JsonDeserializer
{

    public JsonDeserializer()
    {
    }

    public abstract Object deserialize(l l, DeserializationContext deserializationcontext);

    public Object deserialize(l l, DeserializationContext deserializationcontext, Object obj)
    {
        throw new UnsupportedOperationException((new StringBuilder("Can not update object of type ")).append(obj.getClass().getName()).append(" (by deserializer of type ").append(getClass().getName()).append(")").toString());
    }

    public Object deserializeWithType(l l, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return typedeserializer.deserializeTypedFromAny(l, deserializationcontext);
    }

    public JsonDeserializer getDelegatee()
    {
        return null;
    }

    public Object getEmptyValue()
    {
        return getNullValue();
    }

    public Collection getKnownPropertyNames()
    {
        return null;
    }

    public Object getNullValue()
    {
        return null;
    }

    public ObjectIdReader getObjectIdReader()
    {
        return null;
    }

    public boolean isCachable()
    {
        return false;
    }

    public JsonDeserializer replaceDelegatee(JsonDeserializer jsondeserializer)
    {
        throw new UnsupportedOperationException();
    }

    public JsonDeserializer unwrappingDeserializer(NameTransformer nametransformer)
    {
        return this;
    }
}
