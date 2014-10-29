// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Type;

// Referenced classes of package com.fasterxml.jackson.databind.introspect:
//            AnnotatedMember, AnnotationMap, Annotated

public final class AnnotatedField extends AnnotatedMember
    implements Serializable
{

    private static final long serialVersionUID = 0x6633b4850c53b6dfL;
    protected final transient Field _field;
    protected Serialization _serialization;

    protected AnnotatedField(Serialization serialization)
    {
        super(null);
        _field = null;
        _serialization = serialization;
    }

    public AnnotatedField(Field field, AnnotationMap annotationmap)
    {
        super(annotationmap);
        _field = field;
    }

    public final volatile AnnotatedElement getAnnotated()
    {
        return getAnnotated();
    }

    public final Field getAnnotated()
    {
        return _field;
    }

    public final Annotation getAnnotation(Class class1)
    {
        if (_annotations == null)
        {
            return null;
        } else
        {
            return _annotations.get(class1);
        }
    }

    public final int getAnnotationCount()
    {
        return _annotations.size();
    }

    public final Class getDeclaringClass()
    {
        return _field.getDeclaringClass();
    }

    public final String getFullName()
    {
        return (new StringBuilder()).append(getDeclaringClass().getName()).append("#").append(getName()).toString();
    }

    public final Type getGenericType()
    {
        return _field.getGenericType();
    }

    public final Member getMember()
    {
        return _field;
    }

    public final int getModifiers()
    {
        return _field.getModifiers();
    }

    public final String getName()
    {
        return _field.getName();
    }

    public final Class getRawType()
    {
        return _field.getType();
    }

    public final Object getValue(Object obj)
    {
        Object obj1;
        try
        {
            obj1 = _field.get(obj);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new IllegalArgumentException((new StringBuilder("Failed to getValue() for field ")).append(getFullName()).append(": ").append(illegalaccessexception.getMessage()).toString(), illegalaccessexception);
        }
        return obj1;
    }

    final Object readResolve()
    {
        Class class1 = _serialization.clazz;
        AnnotatedField annotatedfield;
        try
        {
            Field field = class1.getDeclaredField(_serialization.name);
            if (!field.isAccessible())
            {
                ClassUtil.checkAndFixAccess(field);
            }
            annotatedfield = new AnnotatedField(field, null);
        }
        catch (Exception exception)
        {
            throw new IllegalArgumentException((new StringBuilder("Could not find method '")).append(_serialization.name).append("' from Class '").append(class1.getName()).toString());
        }
        return annotatedfield;
    }

    public final void setValue(Object obj, Object obj1)
    {
        try
        {
            _field.set(obj, obj1);
            return;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new IllegalArgumentException((new StringBuilder("Failed to setValue() for field ")).append(getFullName()).append(": ").append(illegalaccessexception.getMessage()).toString(), illegalaccessexception);
        }
    }

    public final String toString()
    {
        return (new StringBuilder("[field ")).append(getFullName()).append("]").toString();
    }

    public final volatile Annotated withAnnotations(AnnotationMap annotationmap)
    {
        return withAnnotations(annotationmap);
    }

    public final AnnotatedField withAnnotations(AnnotationMap annotationmap)
    {
        return new AnnotatedField(_field, annotationmap);
    }

    final Object writeReplace()
    {
        return new AnnotatedField(new Serialization(_field));
    }

    private class Serialization
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        protected Class clazz;
        protected String name;

        public Serialization(Field field)
        {
            clazz = field.getDeclaringClass();
            name = field.getName();
        }
    }

}
