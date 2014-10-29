// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonMapFormatVisitor;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.reflect.Type;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public class MapSerializer extends ContainerSerializer
    implements ContextualSerializer
{

    protected static final JavaType UNSPECIFIED_TYPE = TypeFactory.unknownType();
    protected PropertySerializerMap _dynamicValueSerializers;
    protected final HashSet _ignoredEntries;
    protected JsonSerializer _keySerializer;
    protected final JavaType _keyType;
    protected final BeanProperty _property;
    protected JsonSerializer _valueSerializer;
    protected final JavaType _valueType;
    protected final boolean _valueTypeIsStatic;
    protected final TypeSerializer _valueTypeSerializer;

    protected MapSerializer(MapSerializer mapserializer, BeanProperty beanproperty, JsonSerializer jsonserializer, JsonSerializer jsonserializer1, HashSet hashset)
    {
        super(java/util/Map, false);
        _ignoredEntries = hashset;
        _keyType = mapserializer._keyType;
        _valueType = mapserializer._valueType;
        _valueTypeIsStatic = mapserializer._valueTypeIsStatic;
        _valueTypeSerializer = mapserializer._valueTypeSerializer;
        _keySerializer = jsonserializer;
        _valueSerializer = jsonserializer1;
        _dynamicValueSerializers = mapserializer._dynamicValueSerializers;
        _property = beanproperty;
    }

    protected MapSerializer(MapSerializer mapserializer, TypeSerializer typeserializer)
    {
        super(java/util/Map, false);
        _ignoredEntries = mapserializer._ignoredEntries;
        _keyType = mapserializer._keyType;
        _valueType = mapserializer._valueType;
        _valueTypeIsStatic = mapserializer._valueTypeIsStatic;
        _valueTypeSerializer = typeserializer;
        _keySerializer = mapserializer._keySerializer;
        _valueSerializer = mapserializer._valueSerializer;
        _dynamicValueSerializers = mapserializer._dynamicValueSerializers;
        _property = mapserializer._property;
    }

    protected MapSerializer(HashSet hashset, JavaType javatype, JavaType javatype1, boolean flag, TypeSerializer typeserializer, JsonSerializer jsonserializer, JsonSerializer jsonserializer1)
    {
        super(java/util/Map, false);
        _ignoredEntries = hashset;
        _keyType = javatype;
        _valueType = javatype1;
        _valueTypeIsStatic = flag;
        _valueTypeSerializer = typeserializer;
        _keySerializer = jsonserializer;
        _valueSerializer = jsonserializer1;
        _dynamicValueSerializers = PropertySerializerMap.emptyMap();
        _property = null;
    }

    public static MapSerializer construct(String as[], JavaType javatype, boolean flag, TypeSerializer typeserializer, JsonSerializer jsonserializer, JsonSerializer jsonserializer1)
    {
        JavaType javatype2;
        HashSet hashset = toSet(as);
        JavaType javatype1;
        if (javatype == null)
        {
            javatype1 = UNSPECIFIED_TYPE;
            javatype2 = javatype1;
        } else
        {
            javatype1 = javatype.getKeyType();
            javatype2 = javatype.getContentType();
        }
        if (flag) goto _L2; else goto _L1
_L1:
        if (javatype2 != null && javatype2.isFinal())
        {
            flag = true;
        } else
        {
            flag = false;
        }
_L4:
        return new MapSerializer(hashset, javatype1, javatype2, flag, typeserializer, jsonserializer, jsonserializer1);
_L2:
        if (javatype2.getRawClass() == java/lang/Object)
        {
            flag = false;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static HashSet toSet(String as[])
    {
        HashSet hashset;
        if (as == null || as.length == 0)
        {
            hashset = null;
        } else
        {
            hashset = new HashSet(as.length);
            int i = as.length;
            int j = 0;
            while (j < i) 
            {
                hashset.add(as[j]);
                j++;
            }
        }
        return hashset;
    }

    protected final JsonSerializer _findAndAddDynamic(PropertySerializerMap propertyserializermap, JavaType javatype, SerializerProvider serializerprovider)
    {
        com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap.SerializerAndMapResult serializerandmapresult = propertyserializermap.findAndAddSerializer(javatype, serializerprovider, _property);
        if (propertyserializermap != serializerandmapresult.map)
        {
            _dynamicValueSerializers = serializerandmapresult.map;
        }
        return serializerandmapresult.serializer;
    }

    protected final JsonSerializer _findAndAddDynamic(PropertySerializerMap propertyserializermap, Class class1, SerializerProvider serializerprovider)
    {
        com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap.SerializerAndMapResult serializerandmapresult = propertyserializermap.findAndAddSerializer(class1, serializerprovider, _property);
        if (propertyserializermap != serializerandmapresult.map)
        {
            _dynamicValueSerializers = serializerandmapresult.map;
        }
        return serializerandmapresult.serializer;
    }

    protected Map _orderEntries(Map map)
    {
        if (map instanceof SortedMap)
        {
            return map;
        } else
        {
            return new TreeMap(map);
        }
    }

    public volatile ContainerSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
    {
        return _withValueTypeSerializer(typeserializer);
    }

    public MapSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
    {
        return new MapSerializer(this, typeserializer);
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        JsonMapFormatVisitor jsonmapformatvisitor;
        if (jsonformatvisitorwrapper == null)
        {
            jsonmapformatvisitor = null;
        } else
        {
            jsonmapformatvisitor = jsonformatvisitorwrapper.expectMapFormat(javatype);
        }
        if (jsonmapformatvisitor != null)
        {
            jsonmapformatvisitor.keyFormat(_keySerializer, _keyType);
            JsonSerializer jsonserializer = _valueSerializer;
            if (jsonserializer == null)
            {
                jsonserializer = _findAndAddDynamic(_dynamicValueSerializers, _valueType, jsonformatvisitorwrapper.getProvider());
            }
            jsonmapformatvisitor.valueFormat(jsonserializer, _valueType);
        }
    }

    public JsonSerializer createContextual(SerializerProvider serializerprovider, BeanProperty beanproperty)
    {
        if (beanproperty == null) goto _L2; else goto _L1
_L1:
        com.fasterxml.jackson.databind.introspect.AnnotatedMember annotatedmember = beanproperty.getMember();
        if (annotatedmember == null) goto _L2; else goto _L3
_L3:
        JsonSerializer jsonserializer;
        JsonSerializer jsonserializer1;
        AnnotationIntrospector annotationintrospector1 = serializerprovider.getAnnotationIntrospector();
        Object obj = annotationintrospector1.findKeySerializer(annotatedmember);
        JsonSerializer jsonserializer2;
        JsonSerializer jsonserializer3;
        JsonSerializer jsonserializer4;
        HashSet hashset;
        AnnotationIntrospector annotationintrospector;
        HashSet hashset1;
        String as[];
        int i;
        int j;
        JsonSerializer jsonserializer5;
        Object obj1;
        if (obj != null)
        {
            jsonserializer5 = serializerprovider.serializerInstance(annotatedmember, obj);
        } else
        {
            jsonserializer5 = null;
        }
        obj1 = annotationintrospector1.findContentSerializer(annotatedmember);
        if (obj1 != null)
        {
            JsonSerializer jsonserializer6 = serializerprovider.serializerInstance(annotatedmember, obj1);
            JsonSerializer jsonserializer7 = jsonserializer5;
            jsonserializer = jsonserializer6;
            jsonserializer1 = jsonserializer7;
        } else
        {
            jsonserializer1 = jsonserializer5;
            jsonserializer = null;
        }
_L15:
        if (jsonserializer == null)
        {
            jsonserializer = _valueSerializer;
        }
        jsonserializer2 = findConvertingContentSerializer(serializerprovider, beanproperty, jsonserializer);
        if (jsonserializer2 != null) goto _L5; else goto _L4
_L4:
        if ((!_valueTypeIsStatic || _valueType.getRawClass() == java/lang/Object) && !hasContentTypeAnnotation(serializerprovider, beanproperty)) goto _L7; else goto _L6
_L6:
        jsonserializer3 = serializerprovider.findValueSerializer(_valueType, beanproperty);
_L13:
        if (jsonserializer1 == null)
        {
            jsonserializer4 = _keySerializer;
        } else
        {
            jsonserializer4 = jsonserializer1;
        }
        if (jsonserializer4 != null) goto _L9; else goto _L8
_L8:
        jsonserializer4 = serializerprovider.findKeySerializer(_keyType, beanproperty);
_L12:
        hashset = _ignoredEntries;
        annotationintrospector = serializerprovider.getAnnotationIntrospector();
        if (annotationintrospector == null || beanproperty == null)
        {
            break; /* Loop/switch isn't completed */
        }
        as = annotationintrospector.findPropertiesToIgnore(beanproperty.getMember());
        if (as == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (hashset == null)
        {
            hashset1 = new HashSet();
        } else
        {
            hashset1 = new HashSet(hashset);
        }
        i = as.length;
        for (j = 0; j < i; j++)
        {
            hashset1.add(as[j]);
        }

          goto _L10
_L5:
        if (jsonserializer2 instanceof ContextualSerializer)
        {
            jsonserializer3 = ((ContextualSerializer)jsonserializer2).createContextual(serializerprovider, beanproperty);
            continue; /* Loop/switch isn't completed */
        }
          goto _L7
_L9:
        if (jsonserializer4 instanceof ContextualSerializer)
        {
            jsonserializer4 = ((ContextualSerializer)jsonserializer4).createContextual(serializerprovider, beanproperty);
        }
        if (true) goto _L12; else goto _L11
_L11:
        hashset1 = hashset;
_L10:
        return withResolved(beanproperty, jsonserializer4, jsonserializer3, hashset1);
_L7:
        jsonserializer3 = jsonserializer2;
        if (true) goto _L13; else goto _L2
_L2:
        jsonserializer = null;
        jsonserializer1 = null;
        if (true) goto _L15; else goto _L14
_L14:
    }

    public JsonSerializer getContentSerializer()
    {
        return _valueSerializer;
    }

    public JavaType getContentType()
    {
        return _valueType;
    }

    public JsonSerializer getKeySerializer()
    {
        return _keySerializer;
    }

    public JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        return createSchemaNode("object", true);
    }

    public volatile boolean hasSingleElement(Object obj)
    {
        return hasSingleElement((Map)obj);
    }

    public boolean hasSingleElement(Map map)
    {
        return map.size() == 1;
    }

    public volatile boolean isEmpty(Object obj)
    {
        return isEmpty((Map)obj);
    }

    public boolean isEmpty(Map map)
    {
        return map == null || map.isEmpty();
    }

    public volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serialize((Map)obj, h1, serializerprovider);
    }

    public void serialize(Map map, h h1, SerializerProvider serializerprovider)
    {
        h1.writeStartObject();
        if (!map.isEmpty())
        {
            if (serializerprovider.isEnabled(SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS))
            {
                map = _orderEntries(map);
            }
            if (_valueSerializer != null)
            {
                serializeFieldsUsing(map, h1, serializerprovider, _valueSerializer);
            } else
            {
                serializeFields(map, h1, serializerprovider);
            }
        }
        h1.writeEndObject();
    }

    public void serializeFields(Map map, h h1, SerializerProvider serializerprovider)
    {
        if (_valueTypeSerializer == null) goto _L2; else goto _L1
_L1:
        serializeTypedFields(map, h1, serializerprovider);
_L6:
        return;
_L2:
        JsonSerializer jsonserializer;
        HashSet hashset;
        boolean flag;
        PropertySerializerMap propertyserializermap1;
        Object obj;
        Object obj1;
        jsonserializer = _keySerializer;
        hashset = _ignoredEntries;
        PropertySerializerMap propertyserializermap;
        Iterator iterator;
        java.util.Map.Entry entry;
        if (!serializerprovider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        propertyserializermap = _dynamicValueSerializers;
        iterator = map.entrySet().iterator();
        propertyserializermap1 = propertyserializermap;
_L4:
        if (!iterator.hasNext())
        {
            continue; /* Loop/switch isn't completed */
        }
        entry = (java.util.Map.Entry)iterator.next();
        obj = entry.getValue();
        obj1 = entry.getKey();
        if (obj1 == null)
        {
            serializerprovider.findNullKeySerializer(_keyType, _property).serialize(null, h1, serializerprovider);
        } else
        {
            if (flag && obj == null || hashset != null && hashset.contains(obj1))
            {
                break; /* Loop/switch isn't completed */
            }
            jsonserializer.serialize(obj1, h1, serializerprovider);
        }
        if (obj == null)
        {
            serializerprovider.defaultSerializeNull(h1);
            break; /* Loop/switch isn't completed */
        }
        Class class1 = obj.getClass();
        JsonSerializer jsonserializer1 = propertyserializermap1.serializerFor(class1);
        PropertySerializerMap propertyserializermap2;
        JsonSerializer jsonserializer2;
        Exception exception;
        if (jsonserializer1 == null)
        {
            JsonSerializer jsonserializer3;
            PropertySerializerMap propertyserializermap3;
            JsonSerializer jsonserializer4;
            if (_valueType.hasGenericTypes())
            {
                jsonserializer3 = _findAndAddDynamic(propertyserializermap1, serializerprovider.constructSpecializedType(_valueType, class1), serializerprovider);
            } else
            {
                jsonserializer3 = _findAndAddDynamic(propertyserializermap1, class1, serializerprovider);
            }
            propertyserializermap3 = _dynamicValueSerializers;
            jsonserializer4 = jsonserializer3;
            propertyserializermap2 = propertyserializermap3;
            jsonserializer2 = jsonserializer4;
        } else
        {
            propertyserializermap2 = propertyserializermap1;
            jsonserializer2 = jsonserializer1;
        }
        jsonserializer2.serialize(obj, h1, serializerprovider);
        propertyserializermap1 = propertyserializermap2;
        break; /* Loop/switch isn't completed */
        exception;
        wrapAndThrow(serializerprovider, exception, map, String.valueOf(obj1));
        propertyserializermap1 = propertyserializermap2;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void serializeFieldsUsing(Map map, h h1, SerializerProvider serializerprovider, JsonSerializer jsonserializer)
    {
        JsonSerializer jsonserializer1;
        HashSet hashset;
        TypeSerializer typeserializer;
        boolean flag;
        Object obj;
        Object obj1;
        jsonserializer1 = _keySerializer;
        hashset = _ignoredEntries;
        typeserializer = _valueTypeSerializer;
        Iterator iterator;
        java.util.Map.Entry entry;
        if (!serializerprovider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        iterator = map.entrySet().iterator();
_L2:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        entry = (java.util.Map.Entry)iterator.next();
        obj = entry.getValue();
        obj1 = entry.getKey();
        if (obj1 == null)
        {
            serializerprovider.findNullKeySerializer(_keyType, _property).serialize(null, h1, serializerprovider);
        } else
        {
            if (flag && obj == null || hashset != null && hashset.contains(obj1))
            {
                continue; /* Loop/switch isn't completed */
            }
            jsonserializer1.serialize(obj1, h1, serializerprovider);
        }
        if (obj == null)
        {
            serializerprovider.defaultSerializeNull(h1);
            continue; /* Loop/switch isn't completed */
        }
        if (typeserializer == null)
        {
            try
            {
                jsonserializer.serialize(obj, h1, serializerprovider);
            }
            catch (Exception exception)
            {
                wrapAndThrow(serializerprovider, exception, map, String.valueOf(obj1));
            }
            continue; /* Loop/switch isn't completed */
        }
        jsonserializer.serializeWithType(obj, h1, serializerprovider, typeserializer);
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected void serializeTypedFields(Map map, h h1, SerializerProvider serializerprovider)
    {
        JsonSerializer jsonserializer;
        HashSet hashset;
        boolean flag;
        Class class1;
        JsonSerializer jsonserializer1;
        Object obj;
        Object obj1;
        jsonserializer = _keySerializer;
        hashset = _ignoredEntries;
        Iterator iterator;
        java.util.Map.Entry entry;
        if (!serializerprovider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        iterator = map.entrySet().iterator();
        class1 = null;
        jsonserializer1 = null;
_L2:
        JsonSerializer jsonserializer3;
        Class class3;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        entry = (java.util.Map.Entry)iterator.next();
        obj = entry.getValue();
        obj1 = entry.getKey();
        if (obj1 == null)
        {
            serializerprovider.findNullKeySerializer(_keyType, _property).serialize(null, h1, serializerprovider);
        } else
        {
            if (flag && obj == null || hashset != null && hashset.contains(obj1))
            {
                continue; /* Loop/switch isn't completed */
            }
            jsonserializer.serialize(obj1, h1, serializerprovider);
        }
        if (obj == null)
        {
            serializerprovider.defaultSerializeNull(h1);
            continue; /* Loop/switch isn't completed */
        }
        Class class2 = obj.getClass();
        if (class2 == class1)
        {
            class3 = class1;
            jsonserializer3 = jsonserializer1;
        } else
        {
            JsonSerializer jsonserializer2;
            if (_valueType.hasGenericTypes())
            {
                jsonserializer2 = serializerprovider.findValueSerializer(serializerprovider.constructSpecializedType(_valueType, class2), _property);
            } else
            {
                jsonserializer2 = serializerprovider.findValueSerializer(class2, _property);
            }
            jsonserializer1 = jsonserializer2;
            jsonserializer3 = jsonserializer2;
            class3 = class2;
        }
        jsonserializer1.serializeWithType(obj, h1, serializerprovider, _valueTypeSerializer);
        jsonserializer1 = jsonserializer3;
        class1 = class3;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        wrapAndThrow(serializerprovider, exception, map, String.valueOf(obj1));
        jsonserializer1 = jsonserializer3;
        class1 = class3;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public volatile void serializeWithType(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        serializeWithType((Map)obj, h1, serializerprovider, typeserializer);
    }

    public void serializeWithType(Map map, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        typeserializer.writeTypePrefixForObject(map, h1);
        if (!map.isEmpty())
        {
            if (serializerprovider.isEnabled(SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS))
            {
                map = _orderEntries(map);
            }
            if (_valueSerializer != null)
            {
                serializeFieldsUsing(map, h1, serializerprovider, _valueSerializer);
            } else
            {
                serializeFields(map, h1, serializerprovider);
            }
        }
        typeserializer.writeTypeSuffixForObject(map, h1);
    }

    public MapSerializer withResolved(BeanProperty beanproperty, JsonSerializer jsonserializer, JsonSerializer jsonserializer1, HashSet hashset)
    {
        return new MapSerializer(this, beanproperty, jsonserializer, jsonserializer1, hashset);
    }

}
