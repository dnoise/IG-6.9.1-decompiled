// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.NoClass;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonschema.JsonSchema;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.impl.WritableObjectId;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.IdentityHashMap;

// Referenced classes of package com.fasterxml.jackson.databind.ser:
//            SerializerCache, SerializerFactory

public abstract class DefaultSerializerProvider extends SerializerProvider
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    protected transient ArrayList _objectIdGenerators;
    protected transient IdentityHashMap _seenObjectIds;

    protected DefaultSerializerProvider()
    {
    }

    protected DefaultSerializerProvider(SerializerProvider serializerprovider, SerializationConfig serializationconfig, SerializerFactory serializerfactory)
    {
        super(serializerprovider, serializationconfig, serializerfactory);
    }

    public void acceptJsonFormatVisitor(JavaType javatype, JsonFormatVisitorWrapper jsonformatvisitorwrapper)
    {
        if (javatype == null)
        {
            throw new IllegalArgumentException("A class must be provided");
        } else
        {
            jsonformatvisitorwrapper.setProvider(this);
            findValueSerializer(javatype, null).acceptJsonFormatVisitor(jsonformatvisitorwrapper, javatype);
            return;
        }
    }

    public int cachedSerializersCount()
    {
        return _serializerCache.size();
    }

    public abstract DefaultSerializerProvider createInstance(SerializationConfig serializationconfig, SerializerFactory serializerfactory);

    public WritableObjectId findObjectId(Object obj, ObjectIdGenerator objectidgenerator)
    {
        ObjectIdGenerator objectidgenerator1;
        if (_seenObjectIds == null)
        {
            _seenObjectIds = new IdentityHashMap();
        } else
        {
            WritableObjectId writableobjectid = (WritableObjectId)_seenObjectIds.get(obj);
            if (writableobjectid != null)
            {
                return writableobjectid;
            }
        }
        if (_objectIdGenerators != null) goto _L2; else goto _L1
_L1:
        _objectIdGenerators = new ArrayList(8);
        objectidgenerator1 = null;
_L4:
        if (objectidgenerator1 == null)
        {
            objectidgenerator1 = objectidgenerator.newForSerialization(this);
            _objectIdGenerators.add(objectidgenerator1);
        }
        WritableObjectId writableobjectid1 = new WritableObjectId(objectidgenerator1);
        _seenObjectIds.put(obj, writableobjectid1);
        return writableobjectid1;
_L2:
        int i = _objectIdGenerators.size();
        for (int j = 0; j < i; j++)
        {
            objectidgenerator1 = (ObjectIdGenerator)_objectIdGenerators.get(j);
            if (objectidgenerator1.canUseFor(objectidgenerator))
            {
                continue; /* Loop/switch isn't completed */
            }
        }

        objectidgenerator1 = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void flushCachedSerializers()
    {
        _serializerCache.flush();
    }

    public JsonSchema generateJsonSchema(Class class1)
    {
        if (class1 == null)
        {
            throw new IllegalArgumentException("A class must be provided");
        }
        JsonSerializer jsonserializer = findValueSerializer(class1, null);
        com.fasterxml.jackson.databind.JsonNode jsonnode;
        if (jsonserializer instanceof SchemaAware)
        {
            jsonnode = ((SchemaAware)jsonserializer).getSchema(this, null);
        } else
        {
            jsonnode = JsonSchema.getDefaultSchemaNode();
        }
        if (!(jsonnode instanceof ObjectNode))
        {
            throw new IllegalArgumentException((new StringBuilder("Class ")).append(class1.getName()).append(" would not be serialized as a JSON object and therefore has no schema").toString());
        } else
        {
            return new JsonSchema((ObjectNode)jsonnode);
        }
    }

    public boolean hasSerializerFor(Class class1)
    {
        JsonSerializer jsonserializer;
        boolean flag;
        try
        {
            jsonserializer = _findExplicitUntypedSerializer(class1);
        }
        catch (JsonMappingException jsonmappingexception)
        {
            return false;
        }
        flag = false;
        if (jsonserializer != null)
        {
            flag = true;
        }
        return flag;
    }

    public void serializeValue(h h1, Object obj)
    {
        boolean flag = false;
        JsonSerializer jsonserializer1;
        if (obj == null)
        {
            jsonserializer1 = getDefaultNullValueSerializer();
        } else
        {
            JsonSerializer jsonserializer = findTypedValueSerializer(obj.getClass(), true, null);
            String s = _config.getRootName();
            if (s == null)
            {
                flag = _config.isEnabled(SerializationFeature.WRAP_ROOT_VALUE);
                Exception exception;
                String s1;
                IOException ioexception;
                if (flag)
                {
                    h1.writeStartObject();
                    h1.writeFieldName(_rootNames.findRootName(obj.getClass(), _config));
                    jsonserializer1 = jsonserializer;
                } else
                {
                    jsonserializer1 = jsonserializer;
                }
            } else
            if (s.length() == 0)
            {
                jsonserializer1 = jsonserializer;
                flag = false;
            } else
            {
                h1.writeStartObject();
                h1.writeFieldName(s);
                flag = true;
                jsonserializer1 = jsonserializer;
            }
        }
        try
        {
            jsonserializer1.serialize(obj, h1, this);
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            throw ioexception;
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            s1 = exception.getMessage();
            if (s1 == null)
            {
                s1 = (new StringBuilder("[no message for ")).append(exception.getClass().getName()).append("]").toString();
            }
            throw new JsonMappingException(s1, exception);
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        h1.writeEndObject();
    }

    public void serializeValue(h h1, Object obj, JavaType javatype)
    {
        if (obj != null) goto _L2; else goto _L1
_L1:
        JsonSerializer jsonserializer;
        boolean flag;
        jsonserializer = getDefaultNullValueSerializer();
        flag = false;
_L4:
        try
        {
            jsonserializer.serialize(obj, h1, this);
        }
        catch (IOException ioexception)
        {
            throw ioexception;
        }
        catch (Exception exception)
        {
            String s = exception.getMessage();
            if (s == null)
            {
                s = (new StringBuilder("[no message for ")).append(exception.getClass().getName()).append("]").toString();
            }
            throw new JsonMappingException(s, exception);
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        h1.writeEndObject();
        return;
_L2:
        if (!javatype.getRawClass().isAssignableFrom(obj.getClass()))
        {
            _reportIncompatibleRootType(obj, javatype);
        }
        jsonserializer = findTypedValueSerializer(javatype, true, null);
        flag = _config.isEnabled(SerializationFeature.WRAP_ROOT_VALUE);
        if (flag)
        {
            h1.writeStartObject();
            h1.writeFieldName(_rootNames.findRootName(javatype, _config));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void serializeValue(h h1, Object obj, JavaType javatype, JsonSerializer jsonserializer)
    {
        if (obj != null) goto _L2; else goto _L1
_L1:
        boolean flag;
        jsonserializer = getDefaultNullValueSerializer();
        flag = false;
_L4:
        try
        {
            jsonserializer.serialize(obj, h1, this);
        }
        catch (IOException ioexception)
        {
            throw ioexception;
        }
        catch (Exception exception)
        {
            String s = exception.getMessage();
            if (s == null)
            {
                s = (new StringBuilder("[no message for ")).append(exception.getClass().getName()).append("]").toString();
            }
            throw new JsonMappingException(s, exception);
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        h1.writeEndObject();
        return;
_L2:
        if (javatype != null && !javatype.getRawClass().isAssignableFrom(obj.getClass()))
        {
            _reportIncompatibleRootType(obj, javatype);
        }
        if (jsonserializer == null)
        {
            jsonserializer = findTypedValueSerializer(javatype, true, null);
        }
        flag = _config.isEnabled(SerializationFeature.WRAP_ROOT_VALUE);
        if (flag)
        {
            h1.writeStartObject();
            h1.writeFieldName(_rootNames.findRootName(javatype, _config));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public JsonSerializer serializerInstance(Annotated annotated, Object obj)
    {
        if (obj != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        JsonSerializer jsonserializer1;
        if (obj instanceof JsonSerializer)
        {
            jsonserializer1 = (JsonSerializer)obj;
        } else
        {
            if (!(obj instanceof Class))
            {
                throw new IllegalStateException((new StringBuilder("AnnotationIntrospector returned serializer definition of type ")).append(obj.getClass().getName()).append("; expected type JsonSerializer or Class<JsonSerializer> instead").toString());
            }
            Class class1 = (Class)obj;
            if (class1 == com/fasterxml/jackson/databind/JsonSerializer$None || class1 == com/fasterxml/jackson/databind/annotation/NoClass)
            {
                continue; /* Loop/switch isn't completed */
            }
            if (!com/fasterxml/jackson/databind/JsonSerializer.isAssignableFrom(class1))
            {
                throw new IllegalStateException((new StringBuilder("AnnotationIntrospector returned Class ")).append(class1.getName()).append("; expected Class<JsonSerializer>").toString());
            }
            HandlerInstantiator handlerinstantiator = _config.getHandlerInstantiator();
            JsonSerializer jsonserializer = null;
            if (handlerinstantiator != null)
            {
                jsonserializer = handlerinstantiator.serializerInstance(_config, annotated, class1);
            }
            if (jsonserializer == null)
            {
                jsonserializer1 = (JsonSerializer)ClassUtil.createInstance(class1, _config.canOverrideAccessModifiers());
            } else
            {
                jsonserializer1 = jsonserializer;
            }
        }
        return _handleResolvable(jsonserializer1);
        if (true) goto _L1; else goto _L3
_L3:
    }
}
