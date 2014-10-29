// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualKeyDeserializer;
import com.fasterxml.jackson.databind.deser.ResolvableDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedCreator;
import com.fasterxml.jackson.databind.deser.impl.PropertyValueBuffer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashSet;
import java.util.Map;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            ContainerDeserializerBase

public class MapDeserializer extends ContainerDeserializerBase
    implements ContextualDeserializer, ResolvableDeserializer
{

    private static final long serialVersionUID = 0xd11c9bd2fbfb27d0L;
    protected JsonDeserializer _delegateDeserializer;
    protected final boolean _hasDefaultCreator;
    protected HashSet _ignorableProperties;
    protected final KeyDeserializer _keyDeserializer;
    protected final JavaType _mapType;
    protected PropertyBasedCreator _propertyBasedCreator;
    protected boolean _standardStringKey;
    protected final JsonDeserializer _valueDeserializer;
    protected final ValueInstantiator _valueInstantiator;
    protected final TypeDeserializer _valueTypeDeserializer;

    public MapDeserializer(JavaType javatype, ValueInstantiator valueinstantiator, KeyDeserializer keydeserializer, JsonDeserializer jsondeserializer, TypeDeserializer typedeserializer)
    {
        super(java/util/Map);
        _mapType = javatype;
        _keyDeserializer = keydeserializer;
        _valueDeserializer = jsondeserializer;
        _valueTypeDeserializer = typedeserializer;
        _valueInstantiator = valueinstantiator;
        _hasDefaultCreator = valueinstantiator.canCreateUsingDefault();
        _delegateDeserializer = null;
        _propertyBasedCreator = null;
        _standardStringKey = _isStdKeyDeser(javatype, keydeserializer);
    }

    protected MapDeserializer(MapDeserializer mapdeserializer)
    {
        super(mapdeserializer._valueClass);
        _mapType = mapdeserializer._mapType;
        _keyDeserializer = mapdeserializer._keyDeserializer;
        _valueDeserializer = mapdeserializer._valueDeserializer;
        _valueTypeDeserializer = mapdeserializer._valueTypeDeserializer;
        _valueInstantiator = mapdeserializer._valueInstantiator;
        _propertyBasedCreator = mapdeserializer._propertyBasedCreator;
        _delegateDeserializer = mapdeserializer._delegateDeserializer;
        _hasDefaultCreator = mapdeserializer._hasDefaultCreator;
        _ignorableProperties = mapdeserializer._ignorableProperties;
        _standardStringKey = mapdeserializer._standardStringKey;
    }

    protected MapDeserializer(MapDeserializer mapdeserializer, KeyDeserializer keydeserializer, JsonDeserializer jsondeserializer, TypeDeserializer typedeserializer, HashSet hashset)
    {
        super(mapdeserializer._valueClass);
        _mapType = mapdeserializer._mapType;
        _keyDeserializer = keydeserializer;
        _valueDeserializer = jsondeserializer;
        _valueTypeDeserializer = typedeserializer;
        _valueInstantiator = mapdeserializer._valueInstantiator;
        _propertyBasedCreator = mapdeserializer._propertyBasedCreator;
        _delegateDeserializer = mapdeserializer._delegateDeserializer;
        _hasDefaultCreator = mapdeserializer._hasDefaultCreator;
        _ignorableProperties = hashset;
        _standardStringKey = _isStdKeyDeser(_mapType, keydeserializer);
    }

    public Map _deserializeUsingCreator(l l1, DeserializationContext deserializationcontext)
    {
        PropertyBasedCreator propertybasedcreator = _propertyBasedCreator;
        PropertyValueBuffer propertyvaluebuffer = propertybasedcreator.startBuilding(l1, deserializationcontext, null);
        r r1 = l1.getCurrentToken();
        if (r1 == r.b)
        {
            r1 = l1.nextToken();
        }
        JsonDeserializer jsondeserializer = _valueDeserializer;
        TypeDeserializer typedeserializer = _valueTypeDeserializer;
        while (r1 == r.f) 
        {
            String s = l1.getCurrentName();
            r r2 = l1.nextToken();
            if (_ignorableProperties != null && _ignorableProperties.contains(s))
            {
                l1.skipChildren();
            } else
            {
                SettableBeanProperty settablebeanproperty = propertybasedcreator.findCreatorProperty(s);
                if (settablebeanproperty != null)
                {
                    Object obj2 = settablebeanproperty.deserialize(l1, deserializationcontext);
                    if (propertyvaluebuffer.assignParameter(settablebeanproperty.getCreatorIndex(), obj2))
                    {
                        l1.nextToken();
                        Map map1;
                        try
                        {
                            map1 = (Map)propertybasedcreator.build(deserializationcontext, propertyvaluebuffer);
                        }
                        catch (Exception exception1)
                        {
                            wrapAndThrow(exception1, _mapType.getRawClass());
                            return null;
                        }
                        _readAndBind(l1, deserializationcontext, map1);
                        return map1;
                    }
                } else
                {
                    String s1 = l1.getCurrentName();
                    Object obj = _keyDeserializer.deserializeKey(s1, deserializationcontext);
                    Object obj1;
                    if (r2 == r.m)
                    {
                        obj1 = null;
                    } else
                    if (typedeserializer == null)
                    {
                        obj1 = jsondeserializer.deserialize(l1, deserializationcontext);
                    } else
                    {
                        obj1 = jsondeserializer.deserializeWithType(l1, deserializationcontext, typedeserializer);
                    }
                    propertyvaluebuffer.bufferMapProperty(obj, obj1);
                }
            }
            r1 = l1.nextToken();
        }
        Map map;
        try
        {
            map = (Map)propertybasedcreator.build(deserializationcontext, propertyvaluebuffer);
        }
        catch (Exception exception)
        {
            wrapAndThrow(exception, _mapType.getRawClass());
            return null;
        }
        return map;
    }

    protected final boolean _isStdKeyDeser(JavaType javatype, KeyDeserializer keydeserializer)
    {
        JavaType javatype1;
        Class class1;
        if (keydeserializer != null)
        {
            if ((javatype1 = javatype.getKeyType()) != null && ((class1 = javatype1.getRawClass()) != java/lang/String && class1 != java/lang/Object || !isDefaultKeyDeserializer(keydeserializer)))
            {
                return false;
            }
        }
        return true;
    }

    protected final void _readAndBind(l l1, DeserializationContext deserializationcontext, Map map)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.b)
        {
            r1 = l1.nextToken();
        }
        KeyDeserializer keydeserializer = _keyDeserializer;
        JsonDeserializer jsondeserializer = _valueDeserializer;
        TypeDeserializer typedeserializer = _valueTypeDeserializer;
        while (r1 == r.f) 
        {
            String s = l1.getCurrentName();
            Object obj = keydeserializer.deserializeKey(s, deserializationcontext);
            r r2 = l1.nextToken();
            if (_ignorableProperties != null && _ignorableProperties.contains(s))
            {
                l1.skipChildren();
            } else
            {
                Object obj1;
                if (r2 == r.m)
                {
                    obj1 = null;
                } else
                if (typedeserializer == null)
                {
                    obj1 = jsondeserializer.deserialize(l1, deserializationcontext);
                } else
                {
                    obj1 = jsondeserializer.deserializeWithType(l1, deserializationcontext, typedeserializer);
                }
                map.put(obj, obj1);
            }
            r1 = l1.nextToken();
        }
    }

    protected final void _readAndBindStringMap(l l1, DeserializationContext deserializationcontext, Map map)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.b)
        {
            r1 = l1.nextToken();
        }
        JsonDeserializer jsondeserializer = _valueDeserializer;
        TypeDeserializer typedeserializer = _valueTypeDeserializer;
        while (r1 == r.f) 
        {
            String s = l1.getCurrentName();
            r r2 = l1.nextToken();
            if (_ignorableProperties != null && _ignorableProperties.contains(s))
            {
                l1.skipChildren();
            } else
            {
                Object obj;
                if (r2 == r.m)
                {
                    obj = null;
                } else
                if (typedeserializer == null)
                {
                    obj = jsondeserializer.deserialize(l1, deserializationcontext);
                } else
                {
                    obj = jsondeserializer.deserializeWithType(l1, deserializationcontext, typedeserializer);
                }
                map.put(s, obj);
            }
            r1 = l1.nextToken();
        }
    }

    public JsonDeserializer createContextual(DeserializationContext deserializationcontext, BeanProperty beanproperty)
    {
        KeyDeserializer keydeserializer = _keyDeserializer;
        KeyDeserializer keydeserializer1;
        JsonDeserializer jsondeserializer;
        TypeDeserializer typedeserializer;
        HashSet hashset;
        AnnotationIntrospector annotationintrospector;
        HashSet hashset1;
        String as[];
        int i;
        int j;
        if (keydeserializer == null)
        {
            keydeserializer1 = deserializationcontext.findKeyDeserializer(_mapType.getKeyType(), beanproperty);
        } else
        if (keydeserializer instanceof ContextualKeyDeserializer)
        {
            keydeserializer1 = ((ContextualKeyDeserializer)keydeserializer).createContextual(deserializationcontext, beanproperty);
        } else
        {
            keydeserializer1 = keydeserializer;
        }
        jsondeserializer = findConvertingContentDeserializer(deserializationcontext, beanproperty, _valueDeserializer);
        if (jsondeserializer != null) goto _L2; else goto _L1
_L1:
        jsondeserializer = deserializationcontext.findContextualValueDeserializer(_mapType.getContentType(), beanproperty);
_L4:
        typedeserializer = _valueTypeDeserializer;
        if (typedeserializer != null)
        {
            typedeserializer = typedeserializer.forProperty(beanproperty);
        }
        hashset = _ignorableProperties;
        annotationintrospector = deserializationcontext.getAnnotationIntrospector();
        if (annotationintrospector == null || beanproperty == null)
        {
            break; /* Loop/switch isn't completed */
        }
        as = annotationintrospector.findPropertiesToIgnore(beanproperty.getMember());
        if (as == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (hashset == null)
        {
            hashset1 = new HashSet();
        } else
        {
            hashset1 = new HashSet(hashset);
        }
        i = as.length;
        for (j = 0; j < i; j++)
        {
            hashset1.add(as[j]);
        }

        break MISSING_BLOCK_LABEL_224;
_L2:
        if (jsondeserializer instanceof ContextualDeserializer)
        {
            jsondeserializer = ((ContextualDeserializer)jsondeserializer).createContextual(deserializationcontext, beanproperty);
        }
        if (true) goto _L4; else goto _L3
_L3:
        hashset1 = hashset;
        return withResolved(keydeserializer1, typedeserializer, jsondeserializer, hashset1);
    }

    public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public volatile Object deserialize(l l1, DeserializationContext deserializationcontext, Object obj)
    {
        return deserialize(l1, deserializationcontext, (Map)obj);
    }

    public Map deserialize(l l1, DeserializationContext deserializationcontext)
    {
        if (_propertyBasedCreator != null)
        {
            return _deserializeUsingCreator(l1, deserializationcontext);
        }
        if (_delegateDeserializer != null)
        {
            return (Map)_valueInstantiator.createUsingDelegate(deserializationcontext, _delegateDeserializer.deserialize(l1, deserializationcontext));
        }
        if (!_hasDefaultCreator)
        {
            throw deserializationcontext.instantiationException(getMapClass(), "No default constructor found");
        }
        r r1 = l1.getCurrentToken();
        if (r1 != r.b && r1 != r.f && r1 != r.c)
        {
            if (r1 == r.h)
            {
                return (Map)_valueInstantiator.createFromString(deserializationcontext, l1.getText());
            } else
            {
                throw deserializationcontext.mappingException(getMapClass());
            }
        }
        Map map = (Map)_valueInstantiator.createUsingDefault(deserializationcontext);
        if (_standardStringKey)
        {
            _readAndBindStringMap(l1, deserializationcontext, map);
            return map;
        } else
        {
            _readAndBind(l1, deserializationcontext, map);
            return map;
        }
    }

    public Map deserialize(l l1, DeserializationContext deserializationcontext, Map map)
    {
        r r1 = l1.getCurrentToken();
        if (r1 != r.b && r1 != r.f)
        {
            throw deserializationcontext.mappingException(getMapClass());
        }
        if (_standardStringKey)
        {
            _readAndBindStringMap(l1, deserializationcontext, map);
            return map;
        } else
        {
            _readAndBind(l1, deserializationcontext, map);
            return map;
        }
    }

    public Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return typedeserializer.deserializeTypedFromObject(l1, deserializationcontext);
    }

    public JsonDeserializer getContentDeserializer()
    {
        return _valueDeserializer;
    }

    public JavaType getContentType()
    {
        return _mapType.getContentType();
    }

    public final Class getMapClass()
    {
        return _mapType.getRawClass();
    }

    public JavaType getValueType()
    {
        return _mapType;
    }

    public void resolve(DeserializationContext deserializationcontext)
    {
        if (_valueInstantiator.canCreateUsingDelegate())
        {
            JavaType javatype = _valueInstantiator.getDelegateType(deserializationcontext.getConfig());
            if (javatype == null)
            {
                throw new IllegalArgumentException((new StringBuilder("Invalid delegate-creator definition for ")).append(_mapType).append(": value instantiator (").append(_valueInstantiator.getClass().getName()).append(") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'").toString());
            }
            _delegateDeserializer = findDeserializer(deserializationcontext, javatype, null);
        }
        if (_valueInstantiator.canCreateFromObjectWith())
        {
            SettableBeanProperty asettablebeanproperty[] = _valueInstantiator.getFromObjectArguments(deserializationcontext.getConfig());
            _propertyBasedCreator = PropertyBasedCreator.construct(deserializationcontext, _valueInstantiator, asettablebeanproperty);
        }
        _standardStringKey = _isStdKeyDeser(_mapType, _keyDeserializer);
    }

    public void setIgnorableProperties(String as[])
    {
        HashSet hashset;
        if (as == null || as.length == 0)
        {
            hashset = null;
        } else
        {
            hashset = ArrayBuilders.arrayToSet(as);
        }
        _ignorableProperties = hashset;
    }

    protected MapDeserializer withResolved(KeyDeserializer keydeserializer, TypeDeserializer typedeserializer, JsonDeserializer jsondeserializer, HashSet hashset)
    {
        if (_keyDeserializer == keydeserializer && _valueDeserializer == jsondeserializer && _valueTypeDeserializer == typedeserializer && _ignorableProperties == hashset)
        {
            return this;
        } else
        {
            return new MapDeserializer(this, keydeserializer, jsondeserializer, typedeserializer, hashset);
        }
    }

    protected void wrapAndThrow(Throwable throwable, Object obj)
    {
        for (; (throwable instanceof InvocationTargetException) && throwable.getCause() != null; throwable = throwable.getCause()) { }
        if (throwable instanceof Error)
        {
            throw (Error)throwable;
        }
        if ((throwable instanceof IOException) && !(throwable instanceof JsonMappingException))
        {
            throw (IOException)throwable;
        } else
        {
            throw JsonMappingException.wrapWithPath(throwable, obj, null);
        }
    }
}
