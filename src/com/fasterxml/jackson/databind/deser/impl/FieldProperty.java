// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Annotations;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

public final class FieldProperty extends SettableBeanProperty
{

    private static final long serialVersionUID = 1L;
    protected final AnnotatedField _annotated;
    protected final transient Field _field;

    protected FieldProperty(FieldProperty fieldproperty, JsonDeserializer jsondeserializer)
    {
        super(fieldproperty, jsondeserializer);
        _annotated = fieldproperty._annotated;
        _field = fieldproperty._field;
    }

    protected FieldProperty(FieldProperty fieldproperty, String s)
    {
        super(fieldproperty, s);
        _annotated = fieldproperty._annotated;
        _field = fieldproperty._field;
    }

    protected FieldProperty(FieldProperty fieldproperty, Field field)
    {
        super(fieldproperty);
        _annotated = fieldproperty._annotated;
        if (field == null)
        {
            throw new IllegalArgumentException((new StringBuilder("No Field passed for property '")).append(fieldproperty.getName()).append("' (class ").append(fieldproperty.getDeclaringClass().getName()).append(")").toString());
        } else
        {
            _field = field;
            return;
        }
    }

    public FieldProperty(BeanPropertyDefinition beanpropertydefinition, JavaType javatype, TypeDeserializer typedeserializer, Annotations annotations, AnnotatedField annotatedfield)
    {
        super(beanpropertydefinition, javatype, typedeserializer, annotations);
        _annotated = annotatedfield;
        _field = annotatedfield.getAnnotated();
    }

    public final void deserializeAndSet(l l, DeserializationContext deserializationcontext, Object obj)
    {
        set(obj, deserialize(l, deserializationcontext));
    }

    public final Object deserializeSetAndReturn(l l, DeserializationContext deserializationcontext, Object obj)
    {
        return setAndReturn(obj, deserialize(l, deserializationcontext));
    }

    public final Annotation getAnnotation(Class class1)
    {
        return _annotated.getAnnotation(class1);
    }

    public final AnnotatedMember getMember()
    {
        return _annotated;
    }

    final Object readResolve()
    {
        return new FieldProperty(this, _annotated.getAnnotated());
    }

    public final void set(Object obj, Object obj1)
    {
        try
        {
            _field.set(obj, obj1);
            return;
        }
        catch (Exception exception)
        {
            _throwAsIOE(exception, obj1);
        }
    }

    public final Object setAndReturn(Object obj, Object obj1)
    {
        try
        {
            _field.set(obj, obj1);
        }
        catch (Exception exception)
        {
            _throwAsIOE(exception, obj1);
            return obj;
        }
        return obj;
    }

    public final volatile SettableBeanProperty withName(String s)
    {
        return withName(s);
    }

    public final FieldProperty withName(String s)
    {
        return new FieldProperty(this, s);
    }

    public final volatile SettableBeanProperty withValueDeserializer(JsonDeserializer jsondeserializer)
    {
        return withValueDeserializer(jsondeserializer);
    }

    public final FieldProperty withValueDeserializer(JsonDeserializer jsondeserializer)
    {
        return new FieldProperty(this, jsondeserializer);
    }
}
