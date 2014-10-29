// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import java.io.IOException;
import java.lang.reflect.Method;

public final class SettableAnyProperty
{

    protected final BeanProperty _property;
    protected final Method _setter;
    protected final JavaType _type;
    protected JsonDeserializer _valueDeserializer;

    public SettableAnyProperty(BeanProperty beanproperty, AnnotatedMethod annotatedmethod, JavaType javatype, JsonDeserializer jsondeserializer)
    {
        this(beanproperty, annotatedmethod.getAnnotated(), javatype, jsondeserializer);
    }

    public SettableAnyProperty(BeanProperty beanproperty, Method method, JavaType javatype, JsonDeserializer jsondeserializer)
    {
        _property = beanproperty;
        _type = javatype;
        _setter = method;
        _valueDeserializer = jsondeserializer;
    }

    private String getClassName()
    {
        return _setter.getDeclaringClass().getName();
    }

    protected final void _throwAsIOE(Exception exception, String s, Object obj)
    {
        if (exception instanceof IllegalArgumentException)
        {
            String s1;
            StringBuilder stringbuilder;
            String s2;
            if (obj == null)
            {
                s1 = "[NULL]";
            } else
            {
                s1 = obj.getClass().getName();
            }
            stringbuilder = (new StringBuilder("Problem deserializing \"any\" property '")).append(s);
            stringbuilder.append((new StringBuilder("' of class ")).append(getClassName()).append(" (expected type: ").toString()).append(_type);
            stringbuilder.append("; actual type: ").append(s1).append(")");
            s2 = exception.getMessage();
            if (s2 != null)
            {
                stringbuilder.append(", problem: ").append(s2);
            } else
            {
                stringbuilder.append(" (no error message provided)");
            }
            throw new JsonMappingException(stringbuilder.toString(), null, exception);
        }
        if (exception instanceof IOException)
        {
            throw (IOException)exception;
        }
        if (exception instanceof RuntimeException)
        {
            throw (RuntimeException)exception;
        }
        for (; exception.getCause() != null; exception = exception.getCause()) { }
        throw new JsonMappingException(exception.getMessage(), null, exception);
    }

    public final Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        if (l1.getCurrentToken() == r.m)
        {
            return null;
        } else
        {
            return _valueDeserializer.deserialize(l1, deserializationcontext);
        }
    }

    public final void deserializeAndSet(l l1, DeserializationContext deserializationcontext, Object obj, String s)
    {
        set(obj, s, deserialize(l1, deserializationcontext));
    }

    public final BeanProperty getProperty()
    {
        return _property;
    }

    public final JavaType getType()
    {
        return _type;
    }

    public final boolean hasValueDeserializer()
    {
        return _valueDeserializer != null;
    }

    public final void set(Object obj, String s, Object obj1)
    {
        try
        {
            _setter.invoke(obj, new Object[] {
                s, obj1
            });
            return;
        }
        catch (Exception exception)
        {
            _throwAsIOE(exception, s, obj1);
        }
    }

    public final String toString()
    {
        return (new StringBuilder("[any property on class ")).append(getClassName()).append("]").toString();
    }

    public final SettableAnyProperty withValueDeserializer(JsonDeserializer jsondeserializer)
    {
        return new SettableAnyProperty(_property, _setter, _type, jsondeserializer);
    }
}
