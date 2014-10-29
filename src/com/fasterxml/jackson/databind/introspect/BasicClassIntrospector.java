// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.SimpleType;
import java.io.Serializable;

// Referenced classes of package com.fasterxml.jackson.databind.introspect:
//            ClassIntrospector, AnnotatedClass, BasicBeanDescription, POJOPropertiesCollector

public class BasicClassIntrospector extends ClassIntrospector
    implements Serializable
{

    protected static final BasicBeanDescription BOOLEAN_DESC;
    protected static final BasicBeanDescription INT_DESC;
    protected static final BasicBeanDescription LONG_DESC;
    protected static final BasicBeanDescription STRING_DESC;
    public static final BasicClassIntrospector instance = new BasicClassIntrospector();
    private static final long serialVersionUID = 1L;

    public BasicClassIntrospector()
    {
    }

    protected BasicBeanDescription _findCachedDesc(JavaType javatype)
    {
        Class class1 = javatype.getRawClass();
        if (class1 == java/lang/String)
        {
            return STRING_DESC;
        }
        if (class1 == Boolean.TYPE)
        {
            return BOOLEAN_DESC;
        }
        if (class1 == Integer.TYPE)
        {
            return INT_DESC;
        }
        if (class1 == Long.TYPE)
        {
            return LONG_DESC;
        } else
        {
            return null;
        }
    }

    protected POJOPropertiesCollector collectProperties(MapperConfig mapperconfig, JavaType javatype, ClassIntrospector.MixInResolver mixinresolver, boolean flag, String s)
    {
        boolean flag1 = mapperconfig.isAnnotationProcessingEnabled();
        Class class1 = javatype.getRawClass();
        AnnotationIntrospector annotationintrospector;
        if (flag1)
        {
            annotationintrospector = mapperconfig.getAnnotationIntrospector();
        } else
        {
            annotationintrospector = null;
        }
        return constructPropertyCollector(mapperconfig, AnnotatedClass.construct(class1, annotationintrospector, mixinresolver), javatype, flag, s).collect();
    }

    protected POJOPropertiesCollector collectPropertiesWithBuilder(MapperConfig mapperconfig, JavaType javatype, ClassIntrospector.MixInResolver mixinresolver, boolean flag)
    {
        AnnotationIntrospector annotationintrospector;
        AnnotatedClass annotatedclass;
        com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder.Value value;
        String s;
        if (mapperconfig.isAnnotationProcessingEnabled())
        {
            annotationintrospector = mapperconfig.getAnnotationIntrospector();
        } else
        {
            annotationintrospector = null;
        }
        annotatedclass = AnnotatedClass.construct(javatype.getRawClass(), annotationintrospector, mixinresolver);
        value = null;
        if (annotationintrospector != null)
        {
            value = annotationintrospector.findPOJOBuilderConfig(annotatedclass);
        }
        if (value == null)
        {
            s = "with";
        } else
        {
            s = value.withPrefix;
        }
        return constructPropertyCollector(mapperconfig, annotatedclass, javatype, flag, s).collect();
    }

    protected POJOPropertiesCollector constructPropertyCollector(MapperConfig mapperconfig, AnnotatedClass annotatedclass, JavaType javatype, boolean flag, String s)
    {
        return new POJOPropertiesCollector(mapperconfig, flag, javatype, annotatedclass, s);
    }

    public volatile BeanDescription forClassAnnotations(MapperConfig mapperconfig, JavaType javatype, ClassIntrospector.MixInResolver mixinresolver)
    {
        return forClassAnnotations(mapperconfig, javatype, mixinresolver);
    }

    public BasicBeanDescription forClassAnnotations(MapperConfig mapperconfig, JavaType javatype, ClassIntrospector.MixInResolver mixinresolver)
    {
        boolean flag = mapperconfig.isAnnotationProcessingEnabled();
        Class class1 = javatype.getRawClass();
        AnnotationIntrospector annotationintrospector;
        if (flag)
        {
            annotationintrospector = mapperconfig.getAnnotationIntrospector();
        } else
        {
            annotationintrospector = null;
        }
        return BasicBeanDescription.forOtherUse(mapperconfig, javatype, AnnotatedClass.construct(class1, annotationintrospector, mixinresolver));
    }

    public volatile BeanDescription forCreation(DeserializationConfig deserializationconfig, JavaType javatype, ClassIntrospector.MixInResolver mixinresolver)
    {
        return forCreation(deserializationconfig, javatype, mixinresolver);
    }

    public BasicBeanDescription forCreation(DeserializationConfig deserializationconfig, JavaType javatype, ClassIntrospector.MixInResolver mixinresolver)
    {
        BasicBeanDescription basicbeandescription = _findCachedDesc(javatype);
        if (basicbeandescription == null)
        {
            basicbeandescription = BasicBeanDescription.forDeserialization(collectProperties(deserializationconfig, javatype, mixinresolver, false, "set"));
        }
        return basicbeandescription;
    }

    public volatile BeanDescription forDeserialization(DeserializationConfig deserializationconfig, JavaType javatype, ClassIntrospector.MixInResolver mixinresolver)
    {
        return forDeserialization(deserializationconfig, javatype, mixinresolver);
    }

    public BasicBeanDescription forDeserialization(DeserializationConfig deserializationconfig, JavaType javatype, ClassIntrospector.MixInResolver mixinresolver)
    {
        BasicBeanDescription basicbeandescription = _findCachedDesc(javatype);
        if (basicbeandescription == null)
        {
            basicbeandescription = BasicBeanDescription.forDeserialization(collectProperties(deserializationconfig, javatype, mixinresolver, false, "set"));
        }
        return basicbeandescription;
    }

    public volatile BeanDescription forDeserializationWithBuilder(DeserializationConfig deserializationconfig, JavaType javatype, ClassIntrospector.MixInResolver mixinresolver)
    {
        return forDeserializationWithBuilder(deserializationconfig, javatype, mixinresolver);
    }

    public BasicBeanDescription forDeserializationWithBuilder(DeserializationConfig deserializationconfig, JavaType javatype, ClassIntrospector.MixInResolver mixinresolver)
    {
        return BasicBeanDescription.forDeserialization(collectPropertiesWithBuilder(deserializationconfig, javatype, mixinresolver, false));
    }

    public volatile BeanDescription forDirectClassAnnotations(MapperConfig mapperconfig, JavaType javatype, ClassIntrospector.MixInResolver mixinresolver)
    {
        return forDirectClassAnnotations(mapperconfig, javatype, mixinresolver);
    }

    public BasicBeanDescription forDirectClassAnnotations(MapperConfig mapperconfig, JavaType javatype, ClassIntrospector.MixInResolver mixinresolver)
    {
        boolean flag = mapperconfig.isAnnotationProcessingEnabled();
        AnnotationIntrospector annotationintrospector = mapperconfig.getAnnotationIntrospector();
        Class class1 = javatype.getRawClass();
        if (!flag)
        {
            annotationintrospector = null;
        }
        return BasicBeanDescription.forOtherUse(mapperconfig, javatype, AnnotatedClass.constructWithoutSuperTypes(class1, annotationintrospector, mixinresolver));
    }

    public volatile BeanDescription forSerialization(SerializationConfig serializationconfig, JavaType javatype, ClassIntrospector.MixInResolver mixinresolver)
    {
        return forSerialization(serializationconfig, javatype, mixinresolver);
    }

    public BasicBeanDescription forSerialization(SerializationConfig serializationconfig, JavaType javatype, ClassIntrospector.MixInResolver mixinresolver)
    {
        BasicBeanDescription basicbeandescription = _findCachedDesc(javatype);
        if (basicbeandescription == null)
        {
            basicbeandescription = BasicBeanDescription.forSerialization(collectProperties(serializationconfig, javatype, mixinresolver, true, "set"));
        }
        return basicbeandescription;
    }

    static 
    {
        AnnotatedClass annotatedclass = AnnotatedClass.constructWithoutSuperTypes(java/lang/String, null, null);
        STRING_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(java/lang/String), annotatedclass);
        AnnotatedClass annotatedclass1 = AnnotatedClass.constructWithoutSuperTypes(Boolean.TYPE, null, null);
        BOOLEAN_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(Boolean.TYPE), annotatedclass1);
        AnnotatedClass annotatedclass2 = AnnotatedClass.constructWithoutSuperTypes(Integer.TYPE, null, null);
        INT_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(Integer.TYPE), annotatedclass2);
        AnnotatedClass annotatedclass3 = AnnotatedClass.constructWithoutSuperTypes(Long.TYPE, null, null);
        LONG_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(Long.TYPE), annotatedclass3);
    }
}
