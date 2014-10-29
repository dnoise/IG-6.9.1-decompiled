// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.a.b;
import com.fasterxml.jackson.a.c;
import com.fasterxml.jackson.a.c.k;
import com.fasterxml.jackson.a.d;
import com.fasterxml.jackson.a.f;
import com.fasterxml.jackson.a.f.a;
import com.fasterxml.jackson.a.g.e;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.i;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.n;
import com.fasterxml.jackson.a.p;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.a.s;
import com.fasterxml.jackson.a.t;
import com.fasterxml.jackson.a.v;
import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.a.x;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.fasterxml.jackson.databind.deser.BeanDeserializerFactory;
import com.fasterxml.jackson.databind.deser.DefaultDeserializationContext;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.introspect.BasicClassIntrospector;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.JacksonAnnotationIntrospector;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonschema.JsonSchema;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.impl.StdSubtypeResolver;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.NullNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.node.TreeTraversingParser;
import com.fasterxml.jackson.databind.ser.BeanSerializerFactory;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider;
import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.SerializerFactory;
import com.fasterxml.jackson.databind.type.ClassKey;
import com.fasterxml.jackson.databind.type.SimpleType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Serializable;
import java.io.Writer;
import java.lang.reflect.Type;
import java.net.URL;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.fasterxml.jackson.databind:
//            JsonNode, MappingJsonFactory, SerializationConfig, DeserializationConfig, 
//            SerializationFeature, Module, JavaType, JsonDeserializer, 
//            DeserializationContext, JsonMappingException, MapperFeature, MappingIterator, 
//            ObjectReader, ObjectWriter, AnnotationIntrospector, InjectableValues, 
//            DeserializationFeature, SerializerProvider, PropertyNamingStrategy

public class ObjectMapper extends s
    implements x, Serializable
{

    protected static final AnnotationIntrospector DEFAULT_ANNOTATION_INTROSPECTOR;
    protected static final BaseSettings DEFAULT_BASE;
    protected static final ClassIntrospector DEFAULT_INTROSPECTOR;
    private static final JavaType JSON_NODE_TYPE = SimpleType.constructUnsafe(com/fasterxml/jackson/databind/JsonNode);
    protected static final VisibilityChecker STD_VISIBILITY_CHECKER;
    protected static final t _defaultPrettyPrinter = new e();
    private static final long serialVersionUID = 1L;
    protected DeserializationConfig _deserializationConfig;
    protected DefaultDeserializationContext _deserializationContext;
    protected InjectableValues _injectableValues;
    protected final com.fasterxml.jackson.a.e _jsonFactory;
    protected final HashMap _mixInAnnotations;
    protected final ConcurrentHashMap _rootDeserializers;
    protected final RootNameLookup _rootNames;
    protected SerializationConfig _serializationConfig;
    protected SerializerFactory _serializerFactory;
    protected DefaultSerializerProvider _serializerProvider;
    protected SubtypeResolver _subtypeResolver;
    protected TypeFactory _typeFactory;

    public ObjectMapper()
    {
        this(null, null, null);
    }

    public ObjectMapper(com.fasterxml.jackson.a.e e1)
    {
        this(e1, null, null);
    }

    public ObjectMapper(com.fasterxml.jackson.a.e e1, DefaultSerializerProvider defaultserializerprovider, DefaultDeserializationContext defaultdeserializationcontext)
    {
        _mixInAnnotations = new HashMap();
        _rootDeserializers = new ConcurrentHashMap(64, 0.6F, 2);
        if (e1 != null) goto _L2; else goto _L1
_L1:
        _jsonFactory = new MappingJsonFactory(this);
_L4:
        _subtypeResolver = new StdSubtypeResolver();
        _rootNames = new RootNameLookup();
        _typeFactory = TypeFactory.defaultInstance();
        _serializationConfig = new SerializationConfig(DEFAULT_BASE, _subtypeResolver, _mixInAnnotations);
        _deserializationConfig = new DeserializationConfig(DEFAULT_BASE, _subtypeResolver, _mixInAnnotations);
        if (defaultserializerprovider == null)
        {
            defaultserializerprovider = new com.fasterxml.jackson.databind.ser.DefaultSerializerProvider.Impl();
        }
        _serializerProvider = defaultserializerprovider;
        if (defaultdeserializationcontext == null)
        {
            defaultdeserializationcontext = new com.fasterxml.jackson.databind.deser.DefaultDeserializationContext.Impl(BeanDeserializerFactory.instance);
        }
        _deserializationContext = defaultdeserializationcontext;
        _serializerFactory = BeanSerializerFactory.instance;
        return;
_L2:
        _jsonFactory = e1;
        if (e1.getCodec() == null)
        {
            _jsonFactory.setCodec(this);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected ObjectMapper(ObjectMapper objectmapper)
    {
        _mixInAnnotations = new HashMap();
        _rootDeserializers = new ConcurrentHashMap(64, 0.6F, 2);
        _jsonFactory = objectmapper._jsonFactory.copy();
        _jsonFactory.setCodec(this);
        _subtypeResolver = objectmapper._subtypeResolver;
        _rootNames = new RootNameLookup();
        _typeFactory = objectmapper._typeFactory;
        _serializationConfig = objectmapper._serializationConfig;
        HashMap hashmap = new HashMap(objectmapper._mixInAnnotations);
        _serializationConfig = new SerializationConfig(objectmapper._serializationConfig, hashmap);
        _deserializationConfig = new DeserializationConfig(objectmapper._deserializationConfig, hashmap);
        _serializerProvider = objectmapper._serializerProvider;
        _deserializationContext = objectmapper._deserializationContext;
        _serializerFactory = objectmapper._serializerFactory;
    }

    private final void _configAndWriteCloseable(h h1, Object obj, SerializationConfig serializationconfig)
    {
        Closeable closeable = (Closeable)obj;
        _serializerProvider(serializationconfig).serializeValue(h1, obj);
        h1.close();
        closeable.close();
        return;
        Exception exception;
        exception;
        Closeable closeable1;
        Exception exception1;
        closeable1 = closeable;
        exception1 = exception;
_L2:
        if (h1 != null)
        {
            try
            {
                h1.close();
            }
            catch (IOException ioexception1) { }
        }
        if (closeable1 != null)
        {
            try
            {
                closeable1.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception1;
        Exception exception2;
        exception2;
        exception1 = exception2;
        closeable1 = closeable;
        h1 = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        closeable1 = null;
        h1 = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private final void _writeCloseableValue(h h1, Object obj, SerializationConfig serializationconfig)
    {
        Closeable closeable = (Closeable)obj;
        _serializerProvider(serializationconfig).serializeValue(h1, obj);
        if (serializationconfig.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE))
        {
            h1.flush();
        }
        closeable.close();
        return;
        Exception exception;
        exception;
        Closeable closeable1;
        Exception exception1;
        closeable1 = closeable;
        exception1 = exception;
_L2:
        if (closeable1 != null)
        {
            try
            {
                closeable1.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception1;
        exception1;
        closeable1 = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static List findModules()
    {
        return findModules(null);
    }

    public static List findModules(ClassLoader classloader)
    {
        ArrayList arraylist = new ArrayList();
        ServiceLoader serviceloader;
        Iterator iterator;
        if (classloader == null)
        {
            serviceloader = ServiceLoader.load(com/fasterxml/jackson/databind/Module);
        } else
        {
            serviceloader = ServiceLoader.load(com/fasterxml/jackson/databind/Module, classloader);
        }
        for (iterator = serviceloader.iterator(); iterator.hasNext(); arraylist.add((Module)iterator.next())) { }
        return arraylist;
    }

    protected void _checkInvalidCopy(Class class1)
    {
        if (getClass() != class1)
        {
            throw new IllegalStateException((new StringBuilder("Failed copy(): ")).append(getClass().getName()).append(" (version: ").append(version()).append(") does not override copy(); it has to").toString());
        } else
        {
            return;
        }
    }

    protected final void _configAndWriteValue(h h1, Object obj)
    {
        SerializationConfig serializationconfig;
        boolean flag;
        serializationconfig = getSerializationConfig();
        if (serializationconfig.isEnabled(SerializationFeature.INDENT_OUTPUT))
        {
            h1.useDefaultPrettyPrinter();
        }
        if (serializationconfig.isEnabled(SerializationFeature.CLOSE_CLOSEABLE) && (obj instanceof Closeable))
        {
            _configAndWriteCloseable(h1, obj, serializationconfig);
            return;
        }
        flag = false;
        _serializerProvider(serializationconfig).serializeValue(h1, obj);
        flag = true;
        h1.close();
        return;
        Exception exception;
        exception;
        if (!flag)
        {
            try
            {
                h1.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception;
    }

    protected final void _configAndWriteValue(h h1, Object obj, Class class1)
    {
        SerializationConfig serializationconfig;
        boolean flag;
        serializationconfig = getSerializationConfig().withView(class1);
        if (serializationconfig.isEnabled(SerializationFeature.INDENT_OUTPUT))
        {
            h1.useDefaultPrettyPrinter();
        }
        if (serializationconfig.isEnabled(SerializationFeature.CLOSE_CLOSEABLE) && (obj instanceof Closeable))
        {
            _configAndWriteCloseable(h1, obj, serializationconfig);
            return;
        }
        flag = false;
        _serializerProvider(serializationconfig).serializeValue(h1, obj);
        flag = true;
        h1.close();
        return;
        Exception exception;
        exception;
        if (!flag)
        {
            try
            {
                h1.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception;
    }

    protected Object _convert(Object obj, JavaType javatype)
    {
        TokenBuffer tokenbuffer;
        Class class1 = javatype.getRawClass();
        if (class1 != java/lang/Object && !javatype.hasGenericTypes() && class1.isAssignableFrom(obj.getClass()))
        {
            return obj;
        }
        tokenbuffer = new TokenBuffer(this);
        l l1;
        DeserializationConfig deserializationconfig;
        r r1;
        Object obj1;
        _serializerProvider(getSerializationConfig().without(SerializationFeature.WRAP_ROOT_VALUE)).serializeValue(tokenbuffer, obj);
        l1 = tokenbuffer.asParser();
        deserializationconfig = getDeserializationConfig();
        r1 = _initForReading(l1);
        if (r1 != r.m)
        {
            break MISSING_BLOCK_LABEL_134;
        }
        obj1 = _findRootDeserializer(createDeserializationContext(l1, deserializationconfig), javatype).getNullValue();
_L1:
        l1.close();
        IOException ioexception;
        return obj1;
        if (r1 != r.e && r1 != r.c)
        {
            Object obj2;
            try
            {
                DefaultDeserializationContext defaultdeserializationcontext = createDeserializationContext(l1, deserializationconfig);
                obj2 = _findRootDeserializer(defaultdeserializationcontext, javatype).deserialize(l1, defaultdeserializationcontext);
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception)
            {
                throw new IllegalArgumentException(ioexception.getMessage(), ioexception);
            }
            obj1 = obj2;
        } else
        {
            obj1 = null;
        }
          goto _L1
    }

    protected t _defaultPrettyPrinter()
    {
        return _defaultPrettyPrinter;
    }

    protected JsonDeserializer _findRootDeserializer(DeserializationContext deserializationcontext, JavaType javatype)
    {
        JsonDeserializer jsondeserializer = (JsonDeserializer)_rootDeserializers.get(javatype);
        if (jsondeserializer != null)
        {
            return jsondeserializer;
        }
        JsonDeserializer jsondeserializer1 = deserializationcontext.findRootValueDeserializer(javatype);
        if (jsondeserializer1 == null)
        {
            throw new JsonMappingException((new StringBuilder("Can not find a deserializer for type ")).append(javatype).toString());
        } else
        {
            _rootDeserializers.put(javatype, jsondeserializer1);
            return jsondeserializer1;
        }
    }

    protected r _initForReading(l l1)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == null)
        {
            r1 = l1.nextToken();
            if (r1 == null)
            {
                throw JsonMappingException.from(l1, "No content to map due to end-of-input");
            }
        }
        return r1;
    }

    protected Object _readMapAndClose(l l1, JavaType javatype)
    {
        r r1 = _initForReading(l1);
        if (r1 != r.m) goto _L2; else goto _L1
_L1:
        Object obj = _findRootDeserializer(createDeserializationContext(l1, getDeserializationConfig()), javatype).getNullValue();
_L3:
        l1.clearCurrentToken();
        Exception exception;
        DeserializationConfig deserializationconfig;
        DefaultDeserializationContext defaultdeserializationcontext;
        JsonDeserializer jsondeserializer;
        Object obj1;
        try
        {
            l1.close();
        }
        catch (IOException ioexception1)
        {
            return obj;
        }
        return obj;
_L2:
        if (r1 == r.e || r1 == r.c)
        {
            break MISSING_BLOCK_LABEL_147;
        }
label0:
        {
            deserializationconfig = getDeserializationConfig();
            defaultdeserializationcontext = createDeserializationContext(l1, deserializationconfig);
            jsondeserializer = _findRootDeserializer(defaultdeserializationcontext, javatype);
            if (!deserializationconfig.useRootWrapping())
            {
                break label0;
            }
            obj = _unwrapAndDeserialize(l1, defaultdeserializationcontext, deserializationconfig, javatype, jsondeserializer);
        }
          goto _L3
        obj1 = jsondeserializer.deserialize(l1, defaultdeserializationcontext);
        obj = obj1;
          goto _L3
        exception;
        try
        {
            l1.close();
        }
        catch (IOException ioexception) { }
        throw exception;
        obj = null;
          goto _L3
    }

    protected Object _readValue(DeserializationConfig deserializationconfig, l l1, JavaType javatype)
    {
        r r1 = _initForReading(l1);
        Object obj;
        if (r1 == r.m)
        {
            obj = _findRootDeserializer(createDeserializationContext(l1, deserializationconfig), javatype).getNullValue();
        } else
        if (r1 == r.e || r1 == r.c)
        {
            obj = null;
        } else
        {
            DefaultDeserializationContext defaultdeserializationcontext = createDeserializationContext(l1, deserializationconfig);
            JsonDeserializer jsondeserializer = _findRootDeserializer(defaultdeserializationcontext, javatype);
            if (deserializationconfig.useRootWrapping())
            {
                obj = _unwrapAndDeserialize(l1, defaultdeserializationcontext, deserializationconfig, javatype, jsondeserializer);
            } else
            {
                obj = jsondeserializer.deserialize(l1, defaultdeserializationcontext);
            }
        }
        l1.clearCurrentToken();
        return obj;
    }

    protected DefaultSerializerProvider _serializerProvider(SerializationConfig serializationconfig)
    {
        return _serializerProvider.createInstance(serializationconfig, _serializerFactory);
    }

    protected Object _unwrapAndDeserialize(l l1, DeserializationContext deserializationcontext, DeserializationConfig deserializationconfig, JavaType javatype, JsonDeserializer jsondeserializer)
    {
        String s1 = deserializationconfig.getRootName();
        if (s1 == null)
        {
            s1 = _rootNames.findRootName(javatype, deserializationconfig).a();
        }
        if (l1.getCurrentToken() != r.b)
        {
            throw JsonMappingException.from(l1, (new StringBuilder("Current token not START_OBJECT (needed to unwrap root name '")).append(s1).append("'), but ").append(l1.getCurrentToken()).toString());
        }
        if (l1.nextToken() != r.f)
        {
            throw JsonMappingException.from(l1, (new StringBuilder("Current token not FIELD_NAME (to contain expected root name '")).append(s1).append("'), but ").append(l1.getCurrentToken()).toString());
        }
        String s2 = l1.getCurrentName();
        if (!s1.equals(s2))
        {
            throw JsonMappingException.from(l1, (new StringBuilder("Root name '")).append(s2).append("' does not match expected ('").append(s1).append("') for type ").append(javatype).toString());
        }
        l1.nextToken();
        Object obj = jsondeserializer.deserialize(l1, deserializationcontext);
        if (l1.nextToken() != r.c)
        {
            throw JsonMappingException.from(l1, (new StringBuilder("Current token not END_OBJECT (to match wrapper object with root name '")).append(s1).append("'), but ").append(l1.getCurrentToken()).toString());
        } else
        {
            return obj;
        }
    }

    protected void _verifySchemaType(c c)
    {
        if (c != null && !_jsonFactory.canUseSchema(c))
        {
            throw new IllegalArgumentException((new StringBuilder("Can not use FormatSchema of type ")).append(c.getClass().getName()).append(" for format ").append(_jsonFactory.getFormatName()).toString());
        } else
        {
            return;
        }
    }

    public void acceptJsonFormatVisitor(JavaType javatype, JsonFormatVisitorWrapper jsonformatvisitorwrapper)
    {
        if (javatype == null)
        {
            throw new IllegalArgumentException("type must be provided");
        } else
        {
            _serializerProvider(getSerializationConfig()).acceptJsonFormatVisitor(javatype, jsonformatvisitorwrapper);
            return;
        }
    }

    public void acceptJsonFormatVisitor(Class class1, JsonFormatVisitorWrapper jsonformatvisitorwrapper)
    {
        acceptJsonFormatVisitor(_typeFactory.constructType(class1), jsonformatvisitorwrapper);
    }

    public ObjectMapper addHandler(DeserializationProblemHandler deserializationproblemhandler)
    {
        _deserializationConfig = _deserializationConfig.withHandler(deserializationproblemhandler);
        return this;
    }

    public final void addMixInAnnotations(Class class1, Class class2)
    {
        _mixInAnnotations.put(new ClassKey(class1), class2);
    }

    public boolean canDeserialize(JavaType javatype)
    {
        return createDeserializationContext(null, getDeserializationConfig()).hasValueDeserializerFor(javatype);
    }

    public boolean canSerialize(Class class1)
    {
        return _serializerProvider(getSerializationConfig()).hasSerializerFor(class1);
    }

    public ObjectMapper clearProblemHandlers()
    {
        _deserializationConfig = _deserializationConfig.withNoProblemHandlers();
        return this;
    }

    public ObjectMapper configure(i i, boolean flag)
    {
        _jsonFactory.configure(i, flag);
        return this;
    }

    public ObjectMapper configure(n n, boolean flag)
    {
        _jsonFactory.configure(n, flag);
        return this;
    }

    public ObjectMapper configure(DeserializationFeature deserializationfeature, boolean flag)
    {
        DeserializationConfig deserializationconfig;
        if (flag)
        {
            deserializationconfig = _deserializationConfig.with(deserializationfeature);
        } else
        {
            deserializationconfig = _deserializationConfig.without(deserializationfeature);
        }
        _deserializationConfig = deserializationconfig;
        return this;
    }

    public ObjectMapper configure(MapperFeature mapperfeature, boolean flag)
    {
        SerializationConfig serializationconfig;
        DeserializationConfig deserializationconfig;
        if (flag)
        {
            serializationconfig = _serializationConfig.with(new MapperFeature[] {
                mapperfeature
            });
        } else
        {
            serializationconfig = _serializationConfig.without(new MapperFeature[] {
                mapperfeature
            });
        }
        _serializationConfig = serializationconfig;
        if (flag)
        {
            deserializationconfig = _deserializationConfig.with(new MapperFeature[] {
                mapperfeature
            });
        } else
        {
            deserializationconfig = _deserializationConfig.without(new MapperFeature[] {
                mapperfeature
            });
        }
        _deserializationConfig = deserializationconfig;
        return this;
    }

    public ObjectMapper configure(SerializationFeature serializationfeature, boolean flag)
    {
        SerializationConfig serializationconfig;
        if (flag)
        {
            serializationconfig = _serializationConfig.with(serializationfeature);
        } else
        {
            serializationconfig = _serializationConfig.without(serializationfeature);
        }
        _serializationConfig = serializationconfig;
        return this;
    }

    public JavaType constructType(Type type)
    {
        return _typeFactory.constructType(type);
    }

    public Object convertValue(Object obj, com.fasterxml.jackson.a.f.b b1)
    {
        return convertValue(obj, _typeFactory.constructType(b1));
    }

    public Object convertValue(Object obj, JavaType javatype)
    {
        if (obj == null)
        {
            return null;
        } else
        {
            return _convert(obj, javatype);
        }
    }

    public Object convertValue(Object obj, Class class1)
    {
        if (obj == null)
        {
            return null;
        } else
        {
            return _convert(obj, _typeFactory.constructType(class1));
        }
    }

    public ObjectMapper copy()
    {
        _checkInvalidCopy(com/fasterxml/jackson/databind/ObjectMapper);
        return new ObjectMapper(this);
    }

    public volatile v createArrayNode()
    {
        return createArrayNode();
    }

    public ArrayNode createArrayNode()
    {
        return _deserializationConfig.getNodeFactory().arrayNode();
    }

    protected DefaultDeserializationContext createDeserializationContext(l l1, DeserializationConfig deserializationconfig)
    {
        return _deserializationContext.createInstance(deserializationconfig, l1, _injectableValues);
    }

    public volatile v createObjectNode()
    {
        return createObjectNode();
    }

    public ObjectNode createObjectNode()
    {
        return _deserializationConfig.getNodeFactory().objectNode();
    }

    public ObjectMapper disable(DeserializationFeature deserializationfeature)
    {
        _deserializationConfig = _deserializationConfig.without(deserializationfeature);
        return this;
    }

    public transient ObjectMapper disable(DeserializationFeature deserializationfeature, DeserializationFeature adeserializationfeature[])
    {
        _deserializationConfig = _deserializationConfig.without(deserializationfeature, adeserializationfeature);
        return this;
    }

    public ObjectMapper disable(SerializationFeature serializationfeature)
    {
        _serializationConfig = _serializationConfig.without(serializationfeature);
        return this;
    }

    public transient ObjectMapper disable(SerializationFeature serializationfeature, SerializationFeature aserializationfeature[])
    {
        _serializationConfig = _serializationConfig.without(serializationfeature, aserializationfeature);
        return this;
    }

    public transient ObjectMapper disable(MapperFeature amapperfeature[])
    {
        _deserializationConfig = _deserializationConfig.without(amapperfeature);
        _serializationConfig = _serializationConfig.without(amapperfeature);
        return this;
    }

    public ObjectMapper disableDefaultTyping()
    {
        return setDefaultTyping(null);
    }

    public ObjectMapper enable(DeserializationFeature deserializationfeature)
    {
        _deserializationConfig = _deserializationConfig.with(deserializationfeature);
        return this;
    }

    public transient ObjectMapper enable(DeserializationFeature deserializationfeature, DeserializationFeature adeserializationfeature[])
    {
        _deserializationConfig = _deserializationConfig.with(deserializationfeature, adeserializationfeature);
        return this;
    }

    public ObjectMapper enable(SerializationFeature serializationfeature)
    {
        _serializationConfig = _serializationConfig.with(serializationfeature);
        return this;
    }

    public transient ObjectMapper enable(SerializationFeature serializationfeature, SerializationFeature aserializationfeature[])
    {
        _serializationConfig = _serializationConfig.with(serializationfeature, aserializationfeature);
        return this;
    }

    public transient ObjectMapper enable(MapperFeature amapperfeature[])
    {
        _deserializationConfig = _deserializationConfig.with(amapperfeature);
        _serializationConfig = _serializationConfig.with(amapperfeature);
        return this;
    }

    public ObjectMapper enableDefaultTyping()
    {
        return enableDefaultTyping(DefaultTyping.OBJECT_AND_NON_CONCRETE);
    }

    public ObjectMapper enableDefaultTyping(DefaultTyping defaulttyping)
    {
        return enableDefaultTyping(defaulttyping, com.fasterxml.jackson.annotation.JsonTypeInfo.As.WRAPPER_ARRAY);
    }

    public ObjectMapper enableDefaultTyping(DefaultTyping defaulttyping, com.fasterxml.jackson.annotation.JsonTypeInfo.As as)
    {
        return setDefaultTyping((new DefaultTypeResolverBuilder(defaulttyping)).init(com.fasterxml.jackson.annotation.JsonTypeInfo.Id.CLASS, null).inclusion(as));
    }

    public ObjectMapper enableDefaultTypingAsProperty(DefaultTyping defaulttyping, String s1)
    {
        return setDefaultTyping((new DefaultTypeResolverBuilder(defaulttyping)).init(com.fasterxml.jackson.annotation.JsonTypeInfo.Id.CLASS, null).inclusion(com.fasterxml.jackson.annotation.JsonTypeInfo.As.PROPERTY).typeProperty(s1));
    }

    public ObjectMapper findAndRegisterModules()
    {
        return registerModules(findModules());
    }

    public final Class findMixInClassFor(Class class1)
    {
        if (_mixInAnnotations == null)
        {
            return null;
        } else
        {
            return (Class)_mixInAnnotations.get(new ClassKey(class1));
        }
    }

    public JsonSchema generateJsonSchema(Class class1)
    {
        return _serializerProvider(getSerializationConfig()).generateJsonSchema(class1);
    }

    public DeserializationConfig getDeserializationConfig()
    {
        return _deserializationConfig;
    }

    public DeserializationContext getDeserializationContext()
    {
        return _deserializationContext;
    }

    public com.fasterxml.jackson.a.e getFactory()
    {
        return _jsonFactory;
    }

    public com.fasterxml.jackson.a.e getJsonFactory()
    {
        return _jsonFactory;
    }

    public JsonNodeFactory getNodeFactory()
    {
        return _deserializationConfig.getNodeFactory();
    }

    public SerializationConfig getSerializationConfig()
    {
        return _serializationConfig;
    }

    public SerializerFactory getSerializerFactory()
    {
        return _serializerFactory;
    }

    public SerializerProvider getSerializerProvider()
    {
        return _serializerProvider;
    }

    public SubtypeResolver getSubtypeResolver()
    {
        return _subtypeResolver;
    }

    public TypeFactory getTypeFactory()
    {
        return _typeFactory;
    }

    public VisibilityChecker getVisibilityChecker()
    {
        return _serializationConfig.getDefaultVisibilityChecker();
    }

    public boolean isEnabled(f f)
    {
        return _jsonFactory.isEnabled(f);
    }

    public boolean isEnabled(i i)
    {
        return _jsonFactory.isEnabled(i);
    }

    public boolean isEnabled(n n)
    {
        return _jsonFactory.isEnabled(n);
    }

    public boolean isEnabled(DeserializationFeature deserializationfeature)
    {
        return _deserializationConfig.isEnabled(deserializationfeature);
    }

    public boolean isEnabled(MapperFeature mapperfeature)
    {
        return _serializationConfig.isEnabled(mapperfeature);
    }

    public boolean isEnabled(SerializationFeature serializationfeature)
    {
        return _serializationConfig.isEnabled(serializationfeature);
    }

    public final int mixInCount()
    {
        if (_mixInAnnotations == null)
        {
            return 0;
        } else
        {
            return _mixInAnnotations.size();
        }
    }

    public v readTree(l l1)
    {
        DeserializationConfig deserializationconfig = getDeserializationConfig();
        Object obj;
        if (l1.getCurrentToken() == null && l1.nextToken() == null)
        {
            obj = null;
        } else
        {
            obj = (JsonNode)_readValue(deserializationconfig, l1, JSON_NODE_TYPE);
            if (obj == null)
            {
                return getNodeFactory().nullNode();
            }
        }
        return ((v) (obj));
    }

    public JsonNode readTree(File file)
    {
        Object obj = (JsonNode)_readMapAndClose(_jsonFactory.createParser(file), JSON_NODE_TYPE);
        if (obj == null)
        {
            obj = NullNode.instance;
        }
        return ((JsonNode) (obj));
    }

    public JsonNode readTree(InputStream inputstream)
    {
        Object obj = (JsonNode)_readMapAndClose(_jsonFactory.createParser(inputstream), JSON_NODE_TYPE);
        if (obj == null)
        {
            obj = NullNode.instance;
        }
        return ((JsonNode) (obj));
    }

    public JsonNode readTree(Reader reader1)
    {
        Object obj = (JsonNode)_readMapAndClose(_jsonFactory.createParser(reader1), JSON_NODE_TYPE);
        if (obj == null)
        {
            obj = NullNode.instance;
        }
        return ((JsonNode) (obj));
    }

    public JsonNode readTree(String s1)
    {
        Object obj = (JsonNode)_readMapAndClose(_jsonFactory.createParser(s1), JSON_NODE_TYPE);
        if (obj == null)
        {
            obj = NullNode.instance;
        }
        return ((JsonNode) (obj));
    }

    public JsonNode readTree(URL url)
    {
        Object obj = (JsonNode)_readMapAndClose(_jsonFactory.createParser(url), JSON_NODE_TYPE);
        if (obj == null)
        {
            obj = NullNode.instance;
        }
        return ((JsonNode) (obj));
    }

    public JsonNode readTree(byte abyte0[])
    {
        Object obj = (JsonNode)_readMapAndClose(_jsonFactory.createParser(abyte0), JSON_NODE_TYPE);
        if (obj == null)
        {
            obj = NullNode.instance;
        }
        return ((JsonNode) (obj));
    }

    public final Object readValue(l l1, a a)
    {
        return _readValue(getDeserializationConfig(), l1, (JavaType)a);
    }

    public Object readValue(l l1, com.fasterxml.jackson.a.f.b b1)
    {
        return _readValue(getDeserializationConfig(), l1, _typeFactory.constructType(b1));
    }

    public Object readValue(l l1, JavaType javatype)
    {
        return _readValue(getDeserializationConfig(), l1, javatype);
    }

    public Object readValue(l l1, Class class1)
    {
        return _readValue(getDeserializationConfig(), l1, _typeFactory.constructType(class1));
    }

    public Object readValue(File file, com.fasterxml.jackson.a.f.b b1)
    {
        return _readMapAndClose(_jsonFactory.createParser(file), _typeFactory.constructType(b1));
    }

    public Object readValue(File file, JavaType javatype)
    {
        return _readMapAndClose(_jsonFactory.createParser(file), javatype);
    }

    public Object readValue(File file, Class class1)
    {
        return _readMapAndClose(_jsonFactory.createParser(file), _typeFactory.constructType(class1));
    }

    public Object readValue(InputStream inputstream, com.fasterxml.jackson.a.f.b b1)
    {
        return _readMapAndClose(_jsonFactory.createParser(inputstream), _typeFactory.constructType(b1));
    }

    public Object readValue(InputStream inputstream, JavaType javatype)
    {
        return _readMapAndClose(_jsonFactory.createParser(inputstream), javatype);
    }

    public Object readValue(InputStream inputstream, Class class1)
    {
        return _readMapAndClose(_jsonFactory.createParser(inputstream), _typeFactory.constructType(class1));
    }

    public Object readValue(Reader reader1, com.fasterxml.jackson.a.f.b b1)
    {
        return _readMapAndClose(_jsonFactory.createParser(reader1), _typeFactory.constructType(b1));
    }

    public Object readValue(Reader reader1, JavaType javatype)
    {
        return _readMapAndClose(_jsonFactory.createParser(reader1), javatype);
    }

    public Object readValue(Reader reader1, Class class1)
    {
        return _readMapAndClose(_jsonFactory.createParser(reader1), _typeFactory.constructType(class1));
    }

    public Object readValue(String s1, com.fasterxml.jackson.a.f.b b1)
    {
        return _readMapAndClose(_jsonFactory.createParser(s1), _typeFactory.constructType(b1));
    }

    public Object readValue(String s1, JavaType javatype)
    {
        return _readMapAndClose(_jsonFactory.createParser(s1), javatype);
    }

    public Object readValue(String s1, Class class1)
    {
        return _readMapAndClose(_jsonFactory.createParser(s1), _typeFactory.constructType(class1));
    }

    public Object readValue(URL url, com.fasterxml.jackson.a.f.b b1)
    {
        return _readMapAndClose(_jsonFactory.createParser(url), _typeFactory.constructType(b1));
    }

    public Object readValue(URL url, JavaType javatype)
    {
        return _readMapAndClose(_jsonFactory.createParser(url), javatype);
    }

    public Object readValue(URL url, Class class1)
    {
        return _readMapAndClose(_jsonFactory.createParser(url), _typeFactory.constructType(class1));
    }

    public Object readValue(byte abyte0[], int i, int j, com.fasterxml.jackson.a.f.b b1)
    {
        return _readMapAndClose(_jsonFactory.createParser(abyte0, i, j), _typeFactory.constructType(b1));
    }

    public Object readValue(byte abyte0[], int i, int j, JavaType javatype)
    {
        return _readMapAndClose(_jsonFactory.createParser(abyte0, i, j), javatype);
    }

    public Object readValue(byte abyte0[], int i, int j, Class class1)
    {
        return _readMapAndClose(_jsonFactory.createParser(abyte0, i, j), _typeFactory.constructType(class1));
    }

    public Object readValue(byte abyte0[], com.fasterxml.jackson.a.f.b b1)
    {
        return _readMapAndClose(_jsonFactory.createParser(abyte0), _typeFactory.constructType(b1));
    }

    public Object readValue(byte abyte0[], JavaType javatype)
    {
        return _readMapAndClose(_jsonFactory.createParser(abyte0), javatype);
    }

    public Object readValue(byte abyte0[], Class class1)
    {
        return _readMapAndClose(_jsonFactory.createParser(abyte0), _typeFactory.constructType(class1));
    }

    public MappingIterator readValues(l l1, a a)
    {
        return readValues(l1, (JavaType)a);
    }

    public MappingIterator readValues(l l1, com.fasterxml.jackson.a.f.b b1)
    {
        return readValues(l1, _typeFactory.constructType(b1));
    }

    public MappingIterator readValues(l l1, JavaType javatype)
    {
        DefaultDeserializationContext defaultdeserializationcontext = createDeserializationContext(l1, getDeserializationConfig());
        return new MappingIterator(javatype, l1, defaultdeserializationcontext, _findRootDeserializer(defaultdeserializationcontext, javatype), false, null);
    }

    public MappingIterator readValues(l l1, Class class1)
    {
        return readValues(l1, _typeFactory.constructType(class1));
    }

    public volatile Iterator readValues(l l1, a a)
    {
        return readValues(l1, a);
    }

    public volatile Iterator readValues(l l1, com.fasterxml.jackson.a.f.b b1)
    {
        return readValues(l1, b1);
    }

    public volatile Iterator readValues(l l1, Class class1)
    {
        return readValues(l1, class1);
    }

    public ObjectReader reader()
    {
        return (new ObjectReader(this, getDeserializationConfig())).with(_injectableValues);
    }

    public ObjectReader reader(com.fasterxml.jackson.a.a a)
    {
        return new ObjectReader(this, getDeserializationConfig().with(a));
    }

    public ObjectReader reader(c c)
    {
        _verifySchemaType(c);
        return new ObjectReader(this, getDeserializationConfig(), null, null, c, _injectableValues);
    }

    public ObjectReader reader(com.fasterxml.jackson.a.f.b b1)
    {
        return reader(_typeFactory.constructType(b1));
    }

    public ObjectReader reader(DeserializationFeature deserializationfeature)
    {
        return new ObjectReader(this, getDeserializationConfig().with(deserializationfeature));
    }

    public transient ObjectReader reader(DeserializationFeature deserializationfeature, DeserializationFeature adeserializationfeature[])
    {
        return new ObjectReader(this, getDeserializationConfig().with(deserializationfeature, adeserializationfeature));
    }

    public ObjectReader reader(InjectableValues injectablevalues)
    {
        return new ObjectReader(this, getDeserializationConfig(), null, null, null, injectablevalues);
    }

    public ObjectReader reader(JavaType javatype)
    {
        return new ObjectReader(this, getDeserializationConfig(), javatype, null, null, _injectableValues);
    }

    public ObjectReader reader(JsonNodeFactory jsonnodefactory)
    {
        return (new ObjectReader(this, getDeserializationConfig())).with(jsonnodefactory);
    }

    public ObjectReader reader(Class class1)
    {
        return reader(_typeFactory.constructType(class1));
    }

    public ObjectReader readerForUpdating(Object obj)
    {
        JavaType javatype = _typeFactory.constructType(obj.getClass());
        return new ObjectReader(this, getDeserializationConfig(), javatype, obj, null, _injectableValues);
    }

    public ObjectReader readerWithView(Class class1)
    {
        return new ObjectReader(this, getDeserializationConfig().withView(class1));
    }

    public ObjectMapper registerModule(Module module)
    {
        if (module.getModuleName() == null)
        {
            throw new IllegalArgumentException("Module without defined name");
        }
        if (module.version() == null)
        {
            throw new IllegalArgumentException("Module without defined version");
        } else
        {
            module.setupModule(new _cls1());
            return this;
        }
    }

    public ObjectMapper registerModules(Iterable iterable)
    {
        for (Iterator iterator = iterable.iterator(); iterator.hasNext(); registerModule((Module)iterator.next())) { }
        return this;
    }

    public transient ObjectMapper registerModules(Module amodule[])
    {
        int i = amodule.length;
        for (int j = 0; j < i; j++)
        {
            registerModule(amodule[j]);
        }

        return this;
    }

    public transient void registerSubtypes(NamedType anamedtype[])
    {
        getSubtypeResolver().registerSubtypes(anamedtype);
    }

    public transient void registerSubtypes(Class aclass[])
    {
        getSubtypeResolver().registerSubtypes(aclass);
    }

    public ObjectMapper setAnnotationIntrospector(AnnotationIntrospector annotationintrospector)
    {
        _serializationConfig = _serializationConfig.with(annotationintrospector);
        _deserializationConfig = _deserializationConfig.with(annotationintrospector);
        return this;
    }

    public ObjectMapper setAnnotationIntrospectors(AnnotationIntrospector annotationintrospector, AnnotationIntrospector annotationintrospector1)
    {
        _serializationConfig = _serializationConfig.with(annotationintrospector);
        _deserializationConfig = _deserializationConfig.with(annotationintrospector1);
        return this;
    }

    public ObjectMapper setBase64Variant(com.fasterxml.jackson.a.a a)
    {
        _serializationConfig = _serializationConfig.with(a);
        _deserializationConfig = _deserializationConfig.with(a);
        return this;
    }

    public ObjectMapper setDateFormat(DateFormat dateformat)
    {
        _deserializationConfig = _deserializationConfig.with(dateformat);
        _serializationConfig = _serializationConfig.with(dateformat);
        return this;
    }

    public ObjectMapper setDefaultTyping(TypeResolverBuilder typeresolverbuilder)
    {
        _deserializationConfig = _deserializationConfig.with(typeresolverbuilder);
        _serializationConfig = _serializationConfig.with(typeresolverbuilder);
        return this;
    }

    public void setFilters(FilterProvider filterprovider)
    {
        _serializationConfig = _serializationConfig.withFilters(filterprovider);
    }

    public Object setHandlerInstantiator(HandlerInstantiator handlerinstantiator)
    {
        _deserializationConfig = _deserializationConfig.with(handlerinstantiator);
        _serializationConfig = _serializationConfig.with(handlerinstantiator);
        return this;
    }

    public ObjectMapper setInjectableValues(InjectableValues injectablevalues)
    {
        _injectableValues = injectablevalues;
        return this;
    }

    public ObjectMapper setLocale(Locale locale)
    {
        _deserializationConfig = _deserializationConfig.with(locale);
        _serializationConfig = _serializationConfig.with(locale);
        return this;
    }

    public final void setMixInAnnotations(Map map)
    {
        _mixInAnnotations.clear();
        if (map != null && map.size() > 0)
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); _mixInAnnotations.put(new ClassKey((Class)entry.getKey()), entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

        }
    }

    public ObjectMapper setNodeFactory(JsonNodeFactory jsonnodefactory)
    {
        _deserializationConfig = _deserializationConfig.with(jsonnodefactory);
        return this;
    }

    public ObjectMapper setPropertyNamingStrategy(PropertyNamingStrategy propertynamingstrategy)
    {
        _serializationConfig = _serializationConfig.with(propertynamingstrategy);
        _deserializationConfig = _deserializationConfig.with(propertynamingstrategy);
        return this;
    }

    public ObjectMapper setSerializationInclusion(com.fasterxml.jackson.annotation.JsonInclude.Include include)
    {
        _serializationConfig = _serializationConfig.withSerializationInclusion(include);
        return this;
    }

    public ObjectMapper setSerializerFactory(SerializerFactory serializerfactory)
    {
        _serializerFactory = serializerfactory;
        return this;
    }

    public ObjectMapper setSerializerProvider(DefaultSerializerProvider defaultserializerprovider)
    {
        _serializerProvider = defaultserializerprovider;
        return this;
    }

    public ObjectMapper setSubtypeResolver(SubtypeResolver subtyperesolver)
    {
        _subtypeResolver = subtyperesolver;
        _deserializationConfig = _deserializationConfig.with(subtyperesolver);
        _serializationConfig = _serializationConfig.with(subtyperesolver);
        return this;
    }

    public ObjectMapper setTimeZone(TimeZone timezone)
    {
        _deserializationConfig = _deserializationConfig.with(timezone);
        _serializationConfig = _serializationConfig.with(timezone);
        return this;
    }

    public ObjectMapper setTypeFactory(TypeFactory typefactory)
    {
        _typeFactory = typefactory;
        _deserializationConfig = _deserializationConfig.with(typefactory);
        _serializationConfig = _serializationConfig.with(typefactory);
        return this;
    }

    public ObjectMapper setVisibility(PropertyAccessor propertyaccessor, com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility visibility)
    {
        _deserializationConfig = _deserializationConfig.withVisibility(propertyaccessor, visibility);
        _serializationConfig = _serializationConfig.withVisibility(propertyaccessor, visibility);
        return this;
    }

    public void setVisibilityChecker(VisibilityChecker visibilitychecker)
    {
        _deserializationConfig = _deserializationConfig.with(visibilitychecker);
        _serializationConfig = _serializationConfig.with(visibilitychecker);
    }

    public l treeAsTokens(v v)
    {
        return new TreeTraversingParser((JsonNode)v, this);
    }

    public Object treeToValue(v v, Class class1)
    {
        if (class1 == java/lang/Object)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        if (class1.isAssignableFrom(v.getClass()))
        {
            return v;
        }
        Object obj;
        try
        {
            obj = readValue(treeAsTokens(v), class1);
        }
        catch (p p1)
        {
            throw p1;
        }
        catch (IOException ioexception)
        {
            throw new IllegalArgumentException(ioexception.getMessage(), ioexception);
        }
        return obj;
    }

    public JsonNode valueToTree(Object obj)
    {
        if (obj == null)
        {
            return null;
        }
        TokenBuffer tokenbuffer = new TokenBuffer(this);
        JsonNode jsonnode;
        try
        {
            writeValue(tokenbuffer, obj);
            l l1 = tokenbuffer.asParser();
            jsonnode = (JsonNode)readTree(l1);
            l1.close();
        }
        catch (IOException ioexception)
        {
            throw new IllegalArgumentException(ioexception.getMessage(), ioexception);
        }
        return jsonnode;
    }

    public w version()
    {
        return PackageVersion.VERSION;
    }

    public void writeTree(h h1, JsonNode jsonnode)
    {
        SerializationConfig serializationconfig = getSerializationConfig();
        _serializerProvider(serializationconfig).serializeValue(h1, jsonnode);
        if (serializationconfig.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE))
        {
            h1.flush();
        }
    }

    public void writeValue(h h1, Object obj)
    {
        SerializationConfig serializationconfig = getSerializationConfig();
        if (serializationconfig.isEnabled(SerializationFeature.INDENT_OUTPUT))
        {
            h1.useDefaultPrettyPrinter();
        }
        if (serializationconfig.isEnabled(SerializationFeature.CLOSE_CLOSEABLE) && (obj instanceof Closeable))
        {
            _writeCloseableValue(h1, obj, serializationconfig);
        } else
        {
            _serializerProvider(serializationconfig).serializeValue(h1, obj);
            if (serializationconfig.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE))
            {
                h1.flush();
                return;
            }
        }
    }

    public void writeValue(File file, Object obj)
    {
        _configAndWriteValue(_jsonFactory.createGenerator(file, d.a), obj);
    }

    public void writeValue(OutputStream outputstream, Object obj)
    {
        _configAndWriteValue(_jsonFactory.createGenerator(outputstream, d.a), obj);
    }

    public void writeValue(Writer writer1, Object obj)
    {
        _configAndWriteValue(_jsonFactory.createGenerator(writer1), obj);
    }

    public byte[] writeValueAsBytes(Object obj)
    {
        com.fasterxml.jackson.a.g.d d1 = new com.fasterxml.jackson.a.g.d(_jsonFactory._getBufferRecycler());
        byte abyte0[];
        try
        {
            _configAndWriteValue(_jsonFactory.createGenerator(d1, d.a), obj);
        }
        catch (p p1)
        {
            throw p1;
        }
        catch (IOException ioexception)
        {
            throw JsonMappingException.fromUnexpectedIOE(ioexception);
        }
        abyte0 = d1.c();
        d1.b();
        return abyte0;
    }

    public String writeValueAsString(Object obj)
    {
        k k1 = new k(_jsonFactory._getBufferRecycler());
        try
        {
            _configAndWriteValue(_jsonFactory.createGenerator(k1), obj);
        }
        catch (p p1)
        {
            throw p1;
        }
        catch (IOException ioexception)
        {
            throw JsonMappingException.fromUnexpectedIOE(ioexception);
        }
        return k1.a();
    }

    public ObjectWriter writer()
    {
        return new ObjectWriter(this, getSerializationConfig());
    }

    public ObjectWriter writer(com.fasterxml.jackson.a.a a)
    {
        return new ObjectWriter(this, getSerializationConfig().with(a));
    }

    public ObjectWriter writer(c c)
    {
        _verifySchemaType(c);
        return new ObjectWriter(this, getSerializationConfig(), c);
    }

    public ObjectWriter writer(t t)
    {
        if (t == null)
        {
            t = ObjectWriter.NULL_PRETTY_PRINTER;
        }
        return new ObjectWriter(this, getSerializationConfig(), null, t);
    }

    public ObjectWriter writer(SerializationFeature serializationfeature)
    {
        return new ObjectWriter(this, getSerializationConfig().with(serializationfeature));
    }

    public transient ObjectWriter writer(SerializationFeature serializationfeature, SerializationFeature aserializationfeature[])
    {
        return new ObjectWriter(this, getSerializationConfig().with(serializationfeature, aserializationfeature));
    }

    public ObjectWriter writer(FilterProvider filterprovider)
    {
        return new ObjectWriter(this, getSerializationConfig().withFilters(filterprovider));
    }

    public ObjectWriter writer(DateFormat dateformat)
    {
        return new ObjectWriter(this, getSerializationConfig().with(dateformat));
    }

    public ObjectWriter writerWithDefaultPrettyPrinter()
    {
        return new ObjectWriter(this, getSerializationConfig(), null, _defaultPrettyPrinter());
    }

    public ObjectWriter writerWithType(com.fasterxml.jackson.a.f.b b1)
    {
        SerializationConfig serializationconfig = getSerializationConfig();
        JavaType javatype;
        if (b1 == null)
        {
            javatype = null;
        } else
        {
            javatype = _typeFactory.constructType(b1);
        }
        return new ObjectWriter(this, serializationconfig, javatype, null);
    }

    public ObjectWriter writerWithType(JavaType javatype)
    {
        return new ObjectWriter(this, getSerializationConfig(), javatype, null);
    }

    public ObjectWriter writerWithType(Class class1)
    {
        SerializationConfig serializationconfig = getSerializationConfig();
        JavaType javatype;
        if (class1 == null)
        {
            javatype = null;
        } else
        {
            javatype = _typeFactory.constructType(class1);
        }
        return new ObjectWriter(this, serializationconfig, javatype, null);
    }

    public ObjectWriter writerWithView(Class class1)
    {
        return new ObjectWriter(this, getSerializationConfig().withView(class1));
    }

    static 
    {
        DEFAULT_INTROSPECTOR = BasicClassIntrospector.instance;
        DEFAULT_ANNOTATION_INTROSPECTOR = new JacksonAnnotationIntrospector();
        STD_VISIBILITY_CHECKER = com.fasterxml.jackson.databind.introspect.VisibilityChecker.Std.defaultInstance();
        DEFAULT_BASE = new BaseSettings(DEFAULT_INTROSPECTOR, DEFAULT_ANNOTATION_INTROSPECTOR, STD_VISIBILITY_CHECKER, null, TypeFactory.defaultInstance(), null, StdDateFormat.instance, null, Locale.getDefault(), TimeZone.getTimeZone("GMT"), b.a());
    }

    private class DefaultTyping extends Enum
    {

        private static final DefaultTyping $VALUES[];
        public static final DefaultTyping JAVA_LANG_OBJECT;
        public static final DefaultTyping NON_CONCRETE_AND_ARRAYS;
        public static final DefaultTyping NON_FINAL;
        public static final DefaultTyping OBJECT_AND_NON_CONCRETE;

        public static DefaultTyping valueOf(String s1)
        {
            return (DefaultTyping)Enum.valueOf(com/fasterxml/jackson/databind/ObjectMapper$DefaultTyping, s1);
        }

        public static DefaultTyping[] values()
        {
            return (DefaultTyping[])$VALUES.clone();
        }

        static 
        {
            JAVA_LANG_OBJECT = new DefaultTyping("JAVA_LANG_OBJECT", 0);
            OBJECT_AND_NON_CONCRETE = new DefaultTyping("OBJECT_AND_NON_CONCRETE", 1);
            NON_CONCRETE_AND_ARRAYS = new DefaultTyping("NON_CONCRETE_AND_ARRAYS", 2);
            NON_FINAL = new DefaultTyping("NON_FINAL", 3);
            DefaultTyping adefaulttyping[] = new DefaultTyping[4];
            adefaulttyping[0] = JAVA_LANG_OBJECT;
            adefaulttyping[1] = OBJECT_AND_NON_CONCRETE;
            adefaulttyping[2] = NON_CONCRETE_AND_ARRAYS;
            adefaulttyping[3] = NON_FINAL;
            $VALUES = adefaulttyping;
        }

        private DefaultTyping(String s1, int i)
        {
            super(s1, i);
        }
    }


    private class DefaultTypeResolverBuilder extends StdTypeResolverBuilder
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        protected final DefaultTyping _appliesFor;

        public TypeDeserializer buildTypeDeserializer(DeserializationConfig deserializationconfig, JavaType javatype, Collection collection)
        {
            if (useForType(javatype))
            {
                return super.buildTypeDeserializer(deserializationconfig, javatype, collection);
            } else
            {
                return null;
            }
        }

        public TypeSerializer buildTypeSerializer(SerializationConfig serializationconfig, JavaType javatype, Collection collection)
        {
            if (useForType(javatype))
            {
                return super.buildTypeSerializer(serializationconfig, javatype, collection);
            } else
            {
                return null;
            }
        }

        public boolean useForType(JavaType javatype)
        {
            _cls2..SwitchMap.com.fasterxml.jackson.databind.ObjectMapper.DefaultTyping[_appliesFor.ordinal()];
            JVM INSTR tableswitch 1 3: default 36
        //                       1 55
        //                       2 70
        //                       3 94;
               goto _L1 _L2 _L3 _L4
_L1:
            boolean flag1;
            Class class1 = javatype.getRawClass();
            flag1 = false;
            if (class1 == java/lang/Object)
            {
                flag1 = true;
            }
_L6:
            return flag1;
_L2:
            for (; javatype.isArrayType(); javatype = javatype.getContentType()) { }
_L3:
            boolean flag2;
            if (javatype.getRawClass() == java/lang/Object)
            {
                break; /* Loop/switch isn't completed */
            }
            flag2 = javatype.isConcrete();
            flag1 = false;
            if (flag2) goto _L6; else goto _L5
_L5:
            return true;
_L4:
            for (; javatype.isArrayType(); javatype = javatype.getContentType()) { }
            boolean flag = javatype.isFinal();
            flag1 = false;
            if (!flag)
            {
                return true;
            }
            if (true) goto _L6; else goto _L7
_L7:
        }

        public DefaultTypeResolverBuilder(DefaultTyping defaulttyping)
        {
            _appliesFor = defaulttyping;
        }

        private class _cls2
        {

            static final int $SwitchMap$com$fasterxml$jackson$databind$ObjectMapper$DefaultTyping[];

            static 
            {
                $SwitchMap$com$fasterxml$jackson$databind$ObjectMapper$DefaultTyping = new int[DefaultTyping.values().length];
                try
                {
                    $SwitchMap$com$fasterxml$jackson$databind$ObjectMapper$DefaultTyping[DefaultTyping.NON_CONCRETE_AND_ARRAYS.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$fasterxml$jackson$databind$ObjectMapper$DefaultTyping[DefaultTyping.OBJECT_AND_NON_CONCRETE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$fasterxml$jackson$databind$ObjectMapper$DefaultTyping[DefaultTyping.NON_FINAL.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

    }


    private class _cls1
        implements Module.SetupContext
    {

        final ObjectMapper this$0;
        final ObjectMapper val$mapper;

        public void addAbstractTypeResolver(AbstractTypeResolver abstracttyperesolver)
        {
            DeserializerFactory deserializerfactory = mapper._deserializationContext._factory.withAbstractTypeResolver(abstracttyperesolver);
            mapper._deserializationContext = mapper._deserializationContext.with(deserializerfactory);
        }

        public void addBeanDeserializerModifier(BeanDeserializerModifier beandeserializermodifier)
        {
            DeserializerFactory deserializerfactory = mapper._deserializationContext._factory.withDeserializerModifier(beandeserializermodifier);
            mapper._deserializationContext = mapper._deserializationContext.with(deserializerfactory);
        }

        public void addBeanSerializerModifier(BeanSerializerModifier beanserializermodifier)
        {
            mapper._serializerFactory = mapper._serializerFactory.withSerializerModifier(beanserializermodifier);
        }

        public void addDeserializationProblemHandler(DeserializationProblemHandler deserializationproblemhandler)
        {
            mapper.addHandler(deserializationproblemhandler);
        }

        public void addDeserializers(Deserializers deserializers)
        {
            DeserializerFactory deserializerfactory = mapper._deserializationContext._factory.withAdditionalDeserializers(deserializers);
            mapper._deserializationContext = mapper._deserializationContext.with(deserializerfactory);
        }

        public void addKeyDeserializers(KeyDeserializers keydeserializers)
        {
            DeserializerFactory deserializerfactory = mapper._deserializationContext._factory.withAdditionalKeyDeserializers(keydeserializers);
            mapper._deserializationContext = mapper._deserializationContext.with(deserializerfactory);
        }

        public void addKeySerializers(Serializers serializers)
        {
            mapper._serializerFactory = mapper._serializerFactory.withAdditionalKeySerializers(serializers);
        }

        public void addSerializers(Serializers serializers)
        {
            mapper._serializerFactory = mapper._serializerFactory.withAdditionalSerializers(serializers);
        }

        public void addTypeModifier(TypeModifier typemodifier)
        {
            TypeFactory typefactory = mapper._typeFactory.withModifier(typemodifier);
            mapper.setTypeFactory(typefactory);
        }

        public void addValueInstantiators(ValueInstantiators valueinstantiators)
        {
            DeserializerFactory deserializerfactory = mapper._deserializationContext._factory.withValueInstantiators(valueinstantiators);
            mapper._deserializationContext = mapper._deserializationContext.with(deserializerfactory);
        }

        public void appendAnnotationIntrospector(AnnotationIntrospector annotationintrospector)
        {
            mapper._deserializationConfig = mapper._deserializationConfig.withAppendedAnnotationIntrospector(annotationintrospector);
            mapper._serializationConfig = mapper._serializationConfig.withAppendedAnnotationIntrospector(annotationintrospector);
        }

        public w getMapperVersion()
        {
            return version();
        }

        public s getOwner()
        {
            return mapper;
        }

        public TypeFactory getTypeFactory()
        {
            return _typeFactory;
        }

        public void insertAnnotationIntrospector(AnnotationIntrospector annotationintrospector)
        {
            mapper._deserializationConfig = mapper._deserializationConfig.withInsertedAnnotationIntrospector(annotationintrospector);
            mapper._serializationConfig = mapper._serializationConfig.withInsertedAnnotationIntrospector(annotationintrospector);
        }

        public boolean isEnabled(f f)
        {
            return mapper.isEnabled(f);
        }

        public boolean isEnabled(i i)
        {
            return mapper.isEnabled(i);
        }

        public boolean isEnabled(n n)
        {
            return mapper.isEnabled(n);
        }

        public boolean isEnabled(DeserializationFeature deserializationfeature)
        {
            return mapper.isEnabled(deserializationfeature);
        }

        public boolean isEnabled(MapperFeature mapperfeature)
        {
            return mapper.isEnabled(mapperfeature);
        }

        public boolean isEnabled(SerializationFeature serializationfeature)
        {
            return mapper.isEnabled(serializationfeature);
        }

        public transient void registerSubtypes(NamedType anamedtype[])
        {
            mapper.registerSubtypes(anamedtype);
        }

        public transient void registerSubtypes(Class aclass[])
        {
            mapper.registerSubtypes(aclass);
        }

        public void setClassIntrospector(ClassIntrospector classintrospector)
        {
            mapper._deserializationConfig = mapper._deserializationConfig.with(classintrospector);
            mapper._serializationConfig = mapper._serializationConfig.with(classintrospector);
        }

        public void setMixInAnnotations(Class class1, Class class2)
        {
            mapper.addMixInAnnotations(class1, class2);
        }

        _cls1()
        {
            this$0 = ObjectMapper.this;
            mapper = objectmapper1;
            super();
        }
    }

}
