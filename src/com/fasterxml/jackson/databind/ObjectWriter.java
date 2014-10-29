// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.a.c;
import com.fasterxml.jackson.a.c.k;
import com.fasterxml.jackson.a.d;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.f.b;
import com.fasterxml.jackson.a.g.j;
import com.fasterxml.jackson.a.g.n;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.p;
import com.fasterxml.jackson.a.t;
import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.a.x;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider;
import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.SerializerFactory;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.Writer;
import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;

// Referenced classes of package com.fasterxml.jackson.databind:
//            ObjectMapper, JavaType, SerializationFeature, SerializationConfig, 
//            JsonMappingException, JsonSerializer, MapperFeature

public class ObjectWriter
    implements x, Serializable
{

    protected static final t NULL_PRETTY_PRINTER = new n();
    private static final long serialVersionUID = 0x9e82ca574efec4f4L;
    protected final SerializationConfig _config;
    protected final e _jsonFactory;
    protected final t _prettyPrinter;
    protected final JsonSerializer _rootSerializer;
    protected final JavaType _rootType;
    protected final c _schema;
    protected final SerializerFactory _serializerFactory;
    protected final DefaultSerializerProvider _serializerProvider;

    protected ObjectWriter(ObjectMapper objectmapper, SerializationConfig serializationconfig)
    {
        _config = serializationconfig;
        _serializerProvider = objectmapper._serializerProvider;
        _serializerFactory = objectmapper._serializerFactory;
        _jsonFactory = objectmapper._jsonFactory;
        _rootType = null;
        _rootSerializer = null;
        _prettyPrinter = null;
        _schema = null;
    }

    protected ObjectWriter(ObjectMapper objectmapper, SerializationConfig serializationconfig, c c)
    {
        _config = serializationconfig;
        _serializerProvider = objectmapper._serializerProvider;
        _serializerFactory = objectmapper._serializerFactory;
        _jsonFactory = objectmapper._jsonFactory;
        _rootType = null;
        _rootSerializer = null;
        _prettyPrinter = null;
        _schema = c;
    }

    protected ObjectWriter(ObjectMapper objectmapper, SerializationConfig serializationconfig, JavaType javatype, t t1)
    {
        _config = serializationconfig;
        _serializerProvider = objectmapper._serializerProvider;
        _serializerFactory = objectmapper._serializerFactory;
        _jsonFactory = objectmapper._jsonFactory;
        if (javatype != null)
        {
            javatype = javatype.withStaticTyping();
        }
        _rootType = javatype;
        _prettyPrinter = t1;
        _schema = null;
        _rootSerializer = _prefetchRootSerializer(serializationconfig, javatype);
    }

    protected ObjectWriter(ObjectWriter objectwriter, SerializationConfig serializationconfig)
    {
        _config = serializationconfig;
        _serializerProvider = objectwriter._serializerProvider;
        _serializerFactory = objectwriter._serializerFactory;
        _jsonFactory = objectwriter._jsonFactory;
        _schema = objectwriter._schema;
        _rootType = objectwriter._rootType;
        _rootSerializer = objectwriter._rootSerializer;
        _prettyPrinter = objectwriter._prettyPrinter;
    }

    protected ObjectWriter(ObjectWriter objectwriter, SerializationConfig serializationconfig, JavaType javatype, JsonSerializer jsonserializer, t t1, c c)
    {
        _config = serializationconfig;
        _serializerProvider = objectwriter._serializerProvider;
        _serializerFactory = objectwriter._serializerFactory;
        _jsonFactory = objectwriter._jsonFactory;
        _rootType = javatype;
        _rootSerializer = jsonserializer;
        _prettyPrinter = t1;
        _schema = c;
    }

    private void _configureJsonGenerator(h h1)
    {
        if (_prettyPrinter == null) goto _L2; else goto _L1
_L1:
        t t1 = _prettyPrinter;
        if (t1 == NULL_PRETTY_PRINTER)
        {
            h1.setPrettyPrinter(null);
        } else
        {
            if (t1 instanceof j)
            {
                t1 = (t)((j)t1).a();
            }
            h1.setPrettyPrinter(t1);
        }
_L4:
        if (_schema != null)
        {
            h1.setSchema(_schema);
        }
        return;
_L2:
        if (_config.isEnabled(SerializationFeature.INDENT_OUTPUT))
        {
            h1.useDefaultPrettyPrinter();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private final void _writeCloseable(h h1, Object obj, SerializationConfig serializationconfig)
    {
        Closeable closeable = (Closeable)obj;
        if (_rootType != null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        _serializerProvider(serializationconfig).serializeValue(h1, obj);
_L1:
        h1.close();
        closeable.close();
        return;
        _serializerProvider(serializationconfig).serializeValue(h1, obj, _rootType, _rootSerializer);
          goto _L1
        Exception exception;
        exception;
        Closeable closeable1;
        Exception exception1;
        closeable1 = closeable;
        exception1 = exception;
_L3:
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
        if (true) goto _L3; else goto _L2
_L2:
    }

    private final void _writeCloseableValue(h h1, Object obj, SerializationConfig serializationconfig)
    {
        Closeable closeable = (Closeable)obj;
        if (_rootType != null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        _serializerProvider(serializationconfig).serializeValue(h1, obj);
_L1:
        if (_config.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE))
        {
            h1.flush();
        }
        closeable.close();
        return;
        _serializerProvider(serializationconfig).serializeValue(h1, obj, _rootType, _rootSerializer);
          goto _L1
        Exception exception;
        exception;
        Closeable closeable1;
        Exception exception1;
        closeable1 = closeable;
        exception1 = exception;
_L3:
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
        if (true) goto _L3; else goto _L2
_L2:
    }

    protected final void _configAndWriteValue(h h1, Object obj)
    {
        boolean flag;
        _configureJsonGenerator(h1);
        if (_config.isEnabled(SerializationFeature.CLOSE_CLOSEABLE) && (obj instanceof Closeable))
        {
            _writeCloseable(h1, obj, _config);
            return;
        }
        flag = false;
        JavaType javatype = _rootType;
        flag = false;
        if (javatype != null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        _serializerProvider(_config).serializeValue(h1, obj);
_L1:
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
        _serializerProvider(_config).serializeValue(h1, obj, _rootType, _rootSerializer);
          goto _L1
    }

    protected JsonSerializer _prefetchRootSerializer(SerializationConfig serializationconfig, JavaType javatype)
    {
        if (javatype == null || !_config.isEnabled(SerializationFeature.EAGER_SERIALIZER_FETCH))
        {
            return null;
        }
        JsonSerializer jsonserializer;
        try
        {
            jsonserializer = _serializerProvider(serializationconfig).findTypedValueSerializer(javatype, true, null);
        }
        catch (p p1)
        {
            return null;
        }
        return jsonserializer;
    }

    protected DefaultSerializerProvider _serializerProvider(SerializationConfig serializationconfig)
    {
        return _serializerProvider.createInstance(serializationconfig, _serializerFactory);
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
            _serializerProvider(_config).acceptJsonFormatVisitor(javatype, jsonformatvisitorwrapper);
            return;
        }
    }

    public boolean canSerialize(Class class1)
    {
        return _serializerProvider(_config).hasSerializerFor(class1);
    }

    public SerializationConfig getConfig()
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

    public boolean hasPrefetchedSerializer()
    {
        return _rootSerializer != null;
    }

    public boolean isEnabled(com.fasterxml.jackson.a.n n1)
    {
        return _jsonFactory.isEnabled(n1);
    }

    public boolean isEnabled(MapperFeature mapperfeature)
    {
        return _config.isEnabled(mapperfeature);
    }

    public boolean isEnabled(SerializationFeature serializationfeature)
    {
        return _config.isEnabled(serializationfeature);
    }

    public w version()
    {
        return PackageVersion.VERSION;
    }

    public ObjectWriter with(a a)
    {
        SerializationConfig serializationconfig = _config.with(a);
        if (serializationconfig == _config)
        {
            return this;
        } else
        {
            return new ObjectWriter(this, serializationconfig);
        }
    }

    public ObjectWriter with(t t1)
    {
        if (t1 == _prettyPrinter)
        {
            return this;
        }
        if (t1 == null)
        {
            t1 = NULL_PRETTY_PRINTER;
        }
        SerializationConfig serializationconfig = _config;
        JavaType javatype = _rootType;
        JsonSerializer jsonserializer = _rootSerializer;
        c c = _schema;
        return new ObjectWriter(this, serializationconfig, javatype, jsonserializer, t1, c);
    }

    public ObjectWriter with(SerializationFeature serializationfeature)
    {
        SerializationConfig serializationconfig = _config.with(serializationfeature);
        if (serializationconfig == _config)
        {
            return this;
        } else
        {
            return new ObjectWriter(this, serializationconfig);
        }
    }

    public transient ObjectWriter with(SerializationFeature serializationfeature, SerializationFeature aserializationfeature[])
    {
        SerializationConfig serializationconfig = _config.with(serializationfeature, aserializationfeature);
        if (serializationconfig == _config)
        {
            return this;
        } else
        {
            return new ObjectWriter(this, serializationconfig);
        }
    }

    public ObjectWriter with(FilterProvider filterprovider)
    {
        if (filterprovider == _config.getFilterProvider())
        {
            return this;
        } else
        {
            return new ObjectWriter(this, _config.withFilters(filterprovider));
        }
    }

    public ObjectWriter with(DateFormat dateformat)
    {
        SerializationConfig serializationconfig = _config.with(dateformat);
        if (serializationconfig == _config)
        {
            return this;
        } else
        {
            return new ObjectWriter(this, serializationconfig);
        }
    }

    public ObjectWriter with(Locale locale)
    {
        SerializationConfig serializationconfig = _config.with(locale);
        if (serializationconfig == _config)
        {
            return this;
        } else
        {
            return new ObjectWriter(this, serializationconfig);
        }
    }

    public ObjectWriter with(TimeZone timezone)
    {
        SerializationConfig serializationconfig = _config.with(timezone);
        if (serializationconfig == _config)
        {
            return this;
        } else
        {
            return new ObjectWriter(this, serializationconfig);
        }
    }

    public ObjectWriter withDefaultPrettyPrinter()
    {
        return with(new com.fasterxml.jackson.a.g.e());
    }

    public transient ObjectWriter withFeatures(SerializationFeature aserializationfeature[])
    {
        SerializationConfig serializationconfig = _config.withFeatures(aserializationfeature);
        if (serializationconfig == _config)
        {
            return this;
        } else
        {
            return new ObjectWriter(this, serializationconfig);
        }
    }

    public ObjectWriter withRootName(String s)
    {
        SerializationConfig serializationconfig = _config.withRootName(s);
        if (serializationconfig == _config)
        {
            return this;
        } else
        {
            return new ObjectWriter(this, serializationconfig);
        }
    }

    public ObjectWriter withSchema(c c)
    {
        if (_schema == c)
        {
            return this;
        } else
        {
            _verifySchemaType(c);
            return new ObjectWriter(this, _config, _rootType, _rootSerializer, _prettyPrinter, c);
        }
    }

    public ObjectWriter withType(b b1)
    {
        return withType(_config.getTypeFactory().constructType(b1.a()));
    }

    public ObjectWriter withType(JavaType javatype)
    {
        JavaType javatype1 = javatype.withStaticTyping();
        JsonSerializer jsonserializer = _prefetchRootSerializer(_config, javatype1);
        return new ObjectWriter(this, _config, javatype1, jsonserializer, _prettyPrinter, _schema);
    }

    public ObjectWriter withType(Class class1)
    {
        return withType(_config.constructType(class1));
    }

    public ObjectWriter withView(Class class1)
    {
        SerializationConfig serializationconfig = _config.withView(class1);
        if (serializationconfig == _config)
        {
            return this;
        } else
        {
            return new ObjectWriter(this, serializationconfig);
        }
    }

    public ObjectWriter without(SerializationFeature serializationfeature)
    {
        SerializationConfig serializationconfig = _config.without(serializationfeature);
        if (serializationconfig == _config)
        {
            return this;
        } else
        {
            return new ObjectWriter(this, serializationconfig);
        }
    }

    public transient ObjectWriter without(SerializationFeature serializationfeature, SerializationFeature aserializationfeature[])
    {
        SerializationConfig serializationconfig = _config.without(serializationfeature, aserializationfeature);
        if (serializationconfig == _config)
        {
            return this;
        } else
        {
            return new ObjectWriter(this, serializationconfig);
        }
    }

    public transient ObjectWriter withoutFeatures(SerializationFeature aserializationfeature[])
    {
        SerializationConfig serializationconfig = _config.withoutFeatures(aserializationfeature);
        if (serializationconfig == _config)
        {
            return this;
        } else
        {
            return new ObjectWriter(this, serializationconfig);
        }
    }

    public void writeValue(h h1, Object obj)
    {
        _configureJsonGenerator(h1);
        if (_config.isEnabled(SerializationFeature.CLOSE_CLOSEABLE) && (obj instanceof Closeable))
        {
            _writeCloseableValue(h1, obj, _config);
        } else
        {
            if (_rootType == null)
            {
                _serializerProvider(_config).serializeValue(h1, obj);
            } else
            {
                _serializerProvider(_config).serializeValue(h1, obj, _rootType, _rootSerializer);
            }
            if (_config.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE))
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

    public void writeValue(Writer writer, Object obj)
    {
        _configAndWriteValue(_jsonFactory.createGenerator(writer), obj);
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

}
