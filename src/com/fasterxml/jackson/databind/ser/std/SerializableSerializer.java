// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonschema.JsonSerializableSchema;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicReference;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdSerializer

public class SerializableSerializer extends StdSerializer
{

    private static final AtomicReference _mapperReference = new AtomicReference();
    public static final SerializableSerializer instance = new SerializableSerializer();

    protected SerializableSerializer()
    {
        super(com/fasterxml/jackson/databind/JsonSerializable);
    }

    private static final ObjectMapper _getObjectMapper()
    {
        com/fasterxml/jackson/databind/ser/std/SerializableSerializer;
        JVM INSTR monitorenter ;
        ObjectMapper objectmapper = (ObjectMapper)_mapperReference.get();
        if (objectmapper != null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        objectmapper = new ObjectMapper();
        _mapperReference.set(objectmapper);
        com/fasterxml/jackson/databind/ser/std/SerializableSerializer;
        JVM INSTR monitorexit ;
        return objectmapper;
        Exception exception;
        exception;
        throw exception;
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        jsonformatvisitorwrapper.expectAnyFormat(javatype);
    }

    public JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        ObjectNode objectnode;
        String s;
        objectnode = createObjectNode();
        s = "any";
        if (type == null) goto _L2; else goto _L1
_L1:
        Class class1 = TypeFactory.rawClass(type);
        if (!class1.isAnnotationPresent(com/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema)) goto _L2; else goto _L3
_L3:
        String s1;
        String s2;
        JsonSerializableSchema jsonserializableschema = (JsonSerializableSchema)class1.getAnnotation(com/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema);
        String s3 = jsonserializableschema.schemaType();
        IOException ioexception;
        IOException ioexception1;
        if (!"##irrelevant".equals(jsonserializableschema.schemaObjectPropertiesDefinition()))
        {
            s1 = jsonserializableschema.schemaObjectPropertiesDefinition();
        } else
        {
            s1 = null;
        }
        if (!"##irrelevant".equals(jsonserializableschema.schemaItemDefinition()))
        {
            s2 = jsonserializableschema.schemaItemDefinition();
            s = s3;
        } else
        {
            s = s3;
            s2 = null;
        }
_L5:
        objectnode.put("type", s);
        if (s1 != null)
        {
            try
            {
                objectnode.put("properties", _getObjectMapper().readTree(s1));
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception1)
            {
                throw new JsonMappingException("Failed to parse @JsonSerializableSchema.schemaObjectPropertiesDefinition value");
            }
        }
        if (s2 != null)
        {
            try
            {
                objectnode.put("items", _getObjectMapper().readTree(s2));
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception)
            {
                throw new JsonMappingException("Failed to parse @JsonSerializableSchema.schemaItemDefinition value");
            }
        }
        return objectnode;
_L2:
        s1 = null;
        s2 = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void serialize(JsonSerializable jsonserializable, h h, SerializerProvider serializerprovider)
    {
        jsonserializable.serialize(h, serializerprovider);
    }

    public volatile void serialize(Object obj, h h, SerializerProvider serializerprovider)
    {
        serialize((JsonSerializable)obj, h, serializerprovider);
    }

    public final void serializeWithType(JsonSerializable jsonserializable, h h, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        jsonserializable.serializeWithType(h, serializerprovider, typeserializer);
    }

    public volatile void serializeWithType(Object obj, h h, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        serializeWithType((JsonSerializable)obj, h, serializerprovider, typeserializer);
    }

}
