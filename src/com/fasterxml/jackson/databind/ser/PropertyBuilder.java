// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ArrayBuilders;

// Referenced classes of package com.fasterxml.jackson.databind.ser:
//            BeanPropertyWriter, BeanSerializerFactory

public class PropertyBuilder
{

    protected final AnnotationIntrospector _annotationIntrospector;
    protected final BeanDescription _beanDesc;
    protected final SerializationConfig _config;
    protected Object _defaultBean;
    protected final com.fasterxml.jackson.annotation.JsonInclude.Include _outputProps;

    public PropertyBuilder(SerializationConfig serializationconfig, BeanDescription beandescription)
    {
        _config = serializationconfig;
        _beanDesc = beandescription;
        _outputProps = beandescription.findSerializationInclusion(serializationconfig.getSerializationInclusion());
        _annotationIntrospector = _config.getAnnotationIntrospector();
    }

    protected Object _throwWrapped(Exception exception, String s, Object obj)
    {
        for (; exception.getCause() != null; exception = exception.getCause()) { }
        if (exception instanceof Error)
        {
            throw (Error)exception;
        }
        if (exception instanceof RuntimeException)
        {
            throw (RuntimeException)exception;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Failed to get property '")).append(s).append("' of default ").append(obj.getClass().getName()).append(" instance").toString());
        }
    }

    protected BeanPropertyWriter buildWriter(BeanPropertyDefinition beanpropertydefinition, JavaType javatype, JsonSerializer jsonserializer, TypeSerializer typeserializer, TypeSerializer typeserializer1, AnnotatedMember annotatedmember, boolean flag)
    {
        JavaType javatype1 = findSerializationType(annotatedmember, flag, javatype);
        JavaType javatype2;
        com.fasterxml.jackson.annotation.JsonInclude.Include include;
        boolean flag1;
        Object obj;
        boolean flag2;
        BeanPropertyWriter beanpropertywriter;
        com.fasterxml.jackson.databind.util.NameTransformer nametransformer;
        int i;
        boolean flag3;
        boolean flag4;
        boolean flag5;
        if (typeserializer1 != null)
        {
            if (javatype1 == null)
            {
                javatype1 = javatype;
            }
            if (javatype1.getContentType() == null)
            {
                throw new IllegalStateException((new StringBuilder("Problem trying to create BeanPropertyWriter for property '")).append(beanpropertydefinition.getName()).append("' (of type ").append(_beanDesc.getType()).append("); serialization type ").append(javatype1).append(" has no content").toString());
            }
            javatype2 = javatype1.withContentTypeHandler(typeserializer1);
            javatype2.getContentType();
        } else
        {
            javatype2 = javatype1;
        }
        include = _annotationIntrospector.findSerializationInclusion(annotatedmember, _outputProps);
        flag1 = false;
        obj = null;
        if (include == null) goto _L2; else goto _L1
_L1:
        i = _cls1..SwitchMap.com.fasterxml.jackson.annotation.JsonInclude.Include[include.ordinal()];
        obj = null;
        flag1 = false;
        i;
        JVM INSTR tableswitch 1 4: default 180
    //                   1 241
    //                   2 295
    //                   3 306
    //                   4 309;
           goto _L2 _L3 _L4 _L5 _L6
_L2:
        flag2 = flag1;
_L9:
        beanpropertywriter = new BeanPropertyWriter(beanpropertydefinition, annotatedmember, _beanDesc.getClassAnnotations(), javatype, jsonserializer, typeserializer, javatype2, flag2, obj);
        nametransformer = _annotationIntrospector.findUnwrappingNameTransformer(annotatedmember);
        if (nametransformer != null)
        {
            beanpropertywriter = beanpropertywriter.unwrappingWriter(nametransformer);
        }
        return beanpropertywriter;
_L3:
        obj = getDefaultValue(beanpropertydefinition.getName(), annotatedmember);
        if (obj != null) goto _L8; else goto _L7
_L7:
        flag2 = true;
          goto _L9
_L8:
        flag5 = obj.getClass().isArray();
        flag1 = false;
        if (!flag5) goto _L2; else goto _L10
_L10:
        obj = ArrayBuilders.getArrayComparator(obj);
        flag2 = false;
          goto _L9
_L4:
        obj = BeanPropertyWriter.MARKER_FOR_EMPTY;
        flag2 = true;
          goto _L9
_L5:
        flag1 = true;
_L6:
        flag3 = javatype.isContainerType();
        obj = null;
        if (!flag3) goto _L2; else goto _L11
_L11:
        flag4 = _config.isEnabled(SerializationFeature.WRITE_EMPTY_JSON_ARRAYS);
        obj = null;
        if (flag4) goto _L2; else goto _L12
_L12:
        obj = BeanPropertyWriter.MARKER_FOR_EMPTY;
        flag2 = flag1;
          goto _L9
    }

    protected JavaType findSerializationType(Annotated annotated, boolean flag, JavaType javatype)
    {
        Class class1 = _annotationIntrospector.findSerializationType(annotated);
        if (class1 != null)
        {
            Class class2 = javatype.getRawClass();
            JavaType javatype1;
            com.fasterxml.jackson.databind.annotation.JsonSerialize.Typing typing;
            if (class1.isAssignableFrom(class2))
            {
                javatype = javatype.widenBy(class1);
            } else
            {
                if (!class2.isAssignableFrom(class1))
                {
                    throw new IllegalArgumentException((new StringBuilder("Illegal concrete-type annotation for method '")).append(annotated.getName()).append("': class ").append(class1.getName()).append(" not a super-type of (declared) class ").append(class2.getName()).toString());
                }
                javatype = _config.constructSpecializedType(javatype, class1);
            }
            flag = true;
        }
        javatype1 = BeanSerializerFactory.modifySecondaryTypesByAnnotation(_config, annotated, javatype);
        if (javatype1 != javatype)
        {
            flag = true;
            javatype = javatype1;
        }
        if (!flag)
        {
            typing = _annotationIntrospector.findSerializationTyping(annotated);
            if (typing != null)
            {
                if (typing == com.fasterxml.jackson.databind.annotation.JsonSerialize.Typing.STATIC)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            }
        }
        if (flag)
        {
            return javatype;
        } else
        {
            return null;
        }
    }

    public Annotations getClassAnnotations()
    {
        return _beanDesc.getClassAnnotations();
    }

    protected Object getDefaultBean()
    {
        if (_defaultBean == null)
        {
            _defaultBean = _beanDesc.instantiateBean(_config.canOverrideAccessModifiers());
            if (_defaultBean == null)
            {
                Class class1 = _beanDesc.getClassInfo().getAnnotated();
                throw new IllegalArgumentException((new StringBuilder("Class ")).append(class1.getName()).append(" has no default constructor; can not instantiate default bean value to support 'properties=JsonSerialize.Inclusion.NON_DEFAULT' annotation").toString());
            }
        }
        return _defaultBean;
    }

    protected Object getDefaultValue(String s, AnnotatedMember annotatedmember)
    {
        Object obj = getDefaultBean();
        Object obj1;
        try
        {
            obj1 = annotatedmember.getValue(obj);
        }
        catch (Exception exception)
        {
            return _throwWrapped(exception, s, obj);
        }
        return obj1;
    }

    private class _cls1
    {

        static final int $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[];

        static 
        {
            $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include = new int[com.fasterxml.jackson.annotation.JsonInclude.Include.values().length];
            try
            {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[com.fasterxml.jackson.annotation.JsonInclude.Include.NON_DEFAULT.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[com.fasterxml.jackson.annotation.JsonInclude.Include.NON_EMPTY.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include[com.fasterxml.jackson.annotation.JsonInclude.Include.ALWAYS.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3)
            {
                return;
            }
        }
    }

}
