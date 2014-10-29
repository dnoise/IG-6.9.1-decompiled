// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualKeyDeserializer;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.deser.DeserializerCache;
import com.fasterxml.jackson.databind.deser.DeserializerFactory;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.deser.impl.TypeWrappedDeserializer;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.fasterxml.jackson.databind.exc.UnrecognizedPropertyException;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.LinkedNode;
import com.fasterxml.jackson.databind.util.ObjectBuffer;
import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

// Referenced classes of package com.fasterxml.jackson.databind:
//            DatabindContext, DeserializationConfig, JsonMappingException, InjectableValues, 
//            DeserializationFeature, JsonDeserializer, JavaType, BeanProperty, 
//            KeyDeserializer, AnnotationIntrospector

public abstract class DeserializationContext extends DatabindContext
    implements Serializable
{

    private static final int MAX_ERROR_STR_LEN = 500;
    private static final long serialVersionUID = 0x94c2daea9ee8c98dL;
    protected transient ArrayBuilders _arrayBuilders;
    protected final DeserializerCache _cache;
    protected final DeserializationConfig _config;
    protected transient DateFormat _dateFormat;
    protected final DeserializerFactory _factory;
    protected final int _featureFlags;
    protected final InjectableValues _injectableValues;
    protected transient ObjectBuffer _objectBuffer;
    protected transient l _parser;
    protected final Class _view;

    protected DeserializationContext(DeserializationContext deserializationcontext, DeserializationConfig deserializationconfig, l l1, InjectableValues injectablevalues)
    {
        _cache = deserializationcontext._cache;
        _factory = deserializationcontext._factory;
        _config = deserializationconfig;
        _featureFlags = deserializationconfig.getDeserializationFeatures();
        _view = deserializationconfig.getActiveView();
        _parser = l1;
        _injectableValues = injectablevalues;
    }

    protected DeserializationContext(DeserializationContext deserializationcontext, DeserializerFactory deserializerfactory)
    {
        _cache = deserializationcontext._cache;
        _factory = deserializerfactory;
        _config = deserializationcontext._config;
        _featureFlags = deserializationcontext._featureFlags;
        _view = deserializationcontext._view;
        _parser = deserializationcontext._parser;
        _injectableValues = deserializationcontext._injectableValues;
    }

    protected DeserializationContext(DeserializerFactory deserializerfactory)
    {
        this(deserializerfactory, ((DeserializerCache) (null)));
    }

    protected DeserializationContext(DeserializerFactory deserializerfactory, DeserializerCache deserializercache)
    {
        if (deserializerfactory == null)
        {
            throw new IllegalArgumentException("Can not pass null DeserializerFactory");
        }
        _factory = deserializerfactory;
        if (deserializercache == null)
        {
            deserializercache = new DeserializerCache();
        }
        _cache = deserializercache;
        _featureFlags = 0;
        _config = null;
        _injectableValues = null;
        _view = null;
    }

    protected String _calcName(Class class1)
    {
        if (class1.isArray())
        {
            return (new StringBuilder()).append(_calcName(class1.getComponentType())).append("[]").toString();
        } else
        {
            return class1.getName();
        }
    }

    protected String _desc(String s)
    {
        if (s.length() > 500)
        {
            s = (new StringBuilder()).append(s.substring(0, 500)).append("]...[").append(s.substring(-500 + s.length())).toString();
        }
        return s;
    }

    protected String _valueDesc()
    {
        String s;
        try
        {
            s = _desc(_parser.getText());
        }
        catch (Exception exception)
        {
            return "[N/A]";
        }
        return s;
    }

    public Calendar constructCalendar(Date date)
    {
        Calendar calendar = Calendar.getInstance(getTimeZone());
        calendar.setTime(date);
        return calendar;
    }

    public final JavaType constructType(Class class1)
    {
        return _config.constructType(class1);
    }

    public abstract JsonDeserializer deserializerInstance(Annotated annotated, Object obj);

    protected String determineClassName(Object obj)
    {
        return ClassUtil.getClassDescription(obj);
    }

    public JsonMappingException endOfInputException(Class class1)
    {
        return JsonMappingException.from(_parser, (new StringBuilder("Unexpected end-of-input when trying to deserialize a ")).append(class1.getName()).toString());
    }

    public Class findClass(String s)
    {
        return ClassUtil.findClass(s);
    }

    public final JsonDeserializer findContextualValueDeserializer(JavaType javatype, BeanProperty beanproperty)
    {
        JsonDeserializer jsondeserializer = _cache.findValueDeserializer(this, _factory, javatype);
        if (jsondeserializer != null && (jsondeserializer instanceof ContextualDeserializer))
        {
            jsondeserializer = ((ContextualDeserializer)jsondeserializer).createContextual(this, beanproperty);
        }
        return jsondeserializer;
    }

    public final Object findInjectableValue(Object obj, BeanProperty beanproperty, Object obj1)
    {
        if (_injectableValues == null)
        {
            throw new IllegalStateException((new StringBuilder("No 'injectableValues' configured, can not inject value with id [")).append(obj).append("]").toString());
        } else
        {
            return _injectableValues.findInjectableValue(obj, this, beanproperty, obj1);
        }
    }

    public final KeyDeserializer findKeyDeserializer(JavaType javatype, BeanProperty beanproperty)
    {
        KeyDeserializer keydeserializer = _cache.findKeyDeserializer(this, _factory, javatype);
        if (keydeserializer instanceof ContextualKeyDeserializer)
        {
            keydeserializer = ((ContextualKeyDeserializer)keydeserializer).createContextual(this, beanproperty);
        }
        return keydeserializer;
    }

    public abstract ReadableObjectId findObjectId(Object obj, ObjectIdGenerator objectidgenerator);

    public final JsonDeserializer findRootValueDeserializer(JavaType javatype)
    {
        JsonDeserializer jsondeserializer = _cache.findValueDeserializer(this, _factory, javatype);
        if (jsondeserializer == null)
        {
            jsondeserializer = null;
        } else
        {
            if (jsondeserializer instanceof ContextualDeserializer)
            {
                jsondeserializer = ((ContextualDeserializer)jsondeserializer).createContextual(this, null);
            }
            TypeDeserializer typedeserializer = _factory.findTypeDeserializer(_config, javatype);
            if (typedeserializer != null)
            {
                return new TypeWrappedDeserializer(typedeserializer.forProperty(null), jsondeserializer);
            }
        }
        return jsondeserializer;
    }

    public final Class getActiveView()
    {
        return _view;
    }

    public final AnnotationIntrospector getAnnotationIntrospector()
    {
        return _config.getAnnotationIntrospector();
    }

    public final ArrayBuilders getArrayBuilders()
    {
        if (_arrayBuilders == null)
        {
            _arrayBuilders = new ArrayBuilders();
        }
        return _arrayBuilders;
    }

    public final a getBase64Variant()
    {
        return _config.getBase64Variant();
    }

    public DeserializationConfig getConfig()
    {
        return _config;
    }

    public volatile MapperConfig getConfig()
    {
        return getConfig();
    }

    protected DateFormat getDateFormat()
    {
        if (_dateFormat != null)
        {
            return _dateFormat;
        } else
        {
            DateFormat dateformat = (DateFormat)_config.getDateFormat().clone();
            _dateFormat = dateformat;
            return dateformat;
        }
    }

    public DeserializerFactory getFactory()
    {
        return _factory;
    }

    public Locale getLocale()
    {
        return _config.getLocale();
    }

    public final JsonNodeFactory getNodeFactory()
    {
        return _config.getNodeFactory();
    }

    public final l getParser()
    {
        return _parser;
    }

    public TimeZone getTimeZone()
    {
        return _config.getTimeZone();
    }

    public final TypeFactory getTypeFactory()
    {
        return _config.getTypeFactory();
    }

    public boolean handleUnknownProperty(l l1, JsonDeserializer jsondeserializer, Object obj, String s)
    {
        LinkedNode linkednode = _config.getProblemHandlers();
        if (linkednode != null)
        {
            for (LinkedNode linkednode1 = linkednode; linkednode1 != null; linkednode1 = linkednode1.next())
            {
                if (((DeserializationProblemHandler)linkednode1.value()).handleUnknownProperty(this, l1, jsondeserializer, obj, s))
                {
                    return true;
                }
            }

        }
        return false;
    }

    public boolean hasValueDeserializerFor(JavaType javatype)
    {
        return _cache.hasValueDeserializerFor(this, _factory, javatype);
    }

    public JsonMappingException instantiationException(Class class1, String s)
    {
        return JsonMappingException.from(_parser, (new StringBuilder("Can not construct instance of ")).append(class1.getName()).append(", problem: ").append(s).toString());
    }

    public JsonMappingException instantiationException(Class class1, Throwable throwable)
    {
        return JsonMappingException.from(_parser, (new StringBuilder("Can not construct instance of ")).append(class1.getName()).append(", problem: ").append(throwable.getMessage()).toString(), throwable);
    }

    public final boolean isEnabled(DeserializationFeature deserializationfeature)
    {
        return (_featureFlags & deserializationfeature.getMask()) != 0;
    }

    public abstract KeyDeserializer keyDeserializerInstance(Annotated annotated, Object obj);

    public final ObjectBuffer leaseObjectBuffer()
    {
        ObjectBuffer objectbuffer = _objectBuffer;
        if (objectbuffer == null)
        {
            return new ObjectBuffer();
        } else
        {
            _objectBuffer = null;
            return objectbuffer;
        }
    }

    public JsonMappingException mappingException(Class class1)
    {
        return mappingException(class1, _parser.getCurrentToken());
    }

    public JsonMappingException mappingException(Class class1, r r)
    {
        String s = _calcName(class1);
        return JsonMappingException.from(_parser, (new StringBuilder("Can not deserialize instance of ")).append(s).append(" out of ").append(r).append(" token").toString());
    }

    public JsonMappingException mappingException(String s)
    {
        return JsonMappingException.from(getParser(), s);
    }

    public Date parseDate(String s)
    {
        Date date;
        try
        {
            date = getDateFormat().parse(s);
        }
        catch (ParseException parseexception)
        {
            throw new IllegalArgumentException((new StringBuilder("Failed to parse Date value '")).append(s).append("': ").append(parseexception.getMessage()).toString());
        }
        return date;
    }

    public void reportUnknownProperty(Object obj, String s, JsonDeserializer jsondeserializer)
    {
        if (!isEnabled(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES))
        {
            return;
        }
        java.util.Collection collection;
        if (jsondeserializer == null)
        {
            collection = null;
        } else
        {
            collection = jsondeserializer.getKnownPropertyNames();
        }
        throw UnrecognizedPropertyException.from(_parser, obj, s, collection);
    }

    public final void returnObjectBuffer(ObjectBuffer objectbuffer)
    {
        if (_objectBuffer == null || objectbuffer.initialCapacity() >= _objectBuffer.initialCapacity())
        {
            _objectBuffer = objectbuffer;
        }
    }

    public JsonMappingException unknownTypeException(JavaType javatype, String s)
    {
        return JsonMappingException.from(_parser, (new StringBuilder("Could not resolve type id '")).append(s).append("' into a subtype of ").append(javatype).toString());
    }

    public JsonMappingException weirdKeyException(Class class1, String s, String s1)
    {
        return InvalidFormatException.from(_parser, (new StringBuilder("Can not construct Map key of type ")).append(class1.getName()).append(" from String \"").append(_desc(s)).append("\": ").append(s1).toString(), s, class1);
    }

    public JsonMappingException weirdNumberException(Class class1, String s)
    {
        return weirdStringException(null, class1, s);
    }

    public JsonMappingException weirdNumberException(Number number, Class class1, String s)
    {
        return InvalidFormatException.from(_parser, (new StringBuilder("Can not construct instance of ")).append(class1.getName()).append(" from number value (").append(_valueDesc()).append("): ").append(s).toString(), null, class1);
    }

    public JsonMappingException weirdStringException(Class class1, String s)
    {
        return weirdStringException(null, class1, s);
    }

    public JsonMappingException weirdStringException(String s, Class class1, String s1)
    {
        return InvalidFormatException.from(_parser, (new StringBuilder("Can not construct instance of ")).append(class1.getName()).append(" from String value '").append(_valueDesc()).append("': ").append(s1).toString(), s, class1);
    }

    public JsonMappingException wrongTokenException(l l1, r r, String s)
    {
        return JsonMappingException.from(l1, (new StringBuilder("Unexpected token (")).append(l1.getCurrentToken()).append("), expected ").append(r).append(": ").append(s).toString());
    }
}
