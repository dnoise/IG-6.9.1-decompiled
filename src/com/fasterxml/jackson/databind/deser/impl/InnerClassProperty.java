// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;

// Referenced classes of package com.fasterxml.jackson.databind.deser.impl:
//            NullProvider

public final class InnerClassProperty extends SettableBeanProperty
{

    private static final long serialVersionUID = 1L;
    protected final Constructor _creator;
    protected final SettableBeanProperty _delegate;

    public InnerClassProperty(SettableBeanProperty settablebeanproperty, Constructor constructor)
    {
        super(settablebeanproperty);
        _delegate = settablebeanproperty;
        _creator = constructor;
    }

    protected InnerClassProperty(InnerClassProperty innerclassproperty, JsonDeserializer jsondeserializer)
    {
        super(innerclassproperty, jsondeserializer);
        _delegate = innerclassproperty._delegate.withValueDeserializer(jsondeserializer);
        _creator = innerclassproperty._creator;
    }

    protected InnerClassProperty(InnerClassProperty innerclassproperty, String s)
    {
        super(innerclassproperty, s);
        _delegate = innerclassproperty._delegate.withName(s);
        _creator = innerclassproperty._creator;
    }

    public final void deserializeAndSet(l l1, DeserializationContext deserializationcontext, Object obj)
    {
        if (l1.getCurrentToken() != r.m) goto _L2; else goto _L1
_L1:
        Object obj1;
        NullProvider nullprovider = _nullProvider;
        obj1 = null;
        if (nullprovider != null)
        {
            obj1 = _nullProvider.nullValue(deserializationcontext);
        }
_L4:
        set(obj, obj1);
        return;
_L2:
        if (_valueTypeDeserializer != null)
        {
            obj1 = _valueDeserializer.deserializeWithType(l1, deserializationcontext, _valueTypeDeserializer);
            continue; /* Loop/switch isn't completed */
        }
        Object obj2 = _creator.newInstance(new Object[] {
            obj
        });
        obj1 = obj2;
_L5:
        _valueDeserializer.deserialize(l1, deserializationcontext, obj1);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        ClassUtil.unwrapAndThrowAsIAE(exception, (new StringBuilder("Failed to instantiate class ")).append(_creator.getDeclaringClass().getName()).append(", problem: ").append(exception.getMessage()).toString());
        obj1 = null;
          goto _L5
    }

    public final Object deserializeSetAndReturn(l l1, DeserializationContext deserializationcontext, Object obj)
    {
        return setAndReturn(obj, deserialize(l1, deserializationcontext));
    }

    public final Annotation getAnnotation(Class class1)
    {
        return _delegate.getAnnotation(class1);
    }

    public final AnnotatedMember getMember()
    {
        return _delegate.getMember();
    }

    public final void set(Object obj, Object obj1)
    {
        _delegate.set(obj, obj1);
    }

    public final Object setAndReturn(Object obj, Object obj1)
    {
        return _delegate.setAndReturn(obj, obj1);
    }

    public final volatile SettableBeanProperty withName(String s)
    {
        return withName(s);
    }

    public final InnerClassProperty withName(String s)
    {
        return new InnerClassProperty(this, s);
    }

    public final volatile SettableBeanProperty withValueDeserializer(JsonDeserializer jsondeserializer)
    {
        return withValueDeserializer(jsondeserializer);
    }

    public final InnerClassProperty withValueDeserializer(JsonDeserializer jsondeserializer)
    {
        return new InnerClassProperty(this, jsondeserializer);
    }
}
