// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Annotations;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

public final class SetterlessProperty extends SettableBeanProperty
{

    private static final long serialVersionUID = 1L;
    protected final AnnotatedMethod _annotated;
    protected final Method _getter;

    protected SetterlessProperty(SetterlessProperty setterlessproperty, JsonDeserializer jsondeserializer)
    {
        super(setterlessproperty, jsondeserializer);
        _annotated = setterlessproperty._annotated;
        _getter = setterlessproperty._getter;
    }

    protected SetterlessProperty(SetterlessProperty setterlessproperty, String s)
    {
        super(setterlessproperty, s);
        _annotated = setterlessproperty._annotated;
        _getter = setterlessproperty._getter;
    }

    public SetterlessProperty(BeanPropertyDefinition beanpropertydefinition, JavaType javatype, TypeDeserializer typedeserializer, Annotations annotations, AnnotatedMethod annotatedmethod)
    {
        super(beanpropertydefinition, javatype, typedeserializer, annotations);
        _annotated = annotatedmethod;
        _getter = annotatedmethod.getAnnotated();
    }

    public final void deserializeAndSet(l l1, DeserializationContext deserializationcontext, Object obj)
    {
        if (l1.getCurrentToken() == r.m)
        {
            return;
        }
        Object obj1;
        try
        {
            obj1 = _getter.invoke(obj, new Object[0]);
        }
        catch (Exception exception)
        {
            _throwAsIOE(exception);
            return;
        }
        if (obj1 == null)
        {
            throw new JsonMappingException((new StringBuilder("Problem deserializing 'setterless' property '")).append(getName()).append("': get method returned null").toString());
        } else
        {
            _valueDeserializer.deserialize(l1, deserializationcontext, obj1);
            return;
        }
    }

    public final Object deserializeSetAndReturn(l l1, DeserializationContext deserializationcontext, Object obj)
    {
        deserializeAndSet(l1, deserializationcontext, obj);
        return obj;
    }

    public final Annotation getAnnotation(Class class1)
    {
        return _annotated.getAnnotation(class1);
    }

    public final AnnotatedMember getMember()
    {
        return _annotated;
    }

    public final void set(Object obj, Object obj1)
    {
        throw new UnsupportedOperationException("Should never call 'set' on setterless property");
    }

    public final Object setAndReturn(Object obj, Object obj1)
    {
        set(obj, obj1);
        return null;
    }

    public final volatile SettableBeanProperty withName(String s)
    {
        return withName(s);
    }

    public final SetterlessProperty withName(String s)
    {
        return new SetterlessProperty(this, s);
    }

    public final volatile SettableBeanProperty withValueDeserializer(JsonDeserializer jsondeserializer)
    {
        return withValueDeserializer(jsondeserializer);
    }

    public final SetterlessProperty withValueDeserializer(JsonDeserializer jsondeserializer)
    {
        return new SetterlessProperty(this, jsondeserializer);
    }
}
