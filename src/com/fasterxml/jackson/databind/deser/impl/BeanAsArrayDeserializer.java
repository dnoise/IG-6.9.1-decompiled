// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.BeanDeserializerBase;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.util.HashSet;

// Referenced classes of package com.fasterxml.jackson.databind.deser.impl:
//            PropertyBasedCreator, PropertyValueBuffer, ObjectIdReader

public class BeanAsArrayDeserializer extends BeanDeserializerBase
{

    private static final long serialVersionUID = 1L;
    protected final BeanDeserializerBase _delegate;
    protected final SettableBeanProperty _orderedProperties[];

    public BeanAsArrayDeserializer(BeanDeserializerBase beandeserializerbase, SettableBeanProperty asettablebeanproperty[])
    {
        super(beandeserializerbase);
        _delegate = beandeserializerbase;
        _orderedProperties = asettablebeanproperty;
    }

    protected Object _deserializeFromNonArray(l l1, DeserializationContext deserializationcontext)
    {
        throw deserializationcontext.mappingException((new StringBuilder("Can not deserialize a POJO (of type ")).append(_beanType.getRawClass().getName()).append(") from non-Array representation (token: ").append(l1.getCurrentToken()).append("): type/property designed to be serialized as JSON Array").toString());
    }

    protected Object _deserializeNonVanilla(l l1, DeserializationContext deserializationcontext)
    {
        if (_nonStandardCreation)
        {
            return _deserializeWithCreator(l1, deserializationcontext);
        }
        Object obj = _valueInstantiator.createUsingDefault(deserializationcontext);
        if (_injectables != null)
        {
            injectValues(deserializationcontext, obj);
        }
        Class class1;
        SettableBeanProperty asettablebeanproperty[];
        int i;
        int j;
        if (_needViewProcesing)
        {
            class1 = deserializationcontext.getActiveView();
        } else
        {
            class1 = null;
        }
        asettablebeanproperty = _orderedProperties;
        i = 0;
        j = asettablebeanproperty.length;
        do
        {
            if (l1.nextToken() == r.e)
            {
                return obj;
            }
            if (i == j)
            {
                break;
            }
            SettableBeanProperty settablebeanproperty = asettablebeanproperty[i];
            i++;
            if (settablebeanproperty != null && (class1 == null || settablebeanproperty.visibleInView(class1)))
            {
                try
                {
                    settablebeanproperty.deserializeAndSet(l1, deserializationcontext, obj);
                }
                catch (Exception exception)
                {
                    wrapAndThrow(exception, obj, settablebeanproperty.getName(), deserializationcontext);
                }
            } else
            {
                l1.skipChildren();
            }
        } while (true);
        if (!_ignoreAllUnknown)
        {
            throw deserializationcontext.mappingException((new StringBuilder("Unexpected JSON values; expected at most ")).append(j).append(" properties (in JSON Array)").toString());
        }
        for (; l1.nextToken() != r.e; l1.skipChildren()) { }
        return obj;
    }

    protected final Object _deserializeUsingPropertyBased(l l1, DeserializationContext deserializationcontext)
    {
        PropertyBasedCreator propertybasedcreator;
        PropertyValueBuffer propertyvaluebuffer;
        SettableBeanProperty asettablebeanproperty[];
        int i;
        int j;
        Object obj;
        propertybasedcreator = _propertyBasedCreator;
        propertyvaluebuffer = propertybasedcreator.startBuilding(l1, deserializationcontext, _objectIdReader);
        asettablebeanproperty = _orderedProperties;
        i = asettablebeanproperty.length;
        j = 0;
        obj = null;
_L1:
        SettableBeanProperty settablebeanproperty;
        if (l1.nextToken() == r.e)
        {
            break MISSING_BLOCK_LABEL_282;
        }
        if (j < i)
        {
            settablebeanproperty = asettablebeanproperty[j];
        } else
        {
            settablebeanproperty = null;
        }
        if (settablebeanproperty == null)
        {
            l1.skipChildren();
        } else
        {
label0:
            {
                if (obj == null)
                {
                    break label0;
                }
                try
                {
                    settablebeanproperty.deserializeAndSet(l1, deserializationcontext, obj);
                }
                catch (Exception exception2)
                {
                    wrapAndThrow(exception2, obj, settablebeanproperty.getName(), deserializationcontext);
                }
            }
        }
_L3:
        j++;
          goto _L1
        String s;
        SettableBeanProperty settablebeanproperty1;
        Object obj2;
        s = settablebeanproperty.getName();
        settablebeanproperty1 = propertybasedcreator.findCreatorProperty(s);
        if (settablebeanproperty1 == null)
        {
            break MISSING_BLOCK_LABEL_255;
        }
        obj2 = settablebeanproperty1.deserialize(l1, deserializationcontext);
        if (!propertyvaluebuffer.assignParameter(settablebeanproperty1.getCreatorIndex(), obj2)) goto _L3; else goto _L2
_L2:
        Object obj3 = propertybasedcreator.build(deserializationcontext, propertyvaluebuffer);
        obj = obj3;
        if (obj.getClass() != _beanType.getRawClass())
        {
            throw deserializationcontext.mappingException((new StringBuilder("Can not support implicit polymorphic deserialization for POJOs-as-Arrays style: nominal type ")).append(_beanType.getRawClass().getName()).append(", actual type ").append(obj.getClass().getName()).toString());
        }
          goto _L3
        Exception exception1;
        exception1;
        wrapAndThrow(exception1, _beanType.getRawClass(), s, deserializationcontext);
          goto _L3
        if (!propertyvaluebuffer.readIdProperty(s))
        {
            propertyvaluebuffer.bufferProperty(settablebeanproperty, settablebeanproperty.deserialize(l1, deserializationcontext));
        }
          goto _L3
        if (obj == null)
        {
            Object obj1;
            try
            {
                obj1 = propertybasedcreator.build(deserializationcontext, propertyvaluebuffer);
            }
            catch (Exception exception)
            {
                wrapInstantiationProblem(exception, deserializationcontext);
                return null;
            }
            obj = obj1;
        }
        return obj;
    }

    protected Object _deserializeWithCreator(l l1, DeserializationContext deserializationcontext)
    {
        if (_delegateDeserializer != null)
        {
            return _valueInstantiator.createUsingDelegate(deserializationcontext, _delegateDeserializer.deserialize(l1, deserializationcontext));
        }
        if (_propertyBasedCreator != null)
        {
            return _deserializeUsingPropertyBased(l1, deserializationcontext);
        }
        if (_beanType.isAbstract())
        {
            throw JsonMappingException.from(l1, (new StringBuilder("Can not instantiate abstract type ")).append(_beanType).append(" (need to add/enable type information?)").toString());
        } else
        {
            throw JsonMappingException.from(l1, (new StringBuilder("No suitable constructor found for type ")).append(_beanType).append(": can not instantiate from JSON object (need to add/enable type information?)").toString());
        }
    }

    protected BeanDeserializerBase asArrayDeserializer()
    {
        return this;
    }

    public Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        if (l1.getCurrentToken() != r.d)
        {
            return _deserializeFromNonArray(l1, deserializationcontext);
        }
        if (!_vanillaProcessing)
        {
            return _deserializeNonVanilla(l1, deserializationcontext);
        }
        Object obj = _valueInstantiator.createUsingDefault(deserializationcontext);
        SettableBeanProperty asettablebeanproperty[] = _orderedProperties;
        int i = 0;
        int j = asettablebeanproperty.length;
        do
        {
            if (l1.nextToken() == r.e)
            {
                return obj;
            }
            if (i == j)
            {
                break;
            }
            SettableBeanProperty settablebeanproperty = asettablebeanproperty[i];
            if (settablebeanproperty != null)
            {
                try
                {
                    settablebeanproperty.deserializeAndSet(l1, deserializationcontext, obj);
                }
                catch (Exception exception)
                {
                    wrapAndThrow(exception, obj, settablebeanproperty.getName(), deserializationcontext);
                }
            } else
            {
                l1.skipChildren();
            }
            i++;
        } while (true);
        if (!_ignoreAllUnknown)
        {
            throw deserializationcontext.mappingException((new StringBuilder("Unexpected JSON values; expected at most ")).append(j).append(" properties (in JSON Array)").toString());
        }
        for (; l1.nextToken() != r.e; l1.skipChildren()) { }
        return obj;
    }

    public Object deserialize(l l1, DeserializationContext deserializationcontext, Object obj)
    {
        SettableBeanProperty asettablebeanproperty[];
        int i;
        int j;
        if (_injectables != null)
        {
            injectValues(deserializationcontext, obj);
        }
        asettablebeanproperty = _orderedProperties;
        i = 0;
        j = asettablebeanproperty.length;
_L3:
        if (l1.nextToken() != r.e) goto _L2; else goto _L1
_L1:
        return obj;
_L2:
label0:
        {
            if (i == j)
            {
                break label0;
            }
            SettableBeanProperty settablebeanproperty = asettablebeanproperty[i];
            if (settablebeanproperty != null)
            {
                try
                {
                    settablebeanproperty.deserializeAndSet(l1, deserializationcontext, obj);
                }
                catch (Exception exception)
                {
                    wrapAndThrow(exception, obj, settablebeanproperty.getName(), deserializationcontext);
                }
            } else
            {
                l1.skipChildren();
            }
            i++;
        }
          goto _L3
        if (!_ignoreAllUnknown)
        {
            throw deserializationcontext.mappingException((new StringBuilder("Unexpected JSON values; expected at most ")).append(j).append(" properties (in JSON Array)").toString());
        }
        while (l1.nextToken() != r.e) 
        {
            l1.skipChildren();
        }
          goto _L1
    }

    public Object deserializeFromObject(l l1, DeserializationContext deserializationcontext)
    {
        return _deserializeFromNonArray(l1, deserializationcontext);
    }

    public JsonDeserializer unwrappingDeserializer(NameTransformer nametransformer)
    {
        return _delegate.unwrappingDeserializer(nametransformer);
    }

    public volatile BeanDeserializerBase withIgnorableProperties(HashSet hashset)
    {
        return withIgnorableProperties(hashset);
    }

    public BeanAsArrayDeserializer withIgnorableProperties(HashSet hashset)
    {
        return new BeanAsArrayDeserializer(_delegate.withIgnorableProperties(hashset), _orderedProperties);
    }

    public volatile BeanDeserializerBase withObjectIdReader(ObjectIdReader objectidreader)
    {
        return withObjectIdReader(objectidreader);
    }

    public BeanAsArrayDeserializer withObjectIdReader(ObjectIdReader objectidreader)
    {
        return new BeanAsArrayDeserializer(_delegate.withObjectIdReader(objectidreader), _orderedProperties);
    }
}
