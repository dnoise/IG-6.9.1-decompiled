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
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            ArraySerializerBase

public class ObjectArraySerializer extends ArraySerializerBase
    implements ContextualSerializer
{

    protected PropertySerializerMap _dynamicSerializers;
    protected JsonSerializer _elementSerializer;
    protected final JavaType _elementType;
    protected final boolean _staticTyping;
    protected final TypeSerializer _valueTypeSerializer;

    public ObjectArraySerializer(JavaType javatype, boolean flag, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        super([Ljava/lang/Object;, null);
        _elementType = javatype;
        _staticTyping = flag;
        _valueTypeSerializer = typeserializer;
        _dynamicSerializers = PropertySerializerMap.emptyMap();
        _elementSerializer = jsonserializer;
    }

    public ObjectArraySerializer(ObjectArraySerializer objectarrayserializer, BeanProperty beanproperty, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        super(objectarrayserializer, beanproperty);
        _elementType = objectarrayserializer._elementType;
        _valueTypeSerializer = typeserializer;
        _staticTyping = objectarrayserializer._staticTyping;
        _dynamicSerializers = objectarrayserializer._dynamicSerializers;
        _elementSerializer = jsonserializer;
    }

    public ObjectArraySerializer(ObjectArraySerializer objectarrayserializer, TypeSerializer typeserializer)
    {
        super(objectarrayserializer);
        _elementType = objectarrayserializer._elementType;
        _valueTypeSerializer = typeserializer;
        _staticTyping = objectarrayserializer._staticTyping;
        _dynamicSerializers = objectarrayserializer._dynamicSerializers;
        _elementSerializer = objectarrayserializer._elementSerializer;
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

    public ContainerSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
    {
        return new ObjectArraySerializer(_elementType, _staticTyping, typeserializer, _elementSerializer);
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        JsonArrayFormatVisitor jsonarrayformatvisitor = jsonformatvisitorwrapper.expectArrayFormat(javatype);
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
        if (_elementType != null && (_staticTyping || hasContentTypeAnnotation(serializerprovider, beanproperty)))
        {
            jsonserializer1 = serializerprovider.findValueSerializer(_elementType, beanproperty);
        }
_L4:
        return withResolved(beanproperty, typeserializer1, jsonserializer1);
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
        ObjectNode objectnode;
        Class class1;
label0:
        {
            objectnode = createSchemaNode("array", true);
            if (type != null)
            {
                JavaType javatype = serializerprovider.constructType(type);
                if (javatype.isArrayType())
                {
                    class1 = ((ArrayType)javatype).getContentType().getRawClass();
                    if (class1 != java/lang/Object)
                    {
                        break label0;
                    }
                    objectnode.put("items", JsonSchema.getDefaultSchemaNode());
                }
            }
            return objectnode;
        }
        JsonSerializer jsonserializer = serializerprovider.findValueSerializer(class1, _property);
        JsonNode jsonnode;
        if (jsonserializer instanceof SchemaAware)
        {
            jsonnode = ((SchemaAware)jsonserializer).getSchema(serializerprovider, null);
        } else
        {
            jsonnode = JsonSchema.getDefaultSchemaNode();
        }
        objectnode.put("items", jsonnode);
        return objectnode;
    }

    public volatile boolean hasSingleElement(Object obj)
    {
        return hasSingleElement((Object[])obj);
    }

    public boolean hasSingleElement(Object aobj[])
    {
        return aobj.length == 1;
    }

    public volatile boolean isEmpty(Object obj)
    {
        return isEmpty((Object[])obj);
    }

    public boolean isEmpty(Object aobj[])
    {
        return aobj == null || aobj.length == 0;
    }

    public volatile void serializeContents(Object obj, h h, SerializerProvider serializerprovider)
    {
        serializeContents((Object[])obj, h, serializerprovider);
    }

    public void serializeContents(Object aobj[], h h, SerializerProvider serializerprovider)
    {
        int i = aobj.length;
        if (i != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j;
        Object obj1;
        if (_elementSerializer != null)
        {
            serializeContentsUsing(aobj, h, serializerprovider, _elementSerializer);
            return;
        }
        if (_valueTypeSerializer != null)
        {
            serializeTypedContents(aobj, h, serializerprovider);
            return;
        }
        j = 0;
        Object obj = null;
        PropertySerializerMap propertyserializermap;
        Class class1;
        JsonSerializer jsonserializer;
        JsonSerializer jsonserializer1;
        try
        {
            propertyserializermap = _dynamicSerializers;
        }
        catch (IOException ioexception)
        {
            throw ioexception;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1)
        {
            for (; (obj1 instanceof InvocationTargetException) && ((Throwable) (obj1)).getCause() != null; obj1 = ((Throwable) (obj1)).getCause()) { }
            if (obj1 instanceof Error)
            {
                throw (Error)obj1;
            } else
            {
                throw JsonMappingException.wrapWithPath(((Throwable) (obj1)), obj, j);
            }
        }
_L9:
        if (j >= i)
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = aobj[j];
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        serializerprovider.defaultSerializeNull(h);
        break MISSING_BLOCK_LABEL_222;
        class1 = obj.getClass();
        jsonserializer = propertyserializermap.serializerFor(class1);
        if (jsonserializer != null) goto _L4; else goto _L3
_L3:
        if (!_elementType.hasGenericTypes()) goto _L6; else goto _L5
_L5:
        jsonserializer = _findAndAddDynamic(propertyserializermap, serializerprovider.constructSpecializedType(_elementType, class1), serializerprovider);
_L4:
        jsonserializer.serialize(obj, h, serializerprovider);
        break MISSING_BLOCK_LABEL_222;
_L6:
        jsonserializer1 = _findAndAddDynamic(propertyserializermap, class1, serializerprovider);
        jsonserializer = jsonserializer1;
        if (true) goto _L4; else goto _L7
_L7:
        j++;
        if (true) goto _L9; else goto _L8
_L8:
        if (true) goto _L1; else goto _L10
_L10:
    }

    public void serializeContentsUsing(Object aobj[], h h, SerializerProvider serializerprovider, JsonSerializer jsonserializer)
    {
        int i;
        TypeSerializer typeserializer;
        Object obj;
        int j;
        i = aobj.length;
        typeserializer = _valueTypeSerializer;
        obj = null;
        j = 0;
_L2:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        try
        {
            obj = aobj[j];
        }
        catch (IOException ioexception)
        {
            throw ioexception;
        }
        catch (Object obj1)
        {
            for (; (obj1 instanceof InvocationTargetException) && ((Throwable) (obj1)).getCause() != null; obj1 = ((Throwable) (obj1)).getCause()) { }
            if (obj1 instanceof Error)
            {
                throw (Error)obj1;
            } else
            {
                throw JsonMappingException.wrapWithPath(((Throwable) (obj1)), obj, j);
            }
        }
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        serializerprovider.defaultSerializeNull(h);
        break MISSING_BLOCK_LABEL_131;
        if (typeserializer != null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        jsonserializer.serialize(obj, h, serializerprovider);
        break MISSING_BLOCK_LABEL_131;
        jsonserializer.serializeWithType(obj, h, serializerprovider, typeserializer);
        break MISSING_BLOCK_LABEL_131;
        return;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void serializeTypedContents(Object aobj[], h h, SerializerProvider serializerprovider)
    {
        int j;
        Object obj1;
        int i = aobj.length;
        TypeSerializer typeserializer = _valueTypeSerializer;
        j = 0;
        Object obj = null;
        PropertySerializerMap propertyserializermap;
        Class class1;
        JsonSerializer jsonserializer;
        try
        {
            propertyserializermap = _dynamicSerializers;
        }
        catch (IOException ioexception)
        {
            throw ioexception;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1)
        {
            for (; (obj1 instanceof InvocationTargetException) && ((Throwable) (obj1)).getCause() != null; obj1 = ((Throwable) (obj1)).getCause()) { }
            if (obj1 instanceof Error)
            {
                throw (Error)obj1;
            } else
            {
                throw JsonMappingException.wrapWithPath(((Throwable) (obj1)), obj, j);
            }
        }
_L2:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_149;
        }
        obj = aobj[j];
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        serializerprovider.defaultSerializeNull(h);
        break MISSING_BLOCK_LABEL_155;
        class1 = obj.getClass();
        jsonserializer = propertyserializermap.serializerFor(class1);
        if (jsonserializer != null)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        jsonserializer = _findAndAddDynamic(propertyserializermap, class1, serializerprovider);
        jsonserializer.serializeWithType(obj, h, serializerprovider, typeserializer);
        break MISSING_BLOCK_LABEL_155;
        return;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public ObjectArraySerializer withResolved(BeanProperty beanproperty, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        if (_property == beanproperty && jsonserializer == _elementSerializer && _valueTypeSerializer == typeserializer)
        {
            return this;
        } else
        {
            return new ObjectArraySerializer(this, beanproperty, typeserializer, jsonserializer);
        }
    }
}
