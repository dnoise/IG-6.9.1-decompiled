// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

// Referenced classes of package com.fasterxml.jackson.databind.introspect:
//            AnnotatedWithParams, AnnotationMap, Annotated

public final class AnnotatedMethod extends AnnotatedWithParams
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    protected final transient Method _method;
    protected Class _paramClasses[];
    protected Serialization _serialization;

    protected AnnotatedMethod(Serialization serialization)
    {
        super(null, null);
        _method = null;
        _serialization = serialization;
    }

    public AnnotatedMethod(Method method, AnnotationMap annotationmap, AnnotationMap aannotationmap[])
    {
        super(annotationmap, aannotationmap);
        if (method == null)
        {
            throw new IllegalArgumentException("Can not construct AnnotatedMethod with null Method");
        } else
        {
            _method = method;
            return;
        }
    }

    public final Object call()
    {
        return _method.invoke(null, new Object[0]);
    }

    public final Object call(Object aobj[])
    {
        return _method.invoke(null, aobj);
    }

    public final Object call1(Object obj)
    {
        return _method.invoke(null, new Object[] {
            obj
        });
    }

    public final volatile AnnotatedElement getAnnotated()
    {
        return getAnnotated();
    }

    public final Method getAnnotated()
    {
        return _method;
    }

    public final Class getDeclaringClass()
    {
        return _method.getDeclaringClass();
    }

    public final String getFullName()
    {
        return (new StringBuilder()).append(getDeclaringClass().getName()).append("#").append(getName()).append("(").append(getParameterCount()).append(" params)").toString();
    }

    public final Type getGenericParameterType(int i)
    {
        Type atype[] = _method.getGenericParameterTypes();
        if (i >= atype.length)
        {
            return null;
        } else
        {
            return atype[i];
        }
    }

    public final Type[] getGenericParameterTypes()
    {
        return _method.getGenericParameterTypes();
    }

    public final Type getGenericReturnType()
    {
        return _method.getGenericReturnType();
    }

    public final Type getGenericType()
    {
        return _method.getGenericReturnType();
    }

    public final volatile Member getMember()
    {
        return getMember();
    }

    public final Method getMember()
    {
        return _method;
    }

    public final int getModifiers()
    {
        return _method.getModifiers();
    }

    public final String getName()
    {
        return _method.getName();
    }

    public final int getParameterCount()
    {
        return getRawParameterTypes().length;
    }

    public final Class getRawParameterType(int i)
    {
        Class aclass[] = getRawParameterTypes();
        if (i >= aclass.length)
        {
            return null;
        } else
        {
            return aclass[i];
        }
    }

    public final Class[] getRawParameterTypes()
    {
        if (_paramClasses == null)
        {
            _paramClasses = _method.getParameterTypes();
        }
        return _paramClasses;
    }

    public final Class getRawReturnType()
    {
        return _method.getReturnType();
    }

    public final Class getRawType()
    {
        return _method.getReturnType();
    }

    public final JavaType getType(TypeBindings typebindings)
    {
        return getType(typebindings, _method.getTypeParameters());
    }

    public final Object getValue(Object obj)
    {
        Object obj1;
        try
        {
            obj1 = _method.invoke(obj, new Object[0]);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new IllegalArgumentException((new StringBuilder("Failed to getValue() with method ")).append(getFullName()).append(": ").append(illegalaccessexception.getMessage()).toString(), illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new IllegalArgumentException((new StringBuilder("Failed to getValue() with method ")).append(getFullName()).append(": ").append(invocationtargetexception.getMessage()).toString(), invocationtargetexception);
        }
        return obj1;
    }

    final Object readResolve()
    {
        Class class1 = _serialization.clazz;
        AnnotatedMethod annotatedmethod;
        try
        {
            Method method = class1.getDeclaredMethod(_serialization.name, _serialization.args);
            if (!method.isAccessible())
            {
                ClassUtil.checkAndFixAccess(method);
            }
            annotatedmethod = new AnnotatedMethod(method, null, null);
        }
        catch (Exception exception)
        {
            throw new IllegalArgumentException((new StringBuilder("Could not find method '")).append(_serialization.name).append("' from Class '").append(class1.getName()).toString());
        }
        return annotatedmethod;
    }

    public final void setValue(Object obj, Object obj1)
    {
        try
        {
            _method.invoke(obj, new Object[] {
                obj1
            });
            return;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new IllegalArgumentException((new StringBuilder("Failed to setValue() with method ")).append(getFullName()).append(": ").append(illegalaccessexception.getMessage()).toString(), illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new IllegalArgumentException((new StringBuilder("Failed to setValue() with method ")).append(getFullName()).append(": ").append(invocationtargetexception.getMessage()).toString(), invocationtargetexception);
        }
    }

    public final String toString()
    {
        return (new StringBuilder("[method ")).append(getFullName()).append("]").toString();
    }

    public final volatile Annotated withAnnotations(AnnotationMap annotationmap)
    {
        return withAnnotations(annotationmap);
    }

    public final AnnotatedMethod withAnnotations(AnnotationMap annotationmap)
    {
        return new AnnotatedMethod(_method, annotationmap, _paramAnnotations);
    }

    public final AnnotatedMethod withMethod(Method method)
    {
        return new AnnotatedMethod(method, _annotations, _paramAnnotations);
    }

    final Object writeReplace()
    {
        return new AnnotatedMethod(new Serialization(_method));
    }

    private class Serialization
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        protected Class args[];
        protected Class clazz;
        protected String name;

        public Serialization(Method method)
        {
            clazz = method.getDeclaringClass();
            name = method.getName();
            args = method.getParameterTypes();
        }
    }

}
