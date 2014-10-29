// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.module;

import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.Module;
import com.fasterxml.jackson.databind.deser.BeanDeserializerModifier;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.ser.BeanSerializerModifier;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.fasterxml.jackson.databind.module:
//            SimpleDeserializers, SimpleSerializers, SimpleAbstractTypeResolver, SimpleKeyDeserializers, 
//            SimpleValueInstantiators

public class SimpleModule extends Module
    implements Serializable
{

    private static final long serialVersionUID = 0x2b7809d4b5fa0286L;
    protected SimpleAbstractTypeResolver _abstractTypes;
    protected BeanDeserializerModifier _deserializerModifier;
    protected SimpleDeserializers _deserializers;
    protected SimpleKeyDeserializers _keyDeserializers;
    protected SimpleSerializers _keySerializers;
    protected HashMap _mixins;
    protected final String _name;
    protected BeanSerializerModifier _serializerModifier;
    protected SimpleSerializers _serializers;
    protected LinkedHashSet _subtypes;
    protected SimpleValueInstantiators _valueInstantiators;
    protected final w _version;

    public SimpleModule()
    {
        _serializers = null;
        _deserializers = null;
        _keySerializers = null;
        _keyDeserializers = null;
        _abstractTypes = null;
        _valueInstantiators = null;
        _deserializerModifier = null;
        _serializerModifier = null;
        _mixins = null;
        _subtypes = null;
        _name = (new StringBuilder("SimpleModule-")).append(System.identityHashCode(this)).toString();
        _version = w.a();
    }

    public SimpleModule(w w1)
    {
        _serializers = null;
        _deserializers = null;
        _keySerializers = null;
        _keyDeserializers = null;
        _abstractTypes = null;
        _valueInstantiators = null;
        _deserializerModifier = null;
        _serializerModifier = null;
        _mixins = null;
        _subtypes = null;
        _name = w1.b();
        _version = w1;
    }

    public SimpleModule(String s)
    {
        this(s, w.a());
    }

    public SimpleModule(String s, w w1)
    {
        _serializers = null;
        _deserializers = null;
        _keySerializers = null;
        _keyDeserializers = null;
        _abstractTypes = null;
        _valueInstantiators = null;
        _deserializerModifier = null;
        _serializerModifier = null;
        _mixins = null;
        _subtypes = null;
        _name = s;
        _version = w1;
    }

    public SimpleModule(String s, w w1, List list)
    {
        this(s, w1, null, list);
    }

    public SimpleModule(String s, w w1, Map map)
    {
        this(s, w1, map, null);
    }

    public SimpleModule(String s, w w1, Map map, List list)
    {
        _serializers = null;
        _deserializers = null;
        _keySerializers = null;
        _keyDeserializers = null;
        _abstractTypes = null;
        _valueInstantiators = null;
        _deserializerModifier = null;
        _serializerModifier = null;
        _mixins = null;
        _subtypes = null;
        _name = s;
        _version = w1;
        if (map != null)
        {
            _deserializers = new SimpleDeserializers(map);
        }
        if (list != null)
        {
            _serializers = new SimpleSerializers(list);
        }
    }

    public SimpleModule addAbstractTypeMapping(Class class1, Class class2)
    {
        if (_abstractTypes == null)
        {
            _abstractTypes = new SimpleAbstractTypeResolver();
        }
        _abstractTypes = _abstractTypes.addMapping(class1, class2);
        return this;
    }

    public SimpleModule addDeserializer(Class class1, JsonDeserializer jsondeserializer)
    {
        if (_deserializers == null)
        {
            _deserializers = new SimpleDeserializers();
        }
        _deserializers.addDeserializer(class1, jsondeserializer);
        return this;
    }

    public SimpleModule addKeyDeserializer(Class class1, KeyDeserializer keydeserializer)
    {
        if (_keyDeserializers == null)
        {
            _keyDeserializers = new SimpleKeyDeserializers();
        }
        _keyDeserializers.addDeserializer(class1, keydeserializer);
        return this;
    }

    public SimpleModule addKeySerializer(Class class1, JsonSerializer jsonserializer)
    {
        if (_keySerializers == null)
        {
            _keySerializers = new SimpleSerializers();
        }
        _keySerializers.addSerializer(class1, jsonserializer);
        return this;
    }

    public SimpleModule addSerializer(JsonSerializer jsonserializer)
    {
        if (_serializers == null)
        {
            _serializers = new SimpleSerializers();
        }
        _serializers.addSerializer(jsonserializer);
        return this;
    }

    public SimpleModule addSerializer(Class class1, JsonSerializer jsonserializer)
    {
        if (_serializers == null)
        {
            _serializers = new SimpleSerializers();
        }
        _serializers.addSerializer(class1, jsonserializer);
        return this;
    }

    public SimpleModule addValueInstantiator(Class class1, ValueInstantiator valueinstantiator)
    {
        if (_valueInstantiators == null)
        {
            _valueInstantiators = new SimpleValueInstantiators();
        }
        _valueInstantiators = _valueInstantiators.addValueInstantiator(class1, valueinstantiator);
        return this;
    }

    public String getModuleName()
    {
        return _name;
    }

    public transient SimpleModule registerSubtypes(NamedType anamedtype[])
    {
        if (_subtypes == null)
        {
            _subtypes = new LinkedHashSet(Math.max(16, anamedtype.length));
        }
        int i = anamedtype.length;
        for (int j = 0; j < i; j++)
        {
            NamedType namedtype = anamedtype[j];
            _subtypes.add(namedtype);
        }

        return this;
    }

    public transient SimpleModule registerSubtypes(Class aclass[])
    {
        if (_subtypes == null)
        {
            _subtypes = new LinkedHashSet(Math.max(16, aclass.length));
        }
        int i = aclass.length;
        for (int j = 0; j < i; j++)
        {
            Class class1 = aclass[j];
            _subtypes.add(new NamedType(class1));
        }

        return this;
    }

    public void setAbstractTypes(SimpleAbstractTypeResolver simpleabstracttyperesolver)
    {
        _abstractTypes = simpleabstracttyperesolver;
    }

    public SimpleModule setDeserializerModifier(BeanDeserializerModifier beandeserializermodifier)
    {
        _deserializerModifier = beandeserializermodifier;
        return this;
    }

    public void setDeserializers(SimpleDeserializers simpledeserializers)
    {
        _deserializers = simpledeserializers;
    }

    public void setKeyDeserializers(SimpleKeyDeserializers simplekeydeserializers)
    {
        _keyDeserializers = simplekeydeserializers;
    }

    public void setKeySerializers(SimpleSerializers simpleserializers)
    {
        _keySerializers = simpleserializers;
    }

    public SimpleModule setMixInAnnotation(Class class1, Class class2)
    {
        if (_mixins == null)
        {
            _mixins = new HashMap();
        }
        _mixins.put(class1, class2);
        return this;
    }

    public SimpleModule setSerializerModifier(BeanSerializerModifier beanserializermodifier)
    {
        _serializerModifier = beanserializermodifier;
        return this;
    }

    public void setSerializers(SimpleSerializers simpleserializers)
    {
        _serializers = simpleserializers;
    }

    public void setValueInstantiators(SimpleValueInstantiators simplevalueinstantiators)
    {
        _valueInstantiators = simplevalueinstantiators;
    }

    public void setupModule(com.fasterxml.jackson.databind.Module.SetupContext setupcontext)
    {
        if (_serializers != null)
        {
            setupcontext.addSerializers(_serializers);
        }
        if (_deserializers != null)
        {
            setupcontext.addDeserializers(_deserializers);
        }
        if (_keySerializers != null)
        {
            setupcontext.addKeySerializers(_keySerializers);
        }
        if (_keyDeserializers != null)
        {
            setupcontext.addKeyDeserializers(_keyDeserializers);
        }
        if (_abstractTypes != null)
        {
            setupcontext.addAbstractTypeResolver(_abstractTypes);
        }
        if (_valueInstantiators != null)
        {
            setupcontext.addValueInstantiators(_valueInstantiators);
        }
        if (_deserializerModifier != null)
        {
            setupcontext.addBeanDeserializerModifier(_deserializerModifier);
        }
        if (_serializerModifier != null)
        {
            setupcontext.addBeanSerializerModifier(_serializerModifier);
        }
        if (_subtypes != null && _subtypes.size() > 0)
        {
            setupcontext.registerSubtypes((NamedType[])_subtypes.toArray(new NamedType[_subtypes.size()]));
        }
        if (_mixins != null)
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = _mixins.entrySet().iterator(); iterator.hasNext(); setupcontext.setMixInAnnotations((Class)entry.getKey(), (Class)entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

        }
    }

    public w version()
    {
        return _version;
    }
}
