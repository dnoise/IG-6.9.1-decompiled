// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import java.util.concurrent.atomic.AtomicReference;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdScalarDeserializer

public class _valueDeserializer extends StdScalarDeserializer
    implements ContextualDeserializer
{

    protected final JavaType _referencedType;
    protected final JsonDeserializer _valueDeserializer;

    public JsonDeserializer createContextual(DeserializationContext deserializationcontext, BeanProperty beanproperty)
    {
        if (_valueDeserializer != null)
        {
            return this;
        } else
        {
            return new <init>(_referencedType, deserializationcontext.findContextualValueDeserializer(_referencedType, beanproperty));
        }
    }

    public volatile Object deserialize(l l, DeserializationContext deserializationcontext)
    {
        return deserialize(l, deserializationcontext);
    }

    public AtomicReference deserialize(l l, DeserializationContext deserializationcontext)
    {
        return new AtomicReference(_valueDeserializer.deserialize(l, deserializationcontext));
    }

    public (JavaType javatype)
    {
        this(javatype, null);
    }

    public <init>(JavaType javatype, JsonDeserializer jsondeserializer)
    {
        super(java/util/concurrent/atomic/AtomicReference);
        _referencedType = javatype;
        _valueDeserializer = jsondeserializer;
    }
}
