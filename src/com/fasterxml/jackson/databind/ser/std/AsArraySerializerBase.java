// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonschema.JsonSchema;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public abstract class AsArraySerializerBase extends ContainerSerializer
    implements ContextualSerializer
{

    protected PropertySerializerMap _dynamicSerializers;
    protected final JsonSerializer _elementSerializer;
    protected final JavaType _elementType;
    protected final BeanProperty _property;
    protected final boolean _staticTyping;
    protected final TypeSerializer _valueTypeSerializer;

    protected AsArraySerializerBase(AsArraySerializerBase asarrayserializerbase, BeanProperty beanproperty, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        super(asarrayserializerbase);
        _elementType = asarrayserializerbase._elementType;
        _staticTyping = asarrayserializerbase._staticTyping;
        _valueTypeSerializer = typeserializer;
        _property = beanproperty;
        _elementSerializer = jsonserializer;
        _dynamicSerializers = asarrayserializerbase._dynamicSerializers;
    }

    protected AsArraySerializerBase(Class class1, JavaType javatype, boolean flag, TypeSerializer typeserializer, BeanProperty beanproperty, JsonSerializer jsonserializer)
    {
        boolean flag1;
label0:
        {
            super(class1, false);
            _elementType = javatype;
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
        _valueTypeSerializer = typeserializer;
        _property = beanproperty;
        _elementSerializer = jsonserializer;
        _dynamicSerializers = PropertySerializerMap.emptyMap();
    }

    protected final JsonSerializer _findAndAddDynamic(PropertySerializerMap propertyserializermap, JavaType javatype, SerializerProvider serializerprovider)
    {
        com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap.SerializerAndMapResult serializerandmapresult = propertyserializermap.findAndAddSerializer(javatype, serializerprovider, _property);
        if (propertyserializermap != serializerandmapresult.map)
        {
            _dynamicSerializers = serializerandmapresult.map;
        }
        return serializerandmapresult.serializer;
    }

    protected final JsonSerializer _findAndAddDynamic(PropertySerializerMap propertyserializermap, Class class1, SerializerProvider serializerprovider)
    {
        com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap.SerializerAndMapResult serializerandmapresult = propertyserializermap.findAndAddSerializer(class1, serializerprovider, _property);
        if (propertyserializermap != serializerandmapresult.map)
        {
            _dynamicSerializers = serializerandmapresult.map;
        }
        return serializerandmapresult.serializer;
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        JsonArrayFormatVisitor jsonarrayformatvisitor;
        if (jsonformatvisitorwrapper == null)
        {
            jsonarrayformatvisitor = null;
        } else
        {
            jsonarrayformatvisitor = jsonformatvisitorwrapper.expectArrayFormat(javatype);
        }
        if (jsonarrayformatvisitor != null)
        {
            JavaType javatype1 = jsonformatvisitorwrapper.getProvider().getTypeFactory().moreSpecificType(_elementType, javatype.getContentType());
            if (javatype1 == null)
            {
                throw new JsonMappingException("Could not resolve type");
            }
            JsonSerializer jsonserializer = _elementSerializer;
            if (jsonserializer == null)
            {
                jsonserializer = jsonformatvisitorwrapper.getProvider().findValueSerializer(javatype1, _property);
            }
            jsonarrayformatvisitor.itemsFormat(jsonserializer, javatype1);
        }
    }

    public JsonSerializer createContextual(SerializerProvider serializerprovider, BeanProperty beanproperty)
    {
        TypeSerializer typeserializer = _valueTypeSerializer;
        TypeSerializer typeserializer1;
        JsonSerializer jsonserializer;
        JsonSerializer jsonserializer1;
        if (typeserializer != null)
        {
            typeserializer1 = typeserializer.forProperty(beanproperty);
        } else
        {
            typeserializer1 = typeserializer;
        }
        jsonserializer = null;
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
            jsonserializer = _elementSerializer;
        }
        jsonserializer1 = findConvertingContentSerializer(serializerprovider, beanproperty, jsonserializer);
        if (jsonserializer1 != null) goto _L2; else goto _L1
_L1:
        if (jsonserializer1 == null && _elementType != null && (_staticTyping || hasContentTypeAnnotation(serializerprovider, beanproperty)))
        {
            jsonserializer1 = serializerprovider.findValueSerializer(_elementType, beanproperty);
        }
_L4:
        if (jsonserializer1 != _elementSerializer || beanproperty != _property || _valueTypeSerializer != typeserializer1)
        {
            this = withResolved(beanproperty, typeserializer1, jsonserializer1);
        }
        return this;
_L2:
        if (jsonserializer1 instanceof ContextualSerializer)
        {
            jsonserializer1 = ((ContextualSerializer)jsonserializer1).createContextual(serializerprovider, beanproperty);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public JsonSerializer getContentSerializer()
    {
        return _elementSerializer;
    }

    public JavaType getContentType()
    {
        return _elementType;
    }

    public JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        ObjectNode objectnode = createSchemaNode("array", true);
        JavaType javatype;
        JsonNode jsonnode;
        JsonSerializer jsonserializer;
        if (type != null)
        {
            javatype = serializerprovider.constructType(type).getContentType();
            if (javatype == null && (type instanceof ParameterizedType))
            {
                Type atype[] = ((ParameterizedType)type).getActualTypeArguments();
                if (atype.length == 1)
                {
                    javatype = serializerprovider.constructType(atype[0]);
                }
            }
        } else
        {
            javatype = null;
        }
        if (javatype == null && _elementType != null)
        {
            javatype = _elementType;
        }
        if (javatype == null) goto _L2; else goto _L1
_L1:
        if (javatype.getRawClass() == java/lang/Object) goto _L4; else goto _L3
_L3:
        jsonserializer = serializerprovider.findValueSerializer(javatype, _property);
        if (!(jsonserializer instanceof SchemaAware)) goto _L4; else goto _L5
_L5:
        jsonnode = ((SchemaAware)jsonserializer).getSchema(serializerprovider, null);
_L7:
        if (jsonnode == null)
        {
            jsonnode = JsonSchema.getDefaultSchemaNode();
        }
        objectnode.put("items", jsonnode);
_L2:
        return objectnode;
_L4:
        jsonnode = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public final void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        if (serializerprovider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) && hasSingleElement(obj))
        {
            serializeContents(obj, h1, serializerprovider);
            return;
        } else
        {
            h1.writeStartArray();
            serializeContents(obj, h1, serializerprovider);
            h1.writeEndArray();
            return;
        }
    }

    protected abstract void serializeContents(Object obj, h h1, SerializerProvider serializerprovider);

    public final void serializeWithType(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        typeserializer.writeTypePrefixForArray(obj, h1);
        serializeContents(obj, h1, serializerprovider);
        typeserializer.writeTypeSuffixForArray(obj, h1);
    }

    public abstract AsArraySerializerBase withResolved(BeanProperty beanproperty, TypeSerializer typeserializer, JsonSerializer jsonserializer);
}
