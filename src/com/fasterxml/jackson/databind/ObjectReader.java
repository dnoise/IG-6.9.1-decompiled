// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.a.c;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.f.a;
import com.fasterxml.jackson.a.f.b;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.j;
import com.fasterxml.jackson.a.k;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.n;
import com.fasterxml.jackson.a.p;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.a.s;
import com.fasterxml.jackson.a.v;
import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.a.x;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.fasterxml.jackson.databind.deser.DataFormatReaders;
import com.fasterxml.jackson.databind.deser.DefaultDeserializationContext;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.NullNode;
import com.fasterxml.jackson.databind.node.TreeTraversingParser;
import com.fasterxml.jackson.databind.type.SimpleType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.net.URL;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.fasterxml.jackson.databind:
//            JsonNode, ObjectMapper, JavaType, DeserializationConfig, 
//            JsonMappingException, JsonDeserializer, MappingIterator, DeserializationContext, 
//            DeserializationFeature, InjectableValues, MapperFeature

public class ObjectReader extends s
    implements x, Serializable
{

    private static final JavaType JSON_NODE_TYPE = SimpleType.constructUnsafe(com/fasterxml/jackson/databind/JsonNode);
    private static final long serialVersionUID = 0xc4ffd6d3565588ffL;
    protected final DeserializationConfig _config;
    protected final DefaultDeserializationContext _context;
    protected final DataFormatReaders _dataFormatReaders;
    protected final InjectableValues _injectableValues;
    protected final e _jsonFactory;
    protected final JsonDeserializer _rootDeserializer;
    protected final ConcurrentHashMap _rootDeserializers;
    protected final RootNameLookup _rootNames;
    protected final c _schema;
    protected final boolean _unwrapRoot;
    protected final Object _valueToUpdate;
    protected final JavaType _valueType;

    protected ObjectReader(ObjectMapper objectmapper, DeserializationConfig deserializationconfig)
    {
        this(objectmapper, deserializationconfig, null, null, null, null);
    }

    protected ObjectReader(ObjectMapper objectmapper, DeserializationConfig deserializationconfig, JavaType javatype, Object obj, c c, InjectableValues injectablevalues)
    {
        _config = deserializationconfig;
        _context = objectmapper._deserializationContext;
        _rootDeserializers = objectmapper._rootDeserializers;
        _jsonFactory = objectmapper._jsonFactory;
        _rootNames = objectmapper._rootNames;
        _valueType = javatype;
        _valueToUpdate = obj;
        if (obj != null && javatype.isArrayType())
        {
            throw new IllegalArgumentException("Can not update an array value");
        } else
        {
            _schema = c;
            _injectableValues = injectablevalues;
            _unwrapRoot = deserializationconfig.useRootWrapping();
            _rootDeserializer = _prefetchRootDeserializer(deserializationconfig, javatype);
            _dataFormatReaders = null;
            return;
        }
    }

    protected ObjectReader(ObjectReader objectreader, e e1)
    {
        _config = objectreader._config;
        _context = objectreader._context;
        _rootDeserializers = objectreader._rootDeserializers;
        _jsonFactory = e1;
        _rootNames = objectreader._rootNames;
        _valueType = objectreader._valueType;
        _rootDeserializer = objectreader._rootDeserializer;
        _valueToUpdate = objectreader._valueToUpdate;
        _schema = objectreader._schema;
        _injectableValues = objectreader._injectableValues;
        _unwrapRoot = objectreader._unwrapRoot;
        _dataFormatReaders = objectreader._dataFormatReaders;
    }

    protected ObjectReader(ObjectReader objectreader, DeserializationConfig deserializationconfig)
    {
        _config = deserializationconfig;
        _context = objectreader._context;
        _rootDeserializers = objectreader._rootDeserializers;
        _jsonFactory = objectreader._jsonFactory;
        _rootNames = objectreader._rootNames;
        _valueType = objectreader._valueType;
        _rootDeserializer = objectreader._rootDeserializer;
        _valueToUpdate = objectreader._valueToUpdate;
        _schema = objectreader._schema;
        _injectableValues = objectreader._injectableValues;
        _unwrapRoot = deserializationconfig.useRootWrapping();
        _dataFormatReaders = objectreader._dataFormatReaders;
    }

    protected ObjectReader(ObjectReader objectreader, DeserializationConfig deserializationconfig, JavaType javatype, JsonDeserializer jsondeserializer, Object obj, c c, InjectableValues injectablevalues, 
            DataFormatReaders dataformatreaders)
    {
        _config = deserializationconfig;
        _context = objectreader._context;
        _rootDeserializers = objectreader._rootDeserializers;
        _jsonFactory = objectreader._jsonFactory;
        _rootNames = objectreader._rootNames;
        _valueType = javatype;
        _rootDeserializer = jsondeserializer;
        _valueToUpdate = obj;
        if (obj != null && javatype.isArrayType())
        {
            throw new IllegalArgumentException("Can not update an array value");
        } else
        {
            _schema = c;
            _injectableValues = injectablevalues;
            _unwrapRoot = deserializationconfig.useRootWrapping();
            _dataFormatReaders = dataformatreaders;
            return;
        }
    }

    protected static r _initForReading(l l1)
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

    protected Object _bind(l l1, Object obj)
    {
        r r1 = _initForReading(l1);
        if (r1 != r.m) goto _L2; else goto _L1
_L1:
        if (obj == null)
        {
            obj = _findRootDeserializer(createDeserializationContext(l1, _config), _valueType).getNullValue();
        }
_L4:
        l1.clearCurrentToken();
        return obj;
_L2:
        if (r1 != r.e && r1 != r.c)
        {
            DefaultDeserializationContext defaultdeserializationcontext = createDeserializationContext(l1, _config);
            JsonDeserializer jsondeserializer = _findRootDeserializer(defaultdeserializationcontext, _valueType);
            if (_unwrapRoot)
            {
                obj = _unwrapAndDeserialize(l1, defaultdeserializationcontext, _valueType, jsondeserializer);
            } else
            if (obj == null)
            {
                obj = jsondeserializer.deserialize(l1, defaultdeserializationcontext);
            } else
            {
                jsondeserializer.deserialize(l1, defaultdeserializationcontext, obj);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected Object _bindAndClose(l l1, Object obj)
    {
        if (_schema != null)
        {
            l1.setSchema(_schema);
        }
        r r1 = _initForReading(l1);
        if (r1 != r.m) goto _L2; else goto _L1
_L1:
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        Object obj1 = _findRootDeserializer(createDeserializationContext(l1, _config), _valueType).getNullValue();
        obj = obj1;
_L4:
        Exception exception;
        DefaultDeserializationContext defaultdeserializationcontext;
        JsonDeserializer jsondeserializer;
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
        if (r1 == r.e || r1 == r.c) goto _L4; else goto _L3
_L3:
        defaultdeserializationcontext = createDeserializationContext(l1, _config);
        jsondeserializer = _findRootDeserializer(defaultdeserializationcontext, _valueType);
        if (!_unwrapRoot)
        {
            break MISSING_BLOCK_LABEL_127;
        }
        obj = _unwrapAndDeserialize(l1, defaultdeserializationcontext, _valueType, jsondeserializer);
          goto _L4
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_143;
        }
        obj = jsondeserializer.deserialize(l1, defaultdeserializationcontext);
          goto _L4
        jsondeserializer.deserialize(l1, defaultdeserializationcontext, obj);
          goto _L4
        exception;
        try
        {
            l1.close();
        }
        catch (IOException ioexception) { }
        throw exception;
    }

    protected JsonNode _bindAndCloseAsTree(l l1)
    {
        if (_schema != null)
        {
            l1.setSchema(_schema);
        }
        JsonNode jsonnode = _bindAsTree(l1);
        Exception exception;
        try
        {
            l1.close();
        }
        catch (IOException ioexception1)
        {
            return jsonnode;
        }
        return jsonnode;
        exception;
        try
        {
            l1.close();
        }
        catch (IOException ioexception) { }
        throw exception;
    }

    protected MappingIterator _bindAndReadValues(l l1, Object obj)
    {
        if (_schema != null)
        {
            l1.setSchema(_schema);
        }
        l1.nextToken();
        DefaultDeserializationContext defaultdeserializationcontext = createDeserializationContext(l1, _config);
        return new MappingIterator(_valueType, l1, defaultdeserializationcontext, _findRootDeserializer(defaultdeserializationcontext, _valueType), true, _valueToUpdate);
    }

    protected JsonNode _bindAsTree(l l1)
    {
        r r1 = _initForReading(l1);
        Object obj;
        if (r1 == r.m || r1 == r.e || r1 == r.c)
        {
            obj = NullNode.instance;
        } else
        {
            DefaultDeserializationContext defaultdeserializationcontext = createDeserializationContext(l1, _config);
            JsonDeserializer jsondeserializer = _findRootDeserializer(defaultdeserializationcontext, JSON_NODE_TYPE);
            if (_unwrapRoot)
            {
                obj = (JsonNode)_unwrapAndDeserialize(l1, defaultdeserializationcontext, JSON_NODE_TYPE, jsondeserializer);
            } else
            {
                obj = (JsonNode)jsondeserializer.deserialize(l1, defaultdeserializationcontext);
            }
        }
        l1.clearCurrentToken();
        return ((JsonNode) (obj));
    }

    protected Object _detectBindAndClose(com.fasterxml.jackson.databind.deser.DataFormatReaders.Match match, boolean flag)
    {
        if (!match.hasMatch())
        {
            _reportUnkownFormat(_dataFormatReaders, match);
        }
        l l1 = match.createParserWithMatch();
        if (flag)
        {
            l1.enable(n.a);
        }
        return match.getReader()._bindAndClose(l1, _valueToUpdate);
    }

    protected Object _detectBindAndClose(byte abyte0[], int i, int i1)
    {
        com.fasterxml.jackson.databind.deser.DataFormatReaders.Match match = _dataFormatReaders.findFormat(abyte0, i, i1);
        if (!match.hasMatch())
        {
            _reportUnkownFormat(_dataFormatReaders, match);
        }
        l l1 = match.createParserWithMatch();
        return match.getReader()._bindAndClose(l1, _valueToUpdate);
    }

    protected JsonNode _detectBindAndCloseAsTree(InputStream inputstream)
    {
        com.fasterxml.jackson.databind.deser.DataFormatReaders.Match match = _dataFormatReaders.findFormat(inputstream);
        if (!match.hasMatch())
        {
            _reportUnkownFormat(_dataFormatReaders, match);
        }
        l l1 = match.createParserWithMatch();
        l1.enable(n.a);
        return match.getReader()._bindAndCloseAsTree(l1);
    }

    protected MappingIterator _detectBindAndReadValues(com.fasterxml.jackson.databind.deser.DataFormatReaders.Match match, boolean flag)
    {
        if (!match.hasMatch())
        {
            _reportUnkownFormat(_dataFormatReaders, match);
        }
        l l1 = match.createParserWithMatch();
        if (flag)
        {
            l1.enable(n.a);
        }
        return match.getReader()._bindAndReadValues(l1, _valueToUpdate);
    }

    protected JsonDeserializer _findRootDeserializer(DeserializationContext deserializationcontext, JavaType javatype)
    {
        JsonDeserializer jsondeserializer;
        if (_rootDeserializer != null)
        {
            jsondeserializer = _rootDeserializer;
        } else
        {
            if (javatype == null)
            {
                throw new JsonMappingException("No value type configured for ObjectReader");
            }
            jsondeserializer = (JsonDeserializer)_rootDeserializers.get(javatype);
            if (jsondeserializer == null)
            {
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
        }
        return jsondeserializer;
    }

    protected InputStream _inputStream(File file)
    {
        return new FileInputStream(file);
    }

    protected InputStream _inputStream(URL url)
    {
        return url.openStream();
    }

    protected JsonDeserializer _prefetchRootDeserializer(DeserializationConfig deserializationconfig, JavaType javatype)
    {
        JsonDeserializer jsondeserializer = null;
        if (javatype == null) goto _L2; else goto _L1
_L1:
        boolean flag;
        flag = _config.isEnabled(DeserializationFeature.EAGER_DESERIALIZER_FETCH);
        jsondeserializer = null;
        if (flag) goto _L3; else goto _L2
_L2:
        return jsondeserializer;
_L3:
        if ((jsondeserializer = (JsonDeserializer)_rootDeserializers.get(javatype)) != null) goto _L2; else goto _L4
_L4:
        try
        {
            jsondeserializer = createDeserializationContext(null, _config).findRootValueDeserializer(javatype);
        }
        catch (p p1)
        {
            return jsondeserializer;
        }
        if (jsondeserializer == null) goto _L2; else goto _L5
_L5:
        _rootDeserializers.put(javatype, jsondeserializer);
        return jsondeserializer;
    }

    protected void _reportUndetectableSource(Object obj)
    {
        throw new k((new StringBuilder("Can not use source of type ")).append(obj.getClass().getName()).append(" with format auto-detection: must be byte- not char-based").toString(), j.a);
    }

    protected void _reportUnkownFormat(DataFormatReaders dataformatreaders, com.fasterxml.jackson.databind.deser.DataFormatReaders.Match match)
    {
        throw new k((new StringBuilder("Can not detect format from input, does not look like any of detectable formats ")).append(dataformatreaders.toString()).toString(), j.a);
    }

    protected Object _unwrapAndDeserialize(l l1, DeserializationContext deserializationcontext, JavaType javatype, JsonDeserializer jsondeserializer)
    {
        String s1 = _config.getRootName();
        if (s1 == null)
        {
            s1 = _rootNames.findRootName(javatype, _config).a();
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
        Object obj;
        if (_valueToUpdate == null)
        {
            obj = jsondeserializer.deserialize(l1, deserializationcontext);
        } else
        {
            jsondeserializer.deserialize(l1, deserializationcontext, _valueToUpdate);
            obj = _valueToUpdate;
        }
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

    protected ObjectReader _with(DeserializationConfig deserializationconfig)
    {
        if (deserializationconfig == _config)
        {
            return this;
        }
        if (_dataFormatReaders != null)
        {
            return (new ObjectReader(this, deserializationconfig)).withFormatDetection(_dataFormatReaders.with(deserializationconfig));
        } else
        {
            return new ObjectReader(this, deserializationconfig);
        }
    }

    public volatile v createArrayNode()
    {
        return createArrayNode();
    }

    public JsonNode createArrayNode()
    {
        return _config.getNodeFactory().arrayNode();
    }

    protected DefaultDeserializationContext createDeserializationContext(l l1, DeserializationConfig deserializationconfig)
    {
        return _context.createInstance(deserializationconfig, l1, _injectableValues);
    }

    public volatile v createObjectNode()
    {
        return createObjectNode();
    }

    public JsonNode createObjectNode()
    {
        return _config.getNodeFactory().objectNode();
    }

    public DeserializationConfig getConfig()
    {
        return _config;
    }

    public e getFactory()
    {
        return _jsonFactory;
    }

    public e getJsonFactory()
    {
        return _jsonFactory;
    }

    public TypeFactory getTypeFactory()
    {
        return _config.getTypeFactory();
    }

    public boolean isEnabled(n n1)
    {
        return _jsonFactory.isEnabled(n1);
    }

    public boolean isEnabled(DeserializationFeature deserializationfeature)
    {
        return _config.isEnabled(deserializationfeature);
    }

    public boolean isEnabled(MapperFeature mapperfeature)
    {
        return _config.isEnabled(mapperfeature);
    }

    public v readTree(l l1)
    {
        return _bindAsTree(l1);
    }

    public JsonNode readTree(InputStream inputstream)
    {
        if (_dataFormatReaders != null)
        {
            return _detectBindAndCloseAsTree(inputstream);
        } else
        {
            return _bindAndCloseAsTree(_jsonFactory.createParser(inputstream));
        }
    }

    public JsonNode readTree(Reader reader)
    {
        if (_dataFormatReaders != null)
        {
            _reportUndetectableSource(reader);
        }
        return _bindAndCloseAsTree(_jsonFactory.createParser(reader));
    }

    public JsonNode readTree(String s1)
    {
        if (_dataFormatReaders != null)
        {
            _reportUndetectableSource(s1);
        }
        return _bindAndCloseAsTree(_jsonFactory.createParser(s1));
    }

    public Object readValue(l l1)
    {
        return _bind(l1, _valueToUpdate);
    }

    public Object readValue(l l1, a a)
    {
        return withType((JavaType)a).readValue(l1);
    }

    public Object readValue(l l1, b b1)
    {
        return withType(b1).readValue(l1);
    }

    public Object readValue(l l1, JavaType javatype)
    {
        return withType(javatype).readValue(l1);
    }

    public Object readValue(l l1, Class class1)
    {
        return withType(class1).readValue(l1);
    }

    public Object readValue(JsonNode jsonnode)
    {
        if (_dataFormatReaders != null)
        {
            _reportUndetectableSource(jsonnode);
        }
        return _bindAndClose(treeAsTokens(jsonnode), _valueToUpdate);
    }

    public Object readValue(File file)
    {
        if (_dataFormatReaders != null)
        {
            return _detectBindAndClose(_dataFormatReaders.findFormat(_inputStream(file)), true);
        } else
        {
            return _bindAndClose(_jsonFactory.createParser(file), _valueToUpdate);
        }
    }

    public Object readValue(InputStream inputstream)
    {
        if (_dataFormatReaders != null)
        {
            return _detectBindAndClose(_dataFormatReaders.findFormat(inputstream), false);
        } else
        {
            return _bindAndClose(_jsonFactory.createParser(inputstream), _valueToUpdate);
        }
    }

    public Object readValue(Reader reader)
    {
        if (_dataFormatReaders != null)
        {
            _reportUndetectableSource(reader);
        }
        return _bindAndClose(_jsonFactory.createParser(reader), _valueToUpdate);
    }

    public Object readValue(String s1)
    {
        if (_dataFormatReaders != null)
        {
            _reportUndetectableSource(s1);
        }
        return _bindAndClose(_jsonFactory.createParser(s1), _valueToUpdate);
    }

    public Object readValue(URL url)
    {
        if (_dataFormatReaders != null)
        {
            return _detectBindAndClose(_dataFormatReaders.findFormat(_inputStream(url)), true);
        } else
        {
            return _bindAndClose(_jsonFactory.createParser(url), _valueToUpdate);
        }
    }

    public Object readValue(byte abyte0[])
    {
        if (_dataFormatReaders != null)
        {
            return _detectBindAndClose(abyte0, 0, abyte0.length);
        } else
        {
            return _bindAndClose(_jsonFactory.createParser(abyte0), _valueToUpdate);
        }
    }

    public Object readValue(byte abyte0[], int i, int i1)
    {
        if (_dataFormatReaders != null)
        {
            return _detectBindAndClose(abyte0, i, i1);
        } else
        {
            return _bindAndClose(_jsonFactory.createParser(abyte0, i, i1), _valueToUpdate);
        }
    }

    public MappingIterator readValues(l l1)
    {
        DefaultDeserializationContext defaultdeserializationcontext = createDeserializationContext(l1, _config);
        return new MappingIterator(_valueType, l1, defaultdeserializationcontext, _findRootDeserializer(defaultdeserializationcontext, _valueType), false, _valueToUpdate);
    }

    public MappingIterator readValues(File file)
    {
        if (_dataFormatReaders != null)
        {
            return _detectBindAndReadValues(_dataFormatReaders.findFormat(_inputStream(file)), false);
        } else
        {
            return _bindAndReadValues(_jsonFactory.createParser(file), _valueToUpdate);
        }
    }

    public MappingIterator readValues(InputStream inputstream)
    {
        if (_dataFormatReaders != null)
        {
            return _detectBindAndReadValues(_dataFormatReaders.findFormat(inputstream), false);
        } else
        {
            return _bindAndReadValues(_jsonFactory.createParser(inputstream), _valueToUpdate);
        }
    }

    public MappingIterator readValues(Reader reader)
    {
        if (_dataFormatReaders != null)
        {
            _reportUndetectableSource(reader);
        }
        l l1 = _jsonFactory.createParser(reader);
        if (_schema != null)
        {
            l1.setSchema(_schema);
        }
        l1.nextToken();
        DefaultDeserializationContext defaultdeserializationcontext = createDeserializationContext(l1, _config);
        return new MappingIterator(_valueType, l1, defaultdeserializationcontext, _findRootDeserializer(defaultdeserializationcontext, _valueType), true, _valueToUpdate);
    }

    public MappingIterator readValues(String s1)
    {
        if (_dataFormatReaders != null)
        {
            _reportUndetectableSource(s1);
        }
        l l1 = _jsonFactory.createParser(s1);
        if (_schema != null)
        {
            l1.setSchema(_schema);
        }
        l1.nextToken();
        DefaultDeserializationContext defaultdeserializationcontext = createDeserializationContext(l1, _config);
        return new MappingIterator(_valueType, l1, defaultdeserializationcontext, _findRootDeserializer(defaultdeserializationcontext, _valueType), true, _valueToUpdate);
    }

    public MappingIterator readValues(URL url)
    {
        if (_dataFormatReaders != null)
        {
            return _detectBindAndReadValues(_dataFormatReaders.findFormat(_inputStream(url)), true);
        } else
        {
            return _bindAndReadValues(_jsonFactory.createParser(url), _valueToUpdate);
        }
    }

    public final MappingIterator readValues(byte abyte0[])
    {
        return readValues(abyte0, 0, abyte0.length);
    }

    public MappingIterator readValues(byte abyte0[], int i, int i1)
    {
        if (_dataFormatReaders != null)
        {
            return _detectBindAndReadValues(_dataFormatReaders.findFormat(abyte0, i, i1), false);
        } else
        {
            return _bindAndReadValues(_jsonFactory.createParser(abyte0), _valueToUpdate);
        }
    }

    public Iterator readValues(l l1, a a)
    {
        return readValues(l1, (JavaType)a);
    }

    public Iterator readValues(l l1, b b1)
    {
        return withType(b1).readValues(l1);
    }

    public Iterator readValues(l l1, JavaType javatype)
    {
        return withType(javatype).readValues(l1);
    }

    public Iterator readValues(l l1, Class class1)
    {
        return withType(class1).readValues(l1);
    }

    public l treeAsTokens(v v)
    {
        return new TreeTraversingParser((JsonNode)v, this);
    }

    public Object treeToValue(v v, Class class1)
    {
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

    public w version()
    {
        return PackageVersion.VERSION;
    }

    public ObjectReader with(com.fasterxml.jackson.a.a a)
    {
        return _with(_config.with(a));
    }

    public ObjectReader with(c c)
    {
        if (_schema == c)
        {
            return this;
        } else
        {
            _verifySchemaType(c);
            return new ObjectReader(this, _config, _valueType, _rootDeserializer, _valueToUpdate, c, _injectableValues, _dataFormatReaders);
        }
    }

    public ObjectReader with(e e1)
    {
        if (e1 == _jsonFactory)
        {
            return this;
        }
        ObjectReader objectreader = new ObjectReader(this, e1);
        if (e1.getCodec() == null)
        {
            e1.setCodec(objectreader);
        }
        return objectreader;
    }

    public ObjectReader with(DeserializationConfig deserializationconfig)
    {
        return _with(deserializationconfig);
    }

    public ObjectReader with(DeserializationFeature deserializationfeature)
    {
        return _with(_config.with(deserializationfeature));
    }

    public transient ObjectReader with(DeserializationFeature deserializationfeature, DeserializationFeature adeserializationfeature[])
    {
        return _with(_config.with(deserializationfeature, adeserializationfeature));
    }

    public ObjectReader with(InjectableValues injectablevalues)
    {
        if (_injectableValues == injectablevalues)
        {
            return this;
        } else
        {
            return new ObjectReader(this, _config, _valueType, _rootDeserializer, _valueToUpdate, _schema, injectablevalues, _dataFormatReaders);
        }
    }

    public ObjectReader with(JsonNodeFactory jsonnodefactory)
    {
        return _with(_config.with(jsonnodefactory));
    }

    public ObjectReader with(Locale locale)
    {
        return _with(_config.with(locale));
    }

    public ObjectReader with(TimeZone timezone)
    {
        return _with(_config.with(timezone));
    }

    public transient ObjectReader withFeatures(DeserializationFeature adeserializationfeature[])
    {
        return _with(_config.withFeatures(adeserializationfeature));
    }

    public ObjectReader withFormatDetection(DataFormatReaders dataformatreaders)
    {
        return new ObjectReader(this, _config, _valueType, _rootDeserializer, _valueToUpdate, _schema, _injectableValues, dataformatreaders);
    }

    public transient ObjectReader withFormatDetection(ObjectReader aobjectreader[])
    {
        return withFormatDetection(new DataFormatReaders(aobjectreader));
    }

    public ObjectReader withHandler(DeserializationProblemHandler deserializationproblemhandler)
    {
        return _with(_config.withHandler(deserializationproblemhandler));
    }

    public ObjectReader withRootName(String s1)
    {
        return _with(_config.withRootName(s1));
    }

    public ObjectReader withType(b b1)
    {
        return withType(_config.getTypeFactory().constructType(b1.a()));
    }

    public ObjectReader withType(JavaType javatype)
    {
        if (javatype != null && javatype.equals(_valueType))
        {
            return this;
        }
        JsonDeserializer jsondeserializer = _prefetchRootDeserializer(_config, javatype);
        DataFormatReaders dataformatreaders = _dataFormatReaders;
        if (dataformatreaders != null)
        {
            dataformatreaders = dataformatreaders.withType(javatype);
        }
        return new ObjectReader(this, _config, javatype, jsondeserializer, _valueToUpdate, _schema, _injectableValues, dataformatreaders);
    }

    public ObjectReader withType(Class class1)
    {
        return withType(_config.constructType(class1));
    }

    public ObjectReader withType(Type type)
    {
        return withType(_config.getTypeFactory().constructType(type));
    }

    public ObjectReader withValueToUpdate(Object obj)
    {
        if (obj == _valueToUpdate)
        {
            return this;
        }
        if (obj == null)
        {
            throw new IllegalArgumentException("cat not update null value");
        }
        JavaType javatype;
        if (_valueType == null)
        {
            javatype = _config.constructType(obj.getClass());
        } else
        {
            javatype = _valueType;
        }
        return new ObjectReader(this, _config, javatype, _rootDeserializer, obj, _schema, _injectableValues, _dataFormatReaders);
    }

    public ObjectReader withView(Class class1)
    {
        return _with(_config.withView(class1));
    }

    public ObjectReader without(DeserializationFeature deserializationfeature)
    {
        return _with(_config.without(deserializationfeature));
    }

    public transient ObjectReader without(DeserializationFeature deserializationfeature, DeserializationFeature adeserializationfeature[])
    {
        return _with(_config.without(deserializationfeature, adeserializationfeature));
    }

    public transient ObjectReader withoutFeatures(DeserializationFeature adeserializationfeature[])
    {
        return _with(_config.withoutFeatures(adeserializationfeature));
    }

    public void writeValue(h h, Object obj)
    {
        throw new UnsupportedOperationException("Not implemented for ObjectReader");
    }

}
