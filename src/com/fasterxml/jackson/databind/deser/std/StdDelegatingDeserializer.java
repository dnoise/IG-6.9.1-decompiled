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
import com.fasterxml.jackson.databind.deser.ResolvableDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Converter;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdDeserializer

public class StdDelegatingDeserializer extends StdDeserializer
    implements ContextualDeserializer, ResolvableDeserializer
{

    private static final long serialVersionUID = 1L;
    protected final Converter _converter;
    protected final JsonDeserializer _delegateDeserializer;
    protected final JavaType _delegateType;

    public StdDelegatingDeserializer(Converter converter)
    {
        super(java/lang/Object);
        _converter = converter;
        _delegateType = null;
        _delegateDeserializer = null;
    }

    public StdDelegatingDeserializer(Converter converter, JavaType javatype, JsonDeserializer jsondeserializer)
    {
        super(javatype);
        _converter = converter;
        _delegateType = javatype;
        _delegateDeserializer = jsondeserializer;
    }

    protected Object convertValue(Object obj)
    {
        return _converter.convert(obj);
    }

    public JsonDeserializer createContextual(DeserializationContext deserializationcontext, BeanProperty beanproperty)
    {
        if (_delegateDeserializer != null)
        {
            if (_delegateDeserializer instanceof ContextualDeserializer)
            {
                JsonDeserializer jsondeserializer = ((ContextualDeserializer)_delegateDeserializer).createContextual(deserializationcontext, beanproperty);
                if (jsondeserializer != _delegateDeserializer)
                {
                    this = withDelegate(_converter, _delegateType, jsondeserializer);
                }
            }
            return this;
        } else
        {
            JavaType javatype = _converter.getInputType(deserializationcontext.getTypeFactory());
            return withDelegate(_converter, javatype, deserializationcontext.findContextualValueDeserializer(javatype, beanproperty));
        }
    }

    public Object deserialize(l l, DeserializationContext deserializationcontext)
    {
        Object obj = _delegateDeserializer.deserialize(l, deserializationcontext);
        if (obj == null)
        {
            return null;
        } else
        {
            return convertValue(obj);
        }
    }

    public Object deserializeWithType(l l, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        Object obj = _delegateDeserializer.deserializeWithType(l, deserializationcontext, typedeserializer);
        if (obj == null)
        {
            return null;
        } else
        {
            return convertValue(obj);
        }
    }

    public JsonDeserializer getDelegatee()
    {
        return _delegateDeserializer;
    }

    public void resolve(DeserializationContext deserializationcontext)
    {
        if (_delegateDeserializer != null && (_delegateDeserializer instanceof ResolvableDeserializer))
        {
            ((ResolvableDeserializer)_delegateDeserializer).resolve(deserializationcontext);
        }
    }

    protected StdDelegatingDeserializer withDelegate(Converter converter, JavaType javatype, JsonDeserializer jsondeserializer)
    {
        if (getClass() != com/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer)
        {
            throw new IllegalStateException((new StringBuilder("Sub-class ")).append(getClass().getName()).append(" must override 'withDelegate'").toString());
        } else
        {
            return new StdDelegatingDeserializer(converter, javatype, jsondeserializer);
        }
    }
}
