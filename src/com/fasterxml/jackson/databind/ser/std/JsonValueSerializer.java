// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonschema.JsonSchema;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdSerializer

public class JsonValueSerializer extends StdSerializer
    implements JsonFormatVisitable, SchemaAware, ContextualSerializer
{

    protected final Method _accessorMethod;
    protected final boolean _forceTypeInformation;
    protected final BeanProperty _property;
    protected final JsonSerializer _valueSerializer;

    public JsonValueSerializer(JsonValueSerializer jsonvalueserializer, BeanProperty beanproperty, JsonSerializer jsonserializer, boolean flag)
    {
        super(_notNullClass(jsonvalueserializer.handledType()));
        _accessorMethod = jsonvalueserializer._accessorMethod;
        _valueSerializer = jsonserializer;
        _property = beanproperty;
        _forceTypeInformation = flag;
    }

    public JsonValueSerializer(Method method, JsonSerializer jsonserializer)
    {
        super(java/lang/Object);
        _accessorMethod = method;
        _valueSerializer = jsonserializer;
        _property = null;
        _forceTypeInformation = true;
    }

    private static final Class _notNullClass(Class class1)
    {
        if (class1 == null)
        {
            class1 = java/lang/Object;
        }
        return class1;
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        JsonSerializer jsonserializer = _valueSerializer;
        if (jsonserializer == null)
        {
            if (javatype == null)
            {
                if (_property != null)
                {
                    javatype = _property.getType();
                }
                if (javatype == null)
                {
                    javatype = jsonformatvisitorwrapper.getProvider().constructType(_accessorMethod.getReturnType());
                }
            }
            jsonserializer = jsonformatvisitorwrapper.getProvider().findTypedValueSerializer(javatype, false, _property);
            if (jsonserializer == null)
            {
                jsonformatvisitorwrapper.expectAnyFormat(javatype);
                return;
            }
        }
        jsonserializer.acceptJsonFormatVisitor(jsonformatvisitorwrapper, null);
    }

    public JsonSerializer createContextual(SerializerProvider serializerprovider, BeanProperty beanproperty)
    {
        JsonSerializer jsonserializer = _valueSerializer;
        if (jsonserializer == null)
        {
            if (serializerprovider.isEnabled(MapperFeature.USE_STATIC_TYPING) || Modifier.isFinal(_accessorMethod.getReturnType().getModifiers()))
            {
                JavaType javatype = serializerprovider.constructType(_accessorMethod.getGenericReturnType());
                JsonSerializer jsonserializer1 = serializerprovider.findTypedValueSerializer(javatype, false, _property);
                this = withResolved(beanproperty, jsonserializer1, isNaturalTypeWithStdHandling(javatype.getRawClass(), jsonserializer1));
            }
        } else
        if (jsonserializer instanceof ContextualSerializer)
        {
            return withResolved(beanproperty, ((ContextualSerializer)jsonserializer).createContextual(serializerprovider, beanproperty), _forceTypeInformation);
        }
        return this;
    }

    public JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        if (_valueSerializer instanceof SchemaAware)
        {
            return ((SchemaAware)_valueSerializer).getSchema(serializerprovider, null);
        } else
        {
            return JsonSchema.getDefaultSchemaNode();
        }
    }

    protected boolean isNaturalTypeWithStdHandling(Class class1, JsonSerializer jsonserializer)
    {
        if (class1.isPrimitive() ? class1 != Integer.TYPE && class1 != Boolean.TYPE && class1 != Double.TYPE : class1 != java/lang/String && class1 != java/lang/Integer && class1 != java/lang/Boolean && class1 != java/lang/Double)
        {
            return false;
        } else
        {
            return isDefaultSerializer(jsonserializer);
        }
    }

    public void serialize(Object obj, h h, SerializerProvider serializerprovider)
    {
        Object obj2 = _accessorMethod.invoke(obj, new Object[0]);
        if (obj2 == null)
        {
            Object obj1;
            JsonSerializer jsonserializer;
            try
            {
                serializerprovider.defaultSerializeNull(h);
                return;
            }
            catch (IOException ioexception)
            {
                throw ioexception;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj1) { }
            break MISSING_BLOCK_LABEL_67;
        }
        jsonserializer = _valueSerializer;
        if (jsonserializer != null)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        jsonserializer = serializerprovider.findTypedValueSerializer(obj2.getClass(), true, _property);
        jsonserializer.serialize(obj2, h, serializerprovider);
        return;
        for (; (obj1 instanceof InvocationTargetException) && ((Throwable) (obj1)).getCause() != null; obj1 = ((Throwable) (obj1)).getCause()) { }
        if (obj1 instanceof Error)
        {
            throw (Error)obj1;
        } else
        {
            throw JsonMappingException.wrapWithPath(((Throwable) (obj1)), obj, (new StringBuilder()).append(_accessorMethod.getName()).append("()").toString());
        }
    }

    public void serializeWithType(Object obj, h h, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        Object obj2;
        JsonSerializer jsonserializer;
        try
        {
            obj2 = _accessorMethod.invoke(obj, new Object[0]);
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
                throw JsonMappingException.wrapWithPath(((Throwable) (obj1)), obj, (new StringBuilder()).append(_accessorMethod.getName()).append("()").toString());
            }
        }
        if (obj2 != null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        serializerprovider.defaultSerializeNull(h);
        return;
        jsonserializer = _valueSerializer;
        if (jsonserializer != null) goto _L2; else goto _L1
_L1:
        jsonserializer = serializerprovider.findValueSerializer(obj2.getClass(), _property);
_L4:
        jsonserializer.serializeWithType(obj2, h, serializerprovider, typeserializer);
        return;
_L2:
        if (!_forceTypeInformation) goto _L4; else goto _L3
_L3:
        typeserializer.writeTypePrefixForScalar(obj, h);
        jsonserializer.serialize(obj2, h, serializerprovider);
        typeserializer.writeTypeSuffixForScalar(obj, h);
        return;
    }

    public String toString()
    {
        return (new StringBuilder("(@JsonValue serializer for method ")).append(_accessorMethod.getDeclaringClass()).append("#").append(_accessorMethod.getName()).append(")").toString();
    }

    public JsonValueSerializer withResolved(BeanProperty beanproperty, JsonSerializer jsonserializer, boolean flag)
    {
        if (_property == beanproperty && _valueSerializer == jsonserializer && flag == _forceTypeInformation)
        {
            return this;
        } else
        {
            return new JsonValueSerializer(this, beanproperty, jsonserializer, flag);
        }
    }
}
