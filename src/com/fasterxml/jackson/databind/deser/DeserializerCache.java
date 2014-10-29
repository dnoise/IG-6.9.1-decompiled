// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.annotation.NoClass;
import com.fasterxml.jackson.databind.deser.std.StdDelegatingDeserializer;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import java.io.Serializable;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.fasterxml.jackson.databind.deser:
//            ResolvableDeserializer, DeserializerFactory

public final class DeserializerCache
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    protected final ConcurrentHashMap _cachedDeserializers = new ConcurrentHashMap(64, 0.75F, 2);
    protected final HashMap _incompleteDeserializers = new HashMap(8);

    public DeserializerCache()
    {
    }

    private Class _verifyAsClass(Object obj, String s, Class class1)
    {
        Class class2;
        if (obj == null)
        {
            class2 = null;
        } else
        {
            if (!(obj instanceof Class))
            {
                throw new IllegalStateException((new StringBuilder("AnnotationIntrospector.")).append(s).append("() returned value of type ").append(obj.getClass().getName()).append(": expected type JsonSerializer or Class<JsonSerializer> instead").toString());
            }
            class2 = (Class)obj;
            if (class2 == class1 || class2 == com/fasterxml/jackson/databind/annotation/NoClass)
            {
                return null;
            }
        }
        return class2;
    }

    private JavaType modifyTypeByAnnotation(DeserializationContext deserializationcontext, Annotated annotated, JavaType javatype)
    {
        AnnotationIntrospector annotationintrospector;
        annotationintrospector = deserializationcontext.getAnnotationIntrospector();
        Class class1 = annotationintrospector.findDeserializationType(annotated, javatype);
        if (class1 != null)
        {
            JavaType javatype4;
            try
            {
                javatype4 = javatype.narrowBy(class1);
            }
            catch (IllegalArgumentException illegalargumentexception2)
            {
                throw new JsonMappingException((new StringBuilder("Failed to narrow type ")).append(javatype).append(" with concrete-type annotation (value ").append(class1.getName()).append("), method '").append(annotated.getName()).append("': ").append(illegalargumentexception2.getMessage()).toString(), null, illegalargumentexception2);
            }
            javatype = javatype4;
        }
        if (!javatype.isContainerType()) goto _L2; else goto _L1
_L1:
        JsonDeserializer jsondeserializer;
        Class class2 = annotationintrospector.findDeserializationKeyType(annotated, javatype.getKeyType());
        Class class3;
        if (class2 != null)
        {
            if (!(javatype instanceof MapLikeType))
            {
                throw new JsonMappingException((new StringBuilder("Illegal key-type annotation: type ")).append(javatype).append(" is not a Map(-like) type").toString());
            }
            JavaType javatype1;
            Object obj;
            Class class4;
            JavaType javatype2;
            Object obj1;
            KeyDeserializer keydeserializer;
            JavaType javatype3;
            try
            {
                javatype3 = ((MapLikeType)javatype).narrowKey(class2);
            }
            catch (IllegalArgumentException illegalargumentexception1)
            {
                throw new JsonMappingException((new StringBuilder("Failed to narrow key type ")).append(javatype).append(" with key-type annotation (").append(class2.getName()).append("): ").append(illegalargumentexception1.getMessage()).toString(), null, illegalargumentexception1);
            }
            javatype = javatype3;
        }
        javatype1 = javatype.getKeyType();
        if (javatype1 != null && javatype1.getValueHandler() == null)
        {
            obj1 = annotationintrospector.findKeyDeserializer(annotated);
            if (obj1 != null)
            {
                keydeserializer = deserializationcontext.keyDeserializerInstance(annotated, obj1);
                if (keydeserializer != null)
                {
                    javatype = ((MapLikeType)javatype).withKeyValueHandler(keydeserializer);
                    javatype.getKeyType();
                }
            }
        }
        class3 = annotationintrospector.findDeserializationContentType(annotated, javatype.getContentType());
        if (class3 != null)
        {
            try
            {
                javatype2 = javatype.narrowContentsBy(class3);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                throw new JsonMappingException((new StringBuilder("Failed to narrow content type ")).append(javatype).append(" with content-type annotation (").append(class3.getName()).append("): ").append(illegalargumentexception.getMessage()).toString(), null, illegalargumentexception);
            }
            javatype = javatype2;
        }
        if (javatype.getContentType().getValueHandler() != null) goto _L2; else goto _L3
_L3:
        obj = annotationintrospector.findContentDeserializer(annotated);
        if (obj == null) goto _L2; else goto _L4
_L4:
        if (obj instanceof JsonDeserializer) goto _L6; else goto _L5
_L5:
        class4 = _verifyAsClass(obj, "findContentDeserializer", com/fasterxml/jackson/databind/JsonDeserializer$None);
        if (class4 == null) goto _L6; else goto _L7
_L7:
        jsondeserializer = deserializationcontext.deserializerInstance(annotated, class4);
_L9:
        if (jsondeserializer != null)
        {
            javatype = javatype.withContentValueHandler(jsondeserializer);
        }
_L2:
        return javatype;
_L6:
        jsondeserializer = null;
        if (true) goto _L9; else goto _L8
_L8:
    }

    protected final JsonDeserializer _createAndCache2(DeserializationContext deserializationcontext, DeserializerFactory deserializerfactory, JavaType javatype)
    {
        JsonDeserializer jsondeserializer;
        JsonDeserializer jsondeserializer1;
        try
        {
            jsondeserializer = _createDeserializer(deserializationcontext, deserializerfactory, javatype);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw new JsonMappingException(illegalargumentexception.getMessage(), null, illegalargumentexception);
        }
        jsondeserializer1 = jsondeserializer;
        if (jsondeserializer1 == null)
        {
            jsondeserializer1 = null;
        } else
        {
            boolean flag = jsondeserializer1 instanceof ResolvableDeserializer;
            boolean flag1 = jsondeserializer1.isCachable();
            if (flag)
            {
                _incompleteDeserializers.put(javatype, jsondeserializer1);
                ((ResolvableDeserializer)jsondeserializer1).resolve(deserializationcontext);
                _incompleteDeserializers.remove(javatype);
            }
            if (flag1)
            {
                _cachedDeserializers.put(javatype, jsondeserializer1);
                return jsondeserializer1;
            }
        }
        return jsondeserializer1;
    }

    protected final JsonDeserializer _createAndCacheValueDeserializer(DeserializationContext deserializationcontext, DeserializerFactory deserializerfactory, JavaType javatype)
    {
        HashMap hashmap = _incompleteDeserializers;
        hashmap;
        JVM INSTR monitorenter ;
        JsonDeserializer jsondeserializer = _findCachedDeserializer(javatype);
        if (jsondeserializer == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        hashmap;
        JVM INSTR monitorexit ;
        return jsondeserializer;
        int i = _incompleteDeserializers.size();
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        JsonDeserializer jsondeserializer1 = (JsonDeserializer)_incompleteDeserializers.get(javatype);
        if (jsondeserializer1 == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        hashmap;
        JVM INSTR monitorexit ;
        return jsondeserializer1;
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        JsonDeserializer jsondeserializer2 = _createAndCache2(deserializationcontext, deserializerfactory, javatype);
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        if (_incompleteDeserializers.size() > 0)
        {
            _incompleteDeserializers.clear();
        }
        hashmap;
        JVM INSTR monitorexit ;
        return jsondeserializer2;
        Exception exception1;
        exception1;
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_134;
        }
        if (_incompleteDeserializers.size() > 0)
        {
            _incompleteDeserializers.clear();
        }
        throw exception1;
    }

    protected final JsonDeserializer _createDeserializer(DeserializationContext deserializationcontext, DeserializerFactory deserializerfactory, JavaType javatype)
    {
        DeserializationConfig deserializationconfig = deserializationcontext.getConfig();
        if (javatype.isAbstract() || javatype.isMapLikeType() || javatype.isCollectionLikeType())
        {
            javatype = deserializerfactory.mapAbstractType(deserializationconfig, javatype);
        }
        BeanDescription beandescription = deserializationconfig.introspect(javatype);
        JsonDeserializer jsondeserializer = findDeserializerFromAnnotation(deserializationcontext, beandescription.getClassInfo());
        if (jsondeserializer != null)
        {
            return jsondeserializer;
        }
        JavaType javatype1 = modifyTypeByAnnotation(deserializationcontext, beandescription.getClassInfo(), javatype);
        if (javatype1 != javatype)
        {
            beandescription = deserializationconfig.introspect(javatype1);
            javatype = javatype1;
        }
        Class class1 = beandescription.findPOJOBuilder();
        if (class1 != null)
        {
            return deserializerfactory.createBuilderBasedDeserializer(deserializationcontext, javatype, beandescription, class1);
        }
        Converter converter = beandescription.findDeserializationConverter();
        if (converter == null)
        {
            return _createDeserializer2(deserializationcontext, deserializerfactory, javatype, beandescription);
        }
        JavaType javatype2 = converter.getInputType(deserializationcontext.getTypeFactory());
        if (!javatype2.hasRawClass(javatype.getRawClass()))
        {
            beandescription = deserializationconfig.introspect(javatype2);
        }
        return new StdDelegatingDeserializer(converter, javatype2, _createDeserializer2(deserializationcontext, deserializerfactory, javatype2, beandescription));
    }

    protected final JsonDeserializer _createDeserializer2(DeserializationContext deserializationcontext, DeserializerFactory deserializerfactory, JavaType javatype, BeanDescription beandescription)
    {
        DeserializationConfig deserializationconfig = deserializationcontext.getConfig();
        if (javatype.isEnumType())
        {
            return deserializerfactory.createEnumDeserializer(deserializationcontext, javatype, beandescription);
        }
        if (javatype.isContainerType())
        {
            if (javatype.isArrayType())
            {
                return deserializerfactory.createArrayDeserializer(deserializationcontext, (ArrayType)javatype, beandescription);
            }
            if (javatype.isMapLikeType())
            {
                MapLikeType mapliketype = (MapLikeType)javatype;
                if (mapliketype.isTrueMapType())
                {
                    return deserializerfactory.createMapDeserializer(deserializationcontext, (MapType)mapliketype, beandescription);
                } else
                {
                    return deserializerfactory.createMapLikeDeserializer(deserializationcontext, mapliketype, beandescription);
                }
            }
            if (javatype.isCollectionLikeType())
            {
                com.fasterxml.jackson.annotation.JsonFormat.Value value = beandescription.findExpectedFormat(null);
                if (value == null || value.getShape() != com.fasterxml.jackson.annotation.JsonFormat.Shape.OBJECT)
                {
                    CollectionLikeType collectionliketype = (CollectionLikeType)javatype;
                    if (collectionliketype.isTrueCollectionType())
                    {
                        return deserializerfactory.createCollectionDeserializer(deserializationcontext, (CollectionType)collectionliketype, beandescription);
                    } else
                    {
                        return deserializerfactory.createCollectionLikeDeserializer(deserializationcontext, collectionliketype, beandescription);
                    }
                }
            }
        }
        if (com/fasterxml/jackson/databind/JsonNode.isAssignableFrom(javatype.getRawClass()))
        {
            return deserializerfactory.createTreeDeserializer(deserializationconfig, javatype, beandescription);
        } else
        {
            return deserializerfactory.createBeanDeserializer(deserializationcontext, javatype, beandescription);
        }
    }

    protected final JsonDeserializer _findCachedDeserializer(JavaType javatype)
    {
        if (javatype == null)
        {
            throw new IllegalArgumentException("Null JavaType passed");
        } else
        {
            return (JsonDeserializer)_cachedDeserializers.get(javatype);
        }
    }

    protected final KeyDeserializer _handleUnknownKeyDeserializer(JavaType javatype)
    {
        throw new JsonMappingException((new StringBuilder("Can not find a (Map) Key deserializer for type ")).append(javatype).toString());
    }

    protected final JsonDeserializer _handleUnknownValueDeserializer(JavaType javatype)
    {
        if (!ClassUtil.isConcrete(javatype.getRawClass()))
        {
            throw new JsonMappingException((new StringBuilder("Can not find a Value deserializer for abstract type ")).append(javatype).toString());
        } else
        {
            throw new JsonMappingException((new StringBuilder("Can not find a Value deserializer for type ")).append(javatype).toString());
        }
    }

    public final int cachedDeserializersCount()
    {
        return _cachedDeserializers.size();
    }

    protected final Converter findConverter(DeserializationContext deserializationcontext, Annotated annotated)
    {
        Object obj = deserializationcontext.getAnnotationIntrospector().findDeserializationConverter(annotated);
        if (obj == null)
        {
            return null;
        } else
        {
            return deserializationcontext.converterInstance(annotated, obj);
        }
    }

    protected final JsonDeserializer findConvertingDeserializer(DeserializationContext deserializationcontext, Annotated annotated, JsonDeserializer jsondeserializer)
    {
        Converter converter = findConverter(deserializationcontext, annotated);
        if (converter == null)
        {
            return jsondeserializer;
        } else
        {
            return new StdDelegatingDeserializer(converter, converter.getInputType(deserializationcontext.getTypeFactory()), jsondeserializer);
        }
    }

    protected final JsonDeserializer findDeserializerFromAnnotation(DeserializationContext deserializationcontext, Annotated annotated)
    {
        Object obj = deserializationcontext.getAnnotationIntrospector().findDeserializer(annotated);
        if (obj == null)
        {
            return null;
        } else
        {
            return findConvertingDeserializer(deserializationcontext, annotated, deserializationcontext.deserializerInstance(annotated, obj));
        }
    }

    public final KeyDeserializer findKeyDeserializer(DeserializationContext deserializationcontext, DeserializerFactory deserializerfactory, JavaType javatype)
    {
        KeyDeserializer keydeserializer = deserializerfactory.createKeyDeserializer(deserializationcontext, javatype);
        if (keydeserializer == null)
        {
            keydeserializer = _handleUnknownKeyDeserializer(javatype);
        } else
        if (keydeserializer instanceof ResolvableDeserializer)
        {
            ((ResolvableDeserializer)keydeserializer).resolve(deserializationcontext);
            return keydeserializer;
        }
        return keydeserializer;
    }

    public final JsonDeserializer findValueDeserializer(DeserializationContext deserializationcontext, DeserializerFactory deserializerfactory, JavaType javatype)
    {
        JsonDeserializer jsondeserializer = _findCachedDeserializer(javatype);
        if (jsondeserializer == null)
        {
            if ((jsondeserializer = _createAndCacheValueDeserializer(deserializationcontext, deserializerfactory, javatype)) == null)
            {
                return _handleUnknownValueDeserializer(javatype);
            }
        }
        return jsondeserializer;
    }

    public final void flushCachedDeserializers()
    {
        _cachedDeserializers.clear();
    }

    public final boolean hasValueDeserializerFor(DeserializationContext deserializationcontext, DeserializerFactory deserializerfactory, JavaType javatype)
    {
        JsonDeserializer jsondeserializer = _findCachedDeserializer(javatype);
        if (jsondeserializer == null)
        {
            boolean flag;
            JsonDeserializer jsondeserializer1;
            try
            {
                jsondeserializer1 = _createAndCacheValueDeserializer(deserializationcontext, deserializerfactory, javatype);
            }
            catch (Exception exception)
            {
                return false;
            }
            jsondeserializer = jsondeserializer1;
        }
        flag = false;
        if (jsondeserializer != null)
        {
            flag = true;
        }
        return flag;
    }

    final Object writeReplace()
    {
        _incompleteDeserializers.clear();
        return this;
    }
}
