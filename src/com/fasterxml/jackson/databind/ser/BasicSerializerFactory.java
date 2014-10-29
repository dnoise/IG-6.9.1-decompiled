// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.NoClass;
import com.fasterxml.jackson.databind.cfg.SerializerFactoryConfig;
import com.fasterxml.jackson.databind.ext.OptionalHandlerFactory;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BasicBeanDescription;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.impl.IndexedStringListSerializer;
import com.fasterxml.jackson.databind.ser.impl.StringArraySerializer;
import com.fasterxml.jackson.databind.ser.impl.StringCollectionSerializer;
import com.fasterxml.jackson.databind.ser.std.BooleanSerializer;
import com.fasterxml.jackson.databind.ser.std.CalendarSerializer;
import com.fasterxml.jackson.databind.ser.std.DateSerializer;
import com.fasterxml.jackson.databind.ser.std.EnumMapSerializer;
import com.fasterxml.jackson.databind.ser.std.EnumSerializer;
import com.fasterxml.jackson.databind.ser.std.InetAddressSerializer;
import com.fasterxml.jackson.databind.ser.std.JsonValueSerializer;
import com.fasterxml.jackson.databind.ser.std.MapSerializer;
import com.fasterxml.jackson.databind.ser.std.NullSerializer;
import com.fasterxml.jackson.databind.ser.std.NumberSerializers;
import com.fasterxml.jackson.databind.ser.std.ObjectArraySerializer;
import com.fasterxml.jackson.databind.ser.std.SerializableSerializer;
import com.fasterxml.jackson.databind.ser.std.SqlDateSerializer;
import com.fasterxml.jackson.databind.ser.std.SqlTimeSerializer;
import com.fasterxml.jackson.databind.ser.std.StdArraySerializers;
import com.fasterxml.jackson.databind.ser.std.StdContainerSerializers;
import com.fasterxml.jackson.databind.ser.std.StdDelegatingSerializer;
import com.fasterxml.jackson.databind.ser.std.StdJdkSerializers;
import com.fasterxml.jackson.databind.ser.std.StdKeySerializers;
import com.fasterxml.jackson.databind.ser.std.StringSerializer;
import com.fasterxml.jackson.databind.ser.std.TimeZoneSerializer;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.fasterxml.jackson.databind.ser.std.TokenBufferSerializer;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.EnumValues;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.nio.charset.Charset;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.RandomAccess;
import java.util.TimeZone;

// Referenced classes of package com.fasterxml.jackson.databind.ser:
//            SerializerFactory, Serializers, BeanSerializerModifier

public abstract class BasicSerializerFactory extends SerializerFactory
    implements Serializable
{

    protected static final HashMap _concrete;
    protected static final HashMap _concreteLazy;
    protected final SerializerFactoryConfig _factoryConfig;

    protected BasicSerializerFactory(SerializerFactoryConfig serializerfactoryconfig)
    {
        if (serializerfactoryconfig == null)
        {
            serializerfactoryconfig = new SerializerFactoryConfig();
        }
        _factoryConfig = serializerfactoryconfig;
    }

    protected static JavaType modifySecondaryTypesByAnnotation(SerializationConfig serializationconfig, Annotated annotated, JavaType javatype)
    {
        AnnotationIntrospector annotationintrospector = serializationconfig.getAnnotationIntrospector();
        if (javatype.isContainerType())
        {
            Class class1 = annotationintrospector.findSerializationKeyType(annotated, javatype.getKeyType());
            Class class2;
            if (class1 != null)
            {
                if (!(javatype instanceof MapType))
                {
                    throw new IllegalArgumentException((new StringBuilder("Illegal key-type annotation: type ")).append(javatype).append(" is not a Map type").toString());
                }
                JavaType javatype1;
                JavaType javatype2;
                try
                {
                    javatype2 = ((MapType)javatype).widenKey(class1);
                }
                catch (IllegalArgumentException illegalargumentexception1)
                {
                    throw new IllegalArgumentException((new StringBuilder("Failed to narrow key type ")).append(javatype).append(" with key-type annotation (").append(class1.getName()).append("): ").append(illegalargumentexception1.getMessage()).toString());
                }
                javatype = javatype2;
            }
            class2 = annotationintrospector.findSerializationContentType(annotated, javatype.getContentType());
            if (class2 != null)
            {
                try
                {
                    javatype1 = javatype.widenContentsBy(class2);
                }
                catch (IllegalArgumentException illegalargumentexception)
                {
                    throw new IllegalArgumentException((new StringBuilder("Failed to narrow content type ")).append(javatype).append(" with content-type annotation (").append(class2.getName()).append("): ").append(illegalargumentexception.getMessage()).toString());
                }
                javatype = javatype1;
            }
        }
        return javatype;
    }

    protected JsonSerializer _findContentSerializer(SerializerProvider serializerprovider, Annotated annotated)
    {
        Object obj = serializerprovider.getAnnotationIntrospector().findContentSerializer(annotated);
        if (obj != null)
        {
            return serializerprovider.serializerInstance(annotated, obj);
        } else
        {
            return null;
        }
    }

    protected JsonSerializer _findKeySerializer(SerializerProvider serializerprovider, Annotated annotated)
    {
        Object obj = serializerprovider.getAnnotationIntrospector().findKeySerializer(annotated);
        if (obj != null)
        {
            return serializerprovider.serializerInstance(annotated, obj);
        } else
        {
            return null;
        }
    }

    protected Class _verifyAsClass(Object obj, String s, Class class1)
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

    protected JsonSerializer buildArraySerializer(SerializationConfig serializationconfig, ArrayType arraytype, BeanDescription beandescription, boolean flag, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        Object obj = null;
        Iterator iterator = customSerializers().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            obj = ((Serializers)iterator.next()).findArraySerializer(serializationconfig, arraytype, beandescription, typeserializer, jsonserializer);
        } while (obj == null);
        Object obj1;
        if (obj == null)
        {
            Class class1 = arraytype.getRawClass();
            Iterator iterator1;
            if (jsonserializer == null || ClassUtil.isJacksonStdImpl(jsonserializer))
            {
                if ([Ljava/lang/String; == class1)
                {
                    obj = StringArraySerializer.instance;
                } else
                {
                    obj = StdArraySerializers.findStandardImpl(class1);
                }
            }
            if (obj == null)
            {
                obj = new ObjectArraySerializer(arraytype.getContentType(), flag, typeserializer, jsonserializer);
            }
        }
        if (_factoryConfig.hasSerializerModifiers())
        {
            iterator1 = _factoryConfig.serializerModifiers().iterator();
            for (obj1 = obj; iterator1.hasNext(); obj1 = ((BeanSerializerModifier)iterator1.next()).modifyArraySerializer(serializationconfig, arraytype, beandescription, ((JsonSerializer) (obj1)))) { }
        } else
        {
            obj1 = obj;
        }
        return ((JsonSerializer) (obj1));
    }

    protected final JsonSerializer buildCollectionSerializer(SerializationConfig serializationconfig, CollectionType collectiontype, BeanDescription beandescription, BeanProperty beanproperty, boolean flag, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        return buildCollectionSerializer(serializationconfig, collectiontype, beandescription, flag, typeserializer, jsonserializer);
    }

    protected JsonSerializer buildCollectionSerializer(SerializationConfig serializationconfig, CollectionType collectiontype, BeanDescription beandescription, boolean flag, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        Iterator iterator = customSerializers().iterator();
        Object obj = null;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            obj = ((Serializers)iterator.next()).findCollectionSerializer(serializationconfig, collectiontype, beandescription, typeserializer, jsonserializer);
        } while (obj == null);
        if (obj == null)
        {
            com.fasterxml.jackson.annotation.JsonFormat.Value value = beandescription.findExpectedFormat(null);
            if (value != null && value.getShape() == com.fasterxml.jackson.annotation.JsonFormat.Shape.OBJECT)
            {
                return null;
            }
            Class class1 = collectiontype.getRawClass();
            if (java/util/EnumSet.isAssignableFrom(class1))
            {
                JavaType javatype = collectiontype.getContentType();
                boolean flag1 = javatype.isEnumType();
                JavaType javatype1 = null;
                Object obj1;
                Iterator iterator1;
                Class class2;
                if (flag1)
                {
                    javatype1 = javatype;
                }
                obj = StdContainerSerializers.enumSetSerializer(javatype1);
            } else
            {
                class2 = collectiontype.getContentType().getRawClass();
                if (isIndexedList(class1))
                {
                    if (class2 == java/lang/String)
                    {
                        if (jsonserializer == null || ClassUtil.isJacksonStdImpl(jsonserializer))
                        {
                            obj = IndexedStringListSerializer.instance;
                        }
                    } else
                    {
                        obj = StdContainerSerializers.indexedListSerializer(collectiontype.getContentType(), flag, typeserializer, jsonserializer);
                    }
                } else
                if (class2 == java/lang/String && (jsonserializer == null || ClassUtil.isJacksonStdImpl(jsonserializer)))
                {
                    obj = StringCollectionSerializer.instance;
                }
                if (obj == null)
                {
                    obj = StdContainerSerializers.collectionSerializer(collectiontype.getContentType(), flag, typeserializer, jsonserializer);
                }
            }
        }
        if (_factoryConfig.hasSerializerModifiers())
        {
            iterator1 = _factoryConfig.serializerModifiers().iterator();
            for (obj1 = obj; iterator1.hasNext(); obj1 = ((BeanSerializerModifier)iterator1.next()).modifyCollectionSerializer(serializationconfig, collectiontype, beandescription, ((JsonSerializer) (obj1)))) { }
        } else
        {
            obj1 = obj;
        }
        return ((JsonSerializer) (obj1));
    }

    protected final JsonSerializer buildContainerSerializer(SerializerProvider serializerprovider, JavaType javatype, BeanDescription beandescription, BeanProperty beanproperty, boolean flag)
    {
        return buildContainerSerializer(serializerprovider, javatype, beandescription, flag);
    }

    protected JsonSerializer buildContainerSerializer(SerializerProvider serializerprovider, JavaType javatype, BeanDescription beandescription, boolean flag)
    {
        SerializationConfig serializationconfig;
        TypeSerializer typeserializer;
        JsonSerializer jsonserializer;
        serializationconfig = serializerprovider.getConfig();
        if (!flag && javatype.useStaticType() && (!javatype.isContainerType() || javatype.getContentType().getRawClass() != java/lang/Object))
        {
            flag = true;
        }
        typeserializer = createTypeSerializer(serializationconfig, javatype.getContentType());
        if (typeserializer != null)
        {
            flag = false;
        }
        jsonserializer = _findContentSerializer(serializerprovider, beandescription.getClassInfo());
        if (!javatype.isMapLikeType()) goto _L2; else goto _L1
_L1:
        MapLikeType mapliketype;
        JsonSerializer jsonserializer3;
        mapliketype = (MapLikeType)javatype;
        jsonserializer3 = _findKeySerializer(serializerprovider, beandescription.getClassInfo());
        if (!mapliketype.isTrueMapType()) goto _L4; else goto _L3
_L3:
        JsonSerializer jsonserializer2 = buildMapSerializer(serializationconfig, (MapType)mapliketype, beandescription, flag, jsonserializer3, typeserializer, jsonserializer);
_L6:
        return jsonserializer2;
_L4:
        JsonSerializer jsonserializer1;
        for (Iterator iterator2 = customSerializers().iterator(); iterator2.hasNext();)
        {
            Serializers serializers = (Serializers)iterator2.next();
            MapLikeType mapliketype1 = (MapLikeType)javatype;
            jsonserializer1 = serializers.findMapLikeSerializer(serializationconfig, mapliketype1, beandescription, jsonserializer3, typeserializer, jsonserializer);
            if (jsonserializer1 != null)
            {
                if (!_factoryConfig.hasSerializerModifiers())
                {
                    break MISSING_BLOCK_LABEL_447;
                }
                Iterator iterator3 = _factoryConfig.serializerModifiers().iterator();
                jsonserializer2 = jsonserializer1;
                while (iterator3.hasNext()) 
                {
                    jsonserializer2 = ((BeanSerializerModifier)iterator3.next()).modifyMapLikeSerializer(serializationconfig, mapliketype1, beandescription, jsonserializer2);
                }
                continue; /* Loop/switch isn't completed */
            }
        }

        return null;
_L2:
        if (!javatype.isCollectionLikeType())
        {
            break MISSING_BLOCK_LABEL_420;
        }
        CollectionLikeType collectionliketype = (CollectionLikeType)javatype;
        if (collectionliketype.isTrueCollectionType())
        {
            return buildCollectionSerializer(serializationconfig, (CollectionType)collectionliketype, beandescription, flag, typeserializer, jsonserializer);
        }
        CollectionLikeType collectionliketype1 = (CollectionLikeType)javatype;
        Iterator iterator = customSerializers().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break; /* Loop/switch isn't completed */
            }
            jsonserializer1 = ((Serializers)iterator.next()).findCollectionLikeSerializer(serializationconfig, collectionliketype1, beandescription, typeserializer, jsonserializer);
        } while (jsonserializer1 == null);
        if (!_factoryConfig.hasSerializerModifiers())
        {
            break MISSING_BLOCK_LABEL_447;
        }
        Iterator iterator1 = _factoryConfig.serializerModifiers().iterator();
        jsonserializer2 = jsonserializer1;
        while (iterator1.hasNext()) 
        {
            jsonserializer2 = ((BeanSerializerModifier)iterator1.next()).modifyCollectionLikeSerializer(serializationconfig, collectionliketype1, beandescription, jsonserializer2);
        }
        if (true) goto _L6; else goto _L5
_L5:
        return null;
        if (javatype.isArrayType())
        {
            return buildArraySerializer(serializationconfig, (ArrayType)javatype, beandescription, flag, typeserializer, jsonserializer);
        } else
        {
            return null;
        }
        return jsonserializer1;
    }

    protected JsonSerializer buildEnumSerializer(SerializationConfig serializationconfig, JavaType javatype, BeanDescription beandescription)
    {
        Object obj = null;
        com.fasterxml.jackson.annotation.JsonFormat.Value value = beandescription.findExpectedFormat(null);
        if (value != null && value.getShape() == com.fasterxml.jackson.annotation.JsonFormat.Shape.OBJECT)
        {
            ((BasicBeanDescription)beandescription).removeProperty("declaringClass");
        } else
        {
            EnumSerializer enumserializer = EnumSerializer.construct(javatype.getRawClass(), serializationconfig, beandescription, value);
            if (_factoryConfig.hasSerializerModifiers())
            {
                Iterator iterator = _factoryConfig.serializerModifiers().iterator();
                obj = enumserializer;
                while (iterator.hasNext()) 
                {
                    obj = ((BeanSerializerModifier)iterator.next()).modifyEnumSerializer(serializationconfig, javatype, beandescription, ((JsonSerializer) (obj)));
                }
            } else
            {
                return enumserializer;
            }
        }
        return ((JsonSerializer) (obj));
    }

    protected JsonSerializer buildIterableSerializer(SerializationConfig serializationconfig, JavaType javatype, BeanDescription beandescription, boolean flag)
    {
        JavaType javatype1 = javatype.containedType(0);
        if (javatype1 == null)
        {
            javatype1 = TypeFactory.unknownType();
        }
        TypeSerializer typeserializer = createTypeSerializer(serializationconfig, javatype1);
        return StdContainerSerializers.iterableSerializer(javatype1, usesStaticTyping(serializationconfig, beandescription, typeserializer), typeserializer);
    }

    protected JsonSerializer buildIteratorSerializer(SerializationConfig serializationconfig, JavaType javatype, BeanDescription beandescription, boolean flag)
    {
        JavaType javatype1 = javatype.containedType(0);
        if (javatype1 == null)
        {
            javatype1 = TypeFactory.unknownType();
        }
        TypeSerializer typeserializer = createTypeSerializer(serializationconfig, javatype1);
        return StdContainerSerializers.iteratorSerializer(javatype1, usesStaticTyping(serializationconfig, beandescription, typeserializer), typeserializer);
    }

    protected JsonSerializer buildMapSerializer(SerializationConfig serializationconfig, MapType maptype, BeanDescription beandescription, boolean flag, JsonSerializer jsonserializer, TypeSerializer typeserializer, JsonSerializer jsonserializer1)
    {
        Object obj = null;
        Iterator iterator = customSerializers().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            obj = ((Serializers)iterator.next()).findMapSerializer(serializationconfig, maptype, beandescription, jsonserializer, typeserializer, jsonserializer1);
        } while (obj == null);
        Object obj1;
        if (obj == null)
        {
            if (java/util/EnumMap.isAssignableFrom(maptype.getRawClass()))
            {
                JavaType javatype = maptype.getKeyType();
                boolean flag1 = javatype.isEnumType();
                EnumValues enumvalues = null;
                if (flag1)
                {
                    enumvalues = EnumValues.construct(javatype.getRawClass(), serializationconfig.getAnnotationIntrospector());
                }
                obj = new EnumMapSerializer(maptype.getContentType(), flag, enumvalues, typeserializer, jsonserializer1);
            } else
            {
                obj = MapSerializer.construct(serializationconfig.getAnnotationIntrospector().findPropertiesToIgnore(beandescription.getClassInfo()), maptype, flag, typeserializer, jsonserializer, jsonserializer1);
            }
        }
        if (_factoryConfig.hasSerializerModifiers())
        {
            Iterator iterator1 = _factoryConfig.serializerModifiers().iterator();
            for (obj1 = obj; iterator1.hasNext(); obj1 = ((BeanSerializerModifier)iterator1.next()).modifyMapSerializer(serializationconfig, maptype, beandescription, ((JsonSerializer) (obj1)))) { }
        } else
        {
            obj1 = obj;
        }
        return ((JsonSerializer) (obj1));
    }

    public JsonSerializer createKeySerializer(SerializationConfig serializationconfig, JavaType javatype, JsonSerializer jsonserializer)
    {
        BeanDescription beandescription = serializationconfig.introspectClassAnnotations(javatype.getRawClass());
        boolean flag = _factoryConfig.hasKeySerializers();
        JsonSerializer jsonserializer1 = null;
        if (flag)
        {
            Iterator iterator1 = _factoryConfig.keySerializers().iterator();
            do
            {
                if (!iterator1.hasNext())
                {
                    break;
                }
                jsonserializer1 = ((Serializers)iterator1.next()).findSerializer(serializationconfig, javatype, beandescription);
            } while (jsonserializer1 == null);
        }
        if (jsonserializer1 == null)
        {
            if (jsonserializer == null)
            {
                jsonserializer = StdKeySerializers.getStdKeySerializer(javatype);
            }
        } else
        {
            jsonserializer = jsonserializer1;
        }
        if (_factoryConfig.hasSerializerModifiers())
        {
            for (Iterator iterator = _factoryConfig.serializerModifiers().iterator(); iterator.hasNext();)
            {
                jsonserializer = ((BeanSerializerModifier)iterator.next()).modifyKeySerializer(serializationconfig, javatype, beandescription, jsonserializer);
            }

        }
        return jsonserializer;
    }

    public abstract JsonSerializer createSerializer(SerializerProvider serializerprovider, JavaType javatype);

    public TypeSerializer createTypeSerializer(SerializationConfig serializationconfig, JavaType javatype)
    {
        com.fasterxml.jackson.databind.introspect.AnnotatedClass annotatedclass = serializationconfig.introspectClassAnnotations(javatype.getRawClass()).getClassInfo();
        AnnotationIntrospector annotationintrospector = serializationconfig.getAnnotationIntrospector();
        TypeResolverBuilder typeresolverbuilder = annotationintrospector.findTypeResolver(serializationconfig, annotatedclass, javatype);
        Collection collection;
        if (typeresolverbuilder == null)
        {
            typeresolverbuilder = serializationconfig.getDefaultTyper(javatype);
            collection = null;
        } else
        {
            collection = serializationconfig.getSubtypeResolver().collectAndResolveSubtypes(annotatedclass, serializationconfig, annotationintrospector);
        }
        if (typeresolverbuilder == null)
        {
            return null;
        } else
        {
            return typeresolverbuilder.buildTypeSerializer(serializationconfig, javatype, collection);
        }
    }

    protected abstract Iterable customSerializers();

    protected Converter findConverter(SerializerProvider serializerprovider, Annotated annotated)
    {
        Object obj = serializerprovider.getAnnotationIntrospector().findSerializationConverter(annotated);
        if (obj == null)
        {
            return null;
        } else
        {
            return serializerprovider.converterInstance(annotated, obj);
        }
    }

    protected JsonSerializer findConvertingSerializer(SerializerProvider serializerprovider, Annotated annotated, JsonSerializer jsonserializer)
    {
        Converter converter = findConverter(serializerprovider, annotated);
        if (converter == null)
        {
            return jsonserializer;
        } else
        {
            return new StdDelegatingSerializer(converter, converter.getOutputType(serializerprovider.getTypeFactory()), jsonserializer);
        }
    }

    protected JsonSerializer findOptionalStdSerializer(SerializerProvider serializerprovider, JavaType javatype, BeanDescription beandescription, boolean flag)
    {
        return OptionalHandlerFactory.instance.findSerializer(serializerprovider.getConfig(), javatype, beandescription);
    }

    protected final JsonSerializer findSerializerByAddonType(SerializationConfig serializationconfig, JavaType javatype, BeanDescription beandescription, boolean flag)
    {
        Class class1 = javatype.getRawClass();
        if (java/util/Iterator.isAssignableFrom(class1))
        {
            return buildIteratorSerializer(serializationconfig, javatype, beandescription, flag);
        }
        if (java/lang/Iterable.isAssignableFrom(class1))
        {
            return buildIterableSerializer(serializationconfig, javatype, beandescription, flag);
        }
        if (java/lang/CharSequence.isAssignableFrom(class1))
        {
            return ToStringSerializer.instance;
        } else
        {
            return null;
        }
    }

    protected final JsonSerializer findSerializerByAnnotations(SerializerProvider serializerprovider, JavaType javatype, BeanDescription beandescription)
    {
        if (com/fasterxml/jackson/databind/JsonSerializable.isAssignableFrom(javatype.getRawClass()))
        {
            return SerializableSerializer.instance;
        }
        AnnotatedMethod annotatedmethod = beandescription.findJsonValueMethod();
        if (annotatedmethod != null)
        {
            java.lang.reflect.Method method = annotatedmethod.getAnnotated();
            if (serializerprovider.canOverrideAccessModifiers())
            {
                ClassUtil.checkAndFixAccess(method);
            }
            return new JsonValueSerializer(method, findSerializerFromAnnotation(serializerprovider, annotatedmethod));
        } else
        {
            return null;
        }
    }

    protected final JsonSerializer findSerializerByLookup(JavaType javatype, SerializationConfig serializationconfig, BeanDescription beandescription, boolean flag)
    {
        String s = javatype.getRawClass().getName();
        JsonSerializer jsonserializer = (JsonSerializer)_concrete.get(s);
        if (jsonserializer == null)
        {
            Class class1 = (Class)_concreteLazy.get(s);
            if (class1 != null)
            {
                try
                {
                    jsonserializer = (JsonSerializer)class1.newInstance();
                }
                catch (Exception exception)
                {
                    throw new IllegalStateException((new StringBuilder("Failed to instantiate standard serializer (of type ")).append(class1.getName()).append("): ").append(exception.getMessage()).toString(), exception);
                }
            }
        }
        return jsonserializer;
    }

    protected final JsonSerializer findSerializerByPrimaryType(SerializerProvider serializerprovider, JavaType javatype, BeanDescription beandescription, boolean flag)
    {
        Class class1 = javatype.getRawClass();
        Object obj;
        if (java/net/InetAddress.isAssignableFrom(class1))
        {
            obj = InetAddressSerializer.instance;
        } else
        {
            if (java/util/TimeZone.isAssignableFrom(class1))
            {
                return TimeZoneSerializer.instance;
            }
            if (java/nio/charset/Charset.isAssignableFrom(class1))
            {
                return ToStringSerializer.instance;
            }
            obj = findOptionalStdSerializer(serializerprovider, javatype, beandescription, flag);
            if (obj == null)
            {
                if (java/lang/Number.isAssignableFrom(class1))
                {
                    return com.fasterxml.jackson.databind.ser.std.NumberSerializers.NumberSerializer.instance;
                }
                if (java/lang/Enum.isAssignableFrom(class1))
                {
                    return buildEnumSerializer(serializerprovider.getConfig(), javatype, beandescription);
                }
                if (java/util/Calendar.isAssignableFrom(class1))
                {
                    return CalendarSerializer.instance;
                }
                if (java/util/Date.isAssignableFrom(class1))
                {
                    return DateSerializer.instance;
                } else
                {
                    return null;
                }
            }
        }
        return ((JsonSerializer) (obj));
    }

    protected JsonSerializer findSerializerFromAnnotation(SerializerProvider serializerprovider, Annotated annotated)
    {
        Object obj = serializerprovider.getAnnotationIntrospector().findSerializer(annotated);
        if (obj == null)
        {
            return null;
        } else
        {
            return findConvertingSerializer(serializerprovider, annotated, serializerprovider.serializerInstance(annotated, obj));
        }
    }

    public SerializerFactoryConfig getFactoryConfig()
    {
        return _factoryConfig;
    }

    public final JsonSerializer getNullSerializer()
    {
        return NullSerializer.instance;
    }

    protected boolean isIndexedList(Class class1)
    {
        return java/util/RandomAccess.isAssignableFrom(class1);
    }

    protected JavaType modifyTypeByAnnotation(SerializationConfig serializationconfig, Annotated annotated, JavaType javatype)
    {
        Class class1 = serializationconfig.getAnnotationIntrospector().findSerializationType(annotated);
        if (class1 != null)
        {
            JavaType javatype1;
            try
            {
                javatype1 = javatype.widenBy(class1);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                throw new IllegalArgumentException((new StringBuilder("Failed to widen type ")).append(javatype).append(" with concrete-type annotation (value ").append(class1.getName()).append("), method '").append(annotated.getName()).append("': ").append(illegalargumentexception.getMessage()).toString());
            }
            javatype = javatype1;
        }
        return modifySecondaryTypesByAnnotation(serializationconfig, annotated, javatype);
    }

    protected boolean usesStaticTyping(SerializationConfig serializationconfig, BeanDescription beandescription, TypeSerializer typeserializer)
    {
        if (typeserializer == null)
        {
            com.fasterxml.jackson.databind.annotation.JsonSerialize.Typing typing = serializationconfig.getAnnotationIntrospector().findSerializationTyping(beandescription.getClassInfo());
            if (typing != null)
            {
                if (typing == com.fasterxml.jackson.databind.annotation.JsonSerialize.Typing.STATIC)
                {
                    return true;
                }
            } else
            {
                return serializationconfig.isEnabled(MapperFeature.USE_STATIC_TYPING);
            }
        }
        return false;
    }

    protected final boolean usesStaticTyping(SerializationConfig serializationconfig, BeanDescription beandescription, TypeSerializer typeserializer, BeanProperty beanproperty)
    {
        return usesStaticTyping(serializationconfig, beandescription, typeserializer);
    }

    public final SerializerFactory withAdditionalKeySerializers(Serializers serializers)
    {
        return withConfig(_factoryConfig.withAdditionalKeySerializers(serializers));
    }

    public final SerializerFactory withAdditionalSerializers(Serializers serializers)
    {
        return withConfig(_factoryConfig.withAdditionalSerializers(serializers));
    }

    public abstract SerializerFactory withConfig(SerializerFactoryConfig serializerfactoryconfig);

    public final SerializerFactory withSerializerModifier(BeanSerializerModifier beanserializermodifier)
    {
        return withConfig(_factoryConfig.withSerializerModifier(beanserializermodifier));
    }

    static 
    {
        _concrete = new HashMap();
        _concreteLazy = new HashMap();
        _concrete.put(java/lang/String.getName(), new StringSerializer());
        ToStringSerializer tostringserializer = ToStringSerializer.instance;
        _concrete.put(java/lang/StringBuffer.getName(), tostringserializer);
        _concrete.put(java/lang/StringBuilder.getName(), tostringserializer);
        _concrete.put(java/lang/Character.getName(), tostringserializer);
        _concrete.put(Character.TYPE.getName(), tostringserializer);
        NumberSerializers.addAll(_concrete);
        _concrete.put(Boolean.TYPE.getName(), new BooleanSerializer(true));
        _concrete.put(java/lang/Boolean.getName(), new BooleanSerializer(false));
        com.fasterxml.jackson.databind.ser.std.NumberSerializers.NumberSerializer numberserializer = new com.fasterxml.jackson.databind.ser.std.NumberSerializers.NumberSerializer();
        _concrete.put(java/math/BigInteger.getName(), numberserializer);
        _concrete.put(java/math/BigDecimal.getName(), numberserializer);
        _concrete.put(java/util/Calendar.getName(), CalendarSerializer.instance);
        DateSerializer dateserializer = DateSerializer.instance;
        _concrete.put(java/util/Date.getName(), dateserializer);
        _concrete.put(java/sql/Timestamp.getName(), dateserializer);
        _concreteLazy.put(java/sql/Date.getName(), com/fasterxml/jackson/databind/ser/std/SqlDateSerializer);
        _concreteLazy.put(java/sql/Time.getName(), com/fasterxml/jackson/databind/ser/std/SqlTimeSerializer);
        for (Iterator iterator = StdJdkSerializers.all().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            Object obj = entry.getValue();
            if (obj instanceof JsonSerializer)
            {
                _concrete.put(((Class)entry.getKey()).getName(), (JsonSerializer)obj);
            } else
            if (obj instanceof Class)
            {
                Class class1 = (Class)obj;
                _concreteLazy.put(((Class)entry.getKey()).getName(), class1);
            } else
            {
                throw new IllegalStateException((new StringBuilder("Internal error: unrecognized value of type ")).append(entry.getClass().getName()).toString());
            }
        }

        _concreteLazy.put(com/fasterxml/jackson/databind/util/TokenBuffer.getName(), com/fasterxml/jackson/databind/ser/std/TokenBufferSerializer);
    }
}
