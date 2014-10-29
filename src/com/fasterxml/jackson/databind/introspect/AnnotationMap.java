// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.util.Annotations;
import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public final class AnnotationMap
    implements Annotations
{

    protected HashMap _annotations;

    public AnnotationMap()
    {
    }

    private AnnotationMap(HashMap hashmap)
    {
        _annotations = hashmap;
    }

    public static AnnotationMap merge(AnnotationMap annotationmap, AnnotationMap annotationmap1)
    {
        if (annotationmap == null || annotationmap._annotations == null || annotationmap._annotations.isEmpty())
        {
            annotationmap = annotationmap1;
        } else
        if (annotationmap1 != null && annotationmap1._annotations != null && !annotationmap1._annotations.isEmpty())
        {
            HashMap hashmap = new HashMap();
            Annotation annotation1;
            for (Iterator iterator = annotationmap1._annotations.values().iterator(); iterator.hasNext(); hashmap.put(annotation1.annotationType(), annotation1))
            {
                annotation1 = (Annotation)iterator.next();
            }

            Annotation annotation;
            for (Iterator iterator1 = annotationmap._annotations.values().iterator(); iterator1.hasNext(); hashmap.put(annotation.annotationType(), annotation))
            {
                annotation = (Annotation)iterator1.next();
            }

            return new AnnotationMap(hashmap);
        }
        return annotationmap;
    }

    protected final void _add(Annotation annotation)
    {
        if (_annotations == null)
        {
            _annotations = new HashMap();
        }
        _annotations.put(annotation.annotationType(), annotation);
    }

    public final void add(Annotation annotation)
    {
        _add(annotation);
    }

    public final void addIfNotPresent(Annotation annotation)
    {
        if (_annotations == null || !_annotations.containsKey(annotation.annotationType()))
        {
            _add(annotation);
        }
    }

    public final Annotation get(Class class1)
    {
        if (_annotations == null)
        {
            return null;
        } else
        {
            return (Annotation)_annotations.get(class1);
        }
    }

    public final int size()
    {
        if (_annotations == null)
        {
            return 0;
        } else
        {
            return _annotations.size();
        }
    }

    public final String toString()
    {
        if (_annotations == null)
        {
            return "[null]";
        } else
        {
            return _annotations.toString();
        }
    }
}
