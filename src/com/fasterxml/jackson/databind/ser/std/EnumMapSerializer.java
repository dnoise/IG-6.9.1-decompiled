// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.c.l;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.jsonschema.JsonSchema;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.util.EnumValues;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            EnumSerializer, StdSerializer

public class EnumMapSerializer extends ContainerSerializer
    implements ContextualSerializer
{

    protected final EnumValues _keyEnums;
    protected final BeanProperty _property;
    protected final boolean _staticTyping;
    protected final JsonSerializer _valueSerializer;
    protected final JavaType _valueType;
    protected final TypeSerializer _valueTypeSerializer;

    public EnumMapSerializer(JavaType javatype, boolean flag, EnumValues enumvalues, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        boolean flag1;
label0:
        {
            super(java/util/EnumMap, false);
            _property = null;
            if (!flag)
            {
                flag1 = false;
                if (javatype == null)
                {
                    break label0;
                }
                boolean flag2 = javatype.isFinal();
                flag1 = false;
                if (!flag2)
                {
                    break label0;
                }
            }
            flag1 = true;
        }
        _staticTyping = flag1;
        _valueType = javatype;
        _keyEnums = enumvalues;
        _valueTypeSerializer = typeserializer;
        _valueSerializer = jsonserializer;
    }

    public EnumMapSerializer(EnumMapSerializer enummapserializer, BeanProperty beanproperty, JsonSerializer jsonserializer)
    {
        super(enummapserializer);
        _property = beanproperty;
        _staticTyping = enummapserializer._staticTyping;
        _valueType = enummapserializer._valueType;
        _keyEnums = enummapserializer._keyEnums;
        _valueTypeSerializer = enummapserializer._valueTypeSerializer;
        _valueSerializer = jsonserializer;
    }

    public volatile ContainerSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
    {
        return _withValueTypeSerializer(typeserializer);
    }

    public EnumMapSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
    {
        return new EnumMapSerializer(_valueType, _staticTyping, _keyEnums, typeserializer, _valueSerializer);
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        if (jsonformatvisitorwrapper != null) goto _L2; else goto _L1
_L1:
        JsonObjectFormatVisitor jsonobjectformatvisitor;
        return;
_L2:
        if ((jsonobjectformatvisitor = jsonformatvisitorwrapper.expectObjectFormat(javatype)) != null)
        {
            JavaType javatype1 = javatype.containedType(1);
            JsonSerializer jsonserializer = _valueSerializer;
            if (jsonserializer == null && javatype1 != null)
            {
                jsonserializer = jsonformatvisitorwrapper.getProvider().findValueSerializer(javatype1, _property);
            }
            JavaType javatype2;
            EnumValues enumvalues;
            Iterator iterator;
            if (javatype1 == null)
            {
                javatype2 = jsonformatvisitorwrapper.getProvider().constructType(java/lang/Object);
            } else
            {
                javatype2 = javatype1;
            }
            enumvalues = _keyEnums;
            if (enumvalues == null)
            {
                JavaType javatype3 = javatype.containedType(0);
                if (javatype3 == null)
                {
                    throw new IllegalStateException((new StringBuilder("Can not resolve Enum type of EnumMap: ")).append(javatype).toString());
                }
                JsonSerializer jsonserializer2;
                if (javatype3 == null)
                {
                    jsonserializer2 = null;
                } else
                {
                    jsonserializer2 = jsonformatvisitorwrapper.getProvider().findValueSerializer(javatype3, _property);
                }
                if (!(jsonserializer2 instanceof EnumSerializer))
                {
                    throw new IllegalStateException((new StringBuilder("Can not resolve Enum type of EnumMap: ")).append(javatype).toString());
                }
                enumvalues = ((EnumSerializer)jsonserializer2).getEnumValues();
            }
            iterator = enumvalues.internalMap().entrySet().iterator();
            while (iterator.hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                String s = ((l)entry.getValue()).a();
                JsonSerializer jsonserializer1;
                if (jsonserializer == null)
                {
                    jsonserializer1 = jsonformatvisitorwrapper.getProvider().findValueSerializer(entry.getKey().getClass(), _property);
                } else
                {
                    jsonserializer1 = jsonserializer;
                }
                jsonobjectformatvisitor.property(s, jsonserializer1, javatype2);
                jsonserializer = jsonserializer1;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public JsonSerializer createContextual(SerializerProvider serializerprovider, BeanProperty beanproperty)
    {
        JsonSerializer jsonserializer1;
        JsonSerializer jsonserializer = null;
        if (beanproperty != null)
        {
            com.fasterxml.jackson.databind.introspect.AnnotatedMember annotatedmember = beanproperty.getMember();
            jsonserializer = null;
            if (annotatedmember != null)
            {
                Object obj = serializerprovider.getAnnotationIntrospector().findContentSerializer(annotatedmember);
                jsonserializer = null;
                if (obj != null)
                {
                    jsonserializer = serializerprovider.serializerInstance(annotatedmember, obj);
                }
            }
        }
        if (jsonserializer == null)
        {
            jsonserializer = _valueSerializer;
        }
        jsonserializer1 = findConvertingContentSerializer(serializerprovider, beanproperty, jsonserializer);
        if (jsonserializer1 != null) goto _L2; else goto _L1
_L1:
        if (!_staticTyping) goto _L4; else goto _L3
_L3:
        this = withValueSerializer(beanproperty, serializerprovider.findValueSerializer(_valueType, beanproperty));
_L6:
        return this;
_L2:
        if (_valueSerializer instanceof ContextualSerializer)
        {
            jsonserializer1 = ((ContextualSerializer)jsonserializer1).createContextual(serializerprovider, beanproperty);
        }
_L4:
        if (jsonserializer1 != _valueSerializer)
        {
            return withValueSerializer(beanproperty, jsonserializer1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public JsonSerializer getContentSerializer()
    {
        return _valueSerializer;
    }

    public JavaType getContentType()
    {
        return _valueType;
    }

    public JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        ObjectNode objectnode = createSchemaNode("object", true);
        if (type instanceof ParameterizedType)
        {
            Type atype[] = ((ParameterizedType)type).getActualTypeArguments();
            if (atype.length == 2)
            {
                JavaType javatype = serializerprovider.constructType(atype[0]);
                JavaType javatype1 = serializerprovider.constructType(atype[1]);
                ObjectNode objectnode1 = JsonNodeFactory.instance.objectNode();
                Enum aenum[] = (Enum[])javatype.getRawClass().getEnumConstants();
                int i = aenum.length;
                int j = 0;
                while (j < i) 
                {
                    Enum enum = aenum[j];
                    JsonSerializer jsonserializer = serializerprovider.findValueSerializer(javatype1.getRawClass(), _property);
                    JsonNode jsonnode;
                    if (jsonserializer instanceof SchemaAware)
                    {
                        jsonnode = ((SchemaAware)jsonserializer).getSchema(serializerprovider, null);
                    } else
                    {
                        jsonnode = JsonSchema.getDefaultSchemaNode();
                    }
                    objectnode1.put(serializerprovider.getConfig().getAnnotationIntrospector().findEnumValue(enum), jsonnode);
                    j++;
                }
                objectnode.put("properties", objectnode1);
            }
        }
        return objectnode;
    }

    public volatile boolean hasSingleElement(Object obj)
    {
        return hasSingleElement((EnumMap)obj);
    }

    public boolean hasSingleElement(EnumMap enummap)
    {
        return enummap.size() == 1;
    }

    public volatile boolean isEmpty(Object obj)
    {
        return isEmpty((EnumMap)obj);
    }

    public boolean isEmpty(EnumMap enummap)
    {
        return enummap == null || enummap.isEmpty();
    }

    public volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serialize((EnumMap)obj, h1, serializerprovider);
    }

    public void serialize(EnumMap enummap, h h1, SerializerProvider serializerprovider)
    {
        h1.writeStartObject();
        if (!enummap.isEmpty())
        {
            serializeContents(enummap, h1, serializerprovider);
        }
        h1.writeEndObject();
    }

    protected void serializeContents(EnumMap enummap, h h1, SerializerProvider serializerprovider)
    {
        if (_valueSerializer == null) goto _L2; else goto _L1
_L1:
        serializeContentsUsing(enummap, h1, serializerprovider, _valueSerializer);
_L6:
        return;
_L2:
        TypeSerializer typeserializer;
        Class class1;
        JsonSerializer jsonserializer;
        java.util.Map.Entry entry;
        Object obj;
        EnumValues enumvalues = _keyEnums;
        boolean flag;
        Iterator iterator;
        EnumValues enumvalues1;
        Enum enum;
        if (!serializerprovider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        typeserializer = _valueTypeSerializer;
        iterator = enummap.entrySet().iterator();
        class1 = null;
        jsonserializer = null;
        enumvalues1 = enumvalues;
_L4:
        Class class2;
        JsonSerializer jsonserializer1;
        do
        {
            if (!iterator.hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            entry = (java.util.Map.Entry)iterator.next();
            obj = entry.getValue();
        } while (flag && obj == null);
        enum = (Enum)entry.getKey();
        if (enumvalues1 == null)
        {
            enumvalues1 = ((EnumSerializer)(StdSerializer)serializerprovider.findValueSerializer(enum.getDeclaringClass(), _property)).getEnumValues();
        }
        h1.writeFieldName(enumvalues1.serializedValueFor(enum));
        if (obj == null)
        {
            serializerprovider.defaultSerializeNull(h1);
            break; /* Loop/switch isn't completed */
        }
        class2 = obj.getClass();
        if (class2 == class1)
        {
            class2 = class1;
            jsonserializer1 = jsonserializer;
        } else
        {
            jsonserializer = serializerprovider.findValueSerializer(class2, _property);
            jsonserializer1 = jsonserializer;
        }
        if (typeserializer != null)
        {
            break MISSING_BLOCK_LABEL_243;
        }
        jsonserializer.serialize(obj, h1, serializerprovider);
        jsonserializer = jsonserializer1;
        class1 = class2;
        break; /* Loop/switch isn't completed */
        jsonserializer.serializeWithType(obj, h1, serializerprovider, typeserializer);
        jsonserializer = jsonserializer1;
        class1 = class2;
        break; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        wrapAndThrow(serializerprovider, exception, enummap, ((Enum)entry.getKey()).name());
        jsonserializer = jsonserializer1;
        class1 = class2;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void serializeContentsUsing(EnumMap enummap, h h1, SerializerProvider serializerprovider, JsonSerializer jsonserializer)
    {
        TypeSerializer typeserializer;
        java.util.Map.Entry entry;
        Object obj;
        EnumValues enumvalues = _keyEnums;
        boolean flag;
        Iterator iterator;
        EnumValues enumvalues1;
        Enum enum;
        if (!serializerprovider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        typeserializer = _valueTypeSerializer;
        iterator = enummap.entrySet().iterator();
        enumvalues1 = enumvalues;
_L2:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        entry = (java.util.Map.Entry)iterator.next();
        obj = entry.getValue();
        if (flag && obj == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        enum = (Enum)entry.getKey();
        if (enumvalues1 == null)
        {
            enumvalues1 = ((EnumSerializer)(StdSerializer)serializerprovider.findValueSerializer(enum.getDeclaringClass(), _property)).getEnumValues();
        }
        h1.writeFieldName(enumvalues1.serializedValueFor(enum));
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
                wrapAndThrow(serializerprovider, exception, enummap, ((Enum)entry.getKey()).name());
            }
            continue; /* Loop/switch isn't completed */
        }
        jsonserializer.serializeWithType(obj, h1, serializerprovider, typeserializer);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public volatile void serializeWithType(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        serializeWithType((EnumMap)obj, h1, serializerprovider, typeserializer);
    }

    public void serializeWithType(EnumMap enummap, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        typeserializer.writeTypePrefixForObject(enummap, h1);
        if (!enummap.isEmpty())
        {
            serializeContents(enummap, h1, serializerprovider);
        }
        typeserializer.writeTypeSuffixForObject(enummap, h1);
    }

    public EnumMapSerializer withValueSerializer(BeanProperty beanproperty, JsonSerializer jsonserializer)
    {
        if (_property == beanproperty && jsonserializer == _valueSerializer)
        {
            return this;
        } else
        {
            return new EnumMapSerializer(this, beanproperty, jsonserializer);
        }
    }
}
