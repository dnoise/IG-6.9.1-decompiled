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
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.util.Converter;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdDelegatingSerializer

public abstract class StdSerializer extends JsonSerializer
    implements JsonFormatVisitable, SchemaAware
{

    protected final Class _handledType;

    protected StdSerializer(JavaType javatype)
    {
        _handledType = javatype.getRawClass();
    }

    protected StdSerializer(Class class1)
    {
        _handledType = class1;
    }

    protected StdSerializer(Class class1, boolean flag)
    {
        _handledType = class1;
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        jsonformatvisitorwrapper.expectAnyFormat(javatype);
    }

    protected ObjectNode createObjectNode()
    {
        return JsonNodeFactory.instance.objectNode();
    }

    protected ObjectNode createSchemaNode(String s)
    {
        ObjectNode objectnode = createObjectNode();
        objectnode.put("type", s);
        return objectnode;
    }

    protected ObjectNode createSchemaNode(String s, boolean flag)
    {
        ObjectNode objectnode = createSchemaNode(s);
        if (!flag)
        {
            boolean flag1;
            if (!flag)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            objectnode.put("required", flag1);
        }
        return objectnode;
    }

    protected JsonSerializer findConvertingContentSerializer(SerializerProvider serializerprovider, BeanProperty beanproperty, JsonSerializer jsonserializer)
    {
        AnnotationIntrospector annotationintrospector = serializerprovider.getAnnotationIntrospector();
        if (annotationintrospector != null && beanproperty != null)
        {
            Object obj = annotationintrospector.findSerializationContentConverter(beanproperty.getMember());
            if (obj != null)
            {
                Converter converter = serializerprovider.converterInstance(beanproperty.getMember(), obj);
                JavaType javatype = converter.getOutputType(serializerprovider.getTypeFactory());
                if (jsonserializer == null)
                {
                    jsonserializer = serializerprovider.findValueSerializer(javatype, beanproperty);
                }
                return new StdDelegatingSerializer(converter, javatype, jsonserializer);
            }
        }
        return jsonserializer;
    }

    public JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        return createSchemaNode("string");
    }

    public JsonNode getSchema(SerializerProvider serializerprovider, Type type, boolean flag)
    {
        ObjectNode objectnode = (ObjectNode)getSchema(serializerprovider, type);
        if (!flag)
        {
            boolean flag1;
            if (!flag)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            objectnode.put("required", flag1);
        }
        return objectnode;
    }

    public Class handledType()
    {
        return _handledType;
    }

    protected boolean isDefaultSerializer(JsonSerializer jsonserializer)
    {
        return jsonserializer != null && jsonserializer.getClass().getAnnotation(com/fasterxml/jackson/databind/annotation/JacksonStdImpl) != null;
    }

    public abstract void serialize(Object obj, h h, SerializerProvider serializerprovider);

    public void wrapAndThrow(SerializerProvider serializerprovider, Throwable throwable, Object obj, int i)
    {
        for (; (throwable instanceof InvocationTargetException) && throwable.getCause() != null; throwable = throwable.getCause()) { }
        if (throwable instanceof Error)
        {
            throw (Error)throwable;
        }
        boolean flag;
        if (serializerprovider == null || serializerprovider.isEnabled(SerializationFeature.WRAP_EXCEPTIONS))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (throwable instanceof IOException)
        {
            if (!flag || !(throwable instanceof JsonMappingException))
            {
                throw (IOException)throwable;
            }
        } else
        if (!flag && (throwable instanceof RuntimeException))
        {
            throw (RuntimeException)throwable;
        }
        throw JsonMappingException.wrapWithPath(throwable, obj, i);
    }

    public void wrapAndThrow(SerializerProvider serializerprovider, Throwable throwable, Object obj, String s)
    {
        for (; (throwable instanceof InvocationTargetException) && throwable.getCause() != null; throwable = throwable.getCause()) { }
        if (throwable instanceof Error)
        {
            throw (Error)throwable;
        }
        boolean flag;
        if (serializerprovider == null || serializerprovider.isEnabled(SerializationFeature.WRAP_EXCEPTIONS))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (throwable instanceof IOException)
        {
            if (!flag || !(throwable instanceof JsonMappingException))
            {
                throw (IOException)throwable;
            }
        } else
        if (!flag && (throwable instanceof RuntimeException))
        {
            throw (RuntimeException)throwable;
        }
        throw JsonMappingException.wrapWithPath(throwable, obj, s);
    }
}
