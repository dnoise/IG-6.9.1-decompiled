// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

// Referenced classes of package com.fasterxml.jackson.databind.introspect:
//            AnnotatedMember, AnnotationMap, AnnotatedParameter

public abstract class AnnotatedWithParams extends AnnotatedMember
{

    private static final long serialVersionUID = 1L;
    protected final AnnotationMap _paramAnnotations[];

    protected AnnotatedWithParams(AnnotationMap annotationmap, AnnotationMap aannotationmap[])
    {
        super(annotationmap);
        _paramAnnotations = aannotationmap;
    }

    public final void addOrOverrideParam(int i, Annotation annotation)
    {
        AnnotationMap annotationmap = _paramAnnotations[i];
        if (annotationmap == null)
        {
            annotationmap = new AnnotationMap();
            _paramAnnotations[i] = annotationmap;
        }
        annotationmap.add(annotation);
    }

    public abstract Object call();

    public abstract Object call(Object aobj[]);

    public abstract Object call1(Object obj);

    public final Annotation getAnnotation(Class class1)
    {
        return _annotations.get(class1);
    }

    public final int getAnnotationCount()
    {
        return _annotations.size();
    }

    public abstract Type getGenericParameterType(int i);

    public final AnnotatedParameter getParameter(int i)
    {
        return new AnnotatedParameter(this, getGenericParameterType(i), getParameterAnnotations(i), i);
    }

    public final AnnotationMap getParameterAnnotations(int i)
    {
        if (_paramAnnotations != null && i >= 0 && i <= _paramAnnotations.length)
        {
            return _paramAnnotations[i];
        } else
        {
            return null;
        }
    }

    public abstract int getParameterCount();

    public abstract Class getRawParameterType(int i);

    protected JavaType getType(TypeBindings typebindings, TypeVariable atypevariable[])
    {
        if (atypevariable != null && atypevariable.length > 0)
        {
            typebindings = typebindings.childInstance();
            int i = atypevariable.length;
            int j = 0;
            while (j < i) 
            {
                TypeVariable typevariable = atypevariable[j];
                typebindings._addPlaceholder(typevariable.getName());
                Type type = typevariable.getBounds()[0];
                JavaType javatype;
                if (type == null)
                {
                    javatype = TypeFactory.unknownType();
                } else
                {
                    javatype = typebindings.resolveType(type);
                }
                typebindings.addBinding(typevariable.getName(), javatype);
                j++;
            }
        }
        return typebindings.resolveType(getGenericType());
    }

    protected AnnotatedParameter replaceParameterAnnotations(int i, AnnotationMap annotationmap)
    {
        _paramAnnotations[i] = annotationmap;
        return getParameter(i);
    }

    public final JavaType resolveParameterType(int i, TypeBindings typebindings)
    {
        return typebindings.resolveType(getGenericParameterType(i));
    }
}
