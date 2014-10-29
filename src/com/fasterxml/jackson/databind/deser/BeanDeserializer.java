// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.impl.BeanAsArrayDeserializer;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedCreator;
import com.fasterxml.jackson.databind.deser.impl.PropertyValueBuffer;
import com.fasterxml.jackson.databind.deser.impl.UnwrappedPropertyHandler;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Map;

// Referenced classes of package com.fasterxml.jackson.databind.deser:
//            BeanDeserializerBase, ValueInstantiator, SettableBeanProperty, SettableAnyProperty, 
//            BeanDeserializerBuilder

public class BeanDeserializer extends BeanDeserializerBase
    implements Serializable
{

    private static final long serialVersionUID = 1L;

    protected BeanDeserializer(BeanDeserializerBase beandeserializerbase)
    {
        super(beandeserializerbase, beandeserializerbase._ignoreAllUnknown);
    }

    public BeanDeserializer(BeanDeserializerBase beandeserializerbase, ObjectIdReader objectidreader)
    {
        super(beandeserializerbase, objectidreader);
    }

    protected BeanDeserializer(BeanDeserializerBase beandeserializerbase, NameTransformer nametransformer)
    {
        super(beandeserializerbase, nametransformer);
    }

    public BeanDeserializer(BeanDeserializerBase beandeserializerbase, HashSet hashset)
    {
        super(beandeserializerbase, hashset);
    }

    protected BeanDeserializer(BeanDeserializerBase beandeserializerbase, boolean flag)
    {
        super(beandeserializerbase, flag);
    }

    public BeanDeserializer(BeanDeserializerBuilder beandeserializerbuilder, BeanDescription beandescription, BeanPropertyMap beanpropertymap, Map map, HashSet hashset, boolean flag, boolean flag1)
    {
        super(beandeserializerbuilder, beandescription, beanpropertymap, map, hashset, flag, flag1);
    }

    private final Object _deserializeOther(l l1, DeserializationContext deserializationcontext, r r1)
    {
        if (r1 == null)
        {
            return _missingToken(l1, deserializationcontext);
        }
        switch (_cls1..SwitchMap.com.fasterxml.jackson.core.JsonToken[r1.ordinal()])
        {
        default:
            throw deserializationcontext.mappingException(getBeanClass());

        case 1: // '\001'
            return deserializeFromString(l1, deserializationcontext);

        case 2: // '\002'
            return deserializeFromNumber(l1, deserializationcontext);

        case 3: // '\003'
            return deserializeFromDouble(l1, deserializationcontext);

        case 4: // '\004'
            return l1.getEmbeddedObject();

        case 5: // '\005'
        case 6: // '\006'
            return deserializeFromBoolean(l1, deserializationcontext);

        case 7: // '\007'
            return deserializeFromArray(l1, deserializationcontext);

        case 8: // '\b'
        case 9: // '\t'
            break;
        }
        if (_vanillaProcessing)
        {
            return vanillaDeserialize(l1, deserializationcontext, r1);
        }
        if (_objectIdReader != null)
        {
            return deserializeWithObjectId(l1, deserializationcontext);
        } else
        {
            return deserializeFromObject(l1, deserializationcontext);
        }
    }

    private final Object vanillaDeserialize(l l1, DeserializationContext deserializationcontext, r r1)
    {
        Object obj = _valueInstantiator.createUsingDefault(deserializationcontext);
        while (l1.getCurrentToken() != r.c) 
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            SettableBeanProperty settablebeanproperty = _beanProperties.find(s);
            if (settablebeanproperty != null)
            {
                try
                {
                    settablebeanproperty.deserializeAndSet(l1, deserializationcontext, obj);
                }
                catch (Exception exception)
                {
                    wrapAndThrow(exception, obj, s, deserializationcontext);
                }
            } else
            {
                handleUnknownVanilla(l1, deserializationcontext, obj, s);
            }
            l1.nextToken();
        }
        return obj;
    }

    protected Object _deserializeUsingPropertyBased(l l1, DeserializationContext deserializationcontext)
    {
        PropertyBasedCreator propertybasedcreator;
        PropertyValueBuffer propertyvaluebuffer;
        r r1;
        TokenBuffer tokenbuffer;
        propertybasedcreator = _propertyBasedCreator;
        propertyvaluebuffer = propertybasedcreator.startBuilding(l1, deserializationcontext, _objectIdReader);
        r1 = l1.getCurrentToken();
        tokenbuffer = null;
_L5:
        if (r1 != r.f) goto _L2; else goto _L1
_L1:
        String s;
        s = l1.getCurrentName();
        l1.nextToken();
        SettableBeanProperty settablebeanproperty = propertybasedcreator.findCreatorProperty(s);
        if (settablebeanproperty == null)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        Object obj2 = settablebeanproperty.deserialize(l1, deserializationcontext);
        if (!propertyvaluebuffer.assignParameter(settablebeanproperty.getCreatorIndex(), obj2))
        {
            continue; /* Loop/switch isn't completed */
        }
        l1.nextToken();
        Object obj4 = propertybasedcreator.build(deserializationcontext, propertyvaluebuffer);
        Object obj3 = obj4;
_L4:
        if (obj3.getClass() != _beanType.getRawClass())
        {
            return handlePolymorphic(l1, deserializationcontext, obj3, tokenbuffer);
        }
        break; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        wrapAndThrow(exception1, _beanType.getRawClass(), s, deserializationcontext);
        obj3 = null;
        if (true) goto _L4; else goto _L3
_L3:
        if (tokenbuffer != null)
        {
            obj3 = handleUnknownProperties(deserializationcontext, obj3, tokenbuffer);
        }
        return deserialize(l1, deserializationcontext, obj3);
        if (!propertyvaluebuffer.readIdProperty(s))
        {
            SettableBeanProperty settablebeanproperty1 = _beanProperties.find(s);
            if (settablebeanproperty1 != null)
            {
                propertyvaluebuffer.bufferProperty(settablebeanproperty1, settablebeanproperty1.deserialize(l1, deserializationcontext));
            } else
            if (_ignorableProps != null && _ignorableProps.contains(s))
            {
                l1.skipChildren();
            } else
            if (_anySetter != null)
            {
                propertyvaluebuffer.bufferAnyProperty(_anySetter, s, _anySetter.deserialize(l1, deserializationcontext));
            } else
            {
                if (tokenbuffer == null)
                {
                    tokenbuffer = new TokenBuffer(l1.getCodec());
                }
                tokenbuffer.writeFieldName(s);
                tokenbuffer.copyCurrentStructure(l1);
            }
        }
        r1 = l1.nextToken();
          goto _L5
_L2:
        Object obj1 = propertybasedcreator.build(deserializationcontext, propertyvaluebuffer);
        Object obj = obj1;
_L6:
        Exception exception;
        if (tokenbuffer != null)
        {
            if (obj.getClass() != _beanType.getRawClass())
            {
                return handlePolymorphic(null, deserializationcontext, obj, tokenbuffer);
            } else
            {
                return handleUnknownProperties(deserializationcontext, obj, tokenbuffer);
            }
        } else
        {
            return obj;
        }
        exception;
        wrapInstantiationProblem(exception, deserializationcontext);
        obj = null;
          goto _L6
    }

    protected Object _missingToken(l l1, DeserializationContext deserializationcontext)
    {
        throw deserializationcontext.endOfInputException(getBeanClass());
    }

    protected BeanDeserializerBase asArrayDeserializer()
    {
        return new BeanAsArrayDeserializer(this, _beanProperties.getPropertiesInInsertionOrder());
    }

    public final Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.b)
        {
            if (_vanillaProcessing)
            {
                return vanillaDeserialize(l1, deserializationcontext, l1.nextToken());
            }
            l1.nextToken();
            if (_objectIdReader != null)
            {
                return deserializeWithObjectId(l1, deserializationcontext);
            } else
            {
                return deserializeFromObject(l1, deserializationcontext);
            }
        } else
        {
            return _deserializeOther(l1, deserializationcontext, r1);
        }
    }

    public Object deserialize(l l1, DeserializationContext deserializationcontext, Object obj)
    {
        if (_injectables != null)
        {
            injectValues(deserializationcontext, obj);
        }
        if (_unwrappedPropertyHandler != null)
        {
            obj = deserializeWithUnwrapped(l1, deserializationcontext, obj);
        } else
        {
            if (_externalTypeIdHandler != null)
            {
                return deserializeWithExternalTypeId(l1, deserializationcontext, obj);
            }
            r r1 = l1.getCurrentToken();
            if (r1 == r.b)
            {
                r1 = l1.nextToken();
            }
            if (_needViewProcesing)
            {
                Class class1 = deserializationcontext.getActiveView();
                if (class1 != null)
                {
                    return deserializeWithView(l1, deserializationcontext, obj, class1);
                }
            }
            while (r1 == r.f) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                SettableBeanProperty settablebeanproperty = _beanProperties.find(s);
                if (settablebeanproperty != null)
                {
                    try
                    {
                        settablebeanproperty.deserializeAndSet(l1, deserializationcontext, obj);
                    }
                    catch (Exception exception)
                    {
                        wrapAndThrow(exception, obj, s, deserializationcontext);
                    }
                } else
                if (_ignorableProps != null && _ignorableProps.contains(s))
                {
                    l1.skipChildren();
                } else
                if (_anySetter != null)
                {
                    _anySetter.deserializeAndSet(l1, deserializationcontext, obj, s);
                } else
                {
                    handleUnknownProperty(l1, deserializationcontext, obj, s);
                }
                r1 = l1.nextToken();
            }
        }
        return obj;
    }

    public Object deserializeFromObject(l l1, DeserializationContext deserializationcontext)
    {
        if (!_nonStandardCreation) goto _L2; else goto _L1
_L1:
        if (_unwrappedPropertyHandler == null) goto _L4; else goto _L3
_L3:
        Object obj = deserializeWithUnwrapped(l1, deserializationcontext);
_L6:
        return obj;
_L4:
        if (_externalTypeIdHandler != null)
        {
            return deserializeWithExternalTypeId(l1, deserializationcontext);
        } else
        {
            return deserializeFromObjectUsingNonDefault(l1, deserializationcontext);
        }
_L2:
        obj = _valueInstantiator.createUsingDefault(deserializationcontext);
        if (_injectables != null)
        {
            injectValues(deserializationcontext, obj);
        }
        if (_needViewProcesing)
        {
            Class class1 = deserializationcontext.getActiveView();
            if (class1 != null)
            {
                return deserializeWithView(l1, deserializationcontext, obj, class1);
            }
        }
        while (l1.getCurrentToken() != r.c) 
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            SettableBeanProperty settablebeanproperty = _beanProperties.find(s);
            if (settablebeanproperty != null)
            {
                try
                {
                    settablebeanproperty.deserializeAndSet(l1, deserializationcontext, obj);
                }
                catch (Exception exception1)
                {
                    wrapAndThrow(exception1, obj, s, deserializationcontext);
                }
            } else
            if (_ignorableProps != null && _ignorableProps.contains(s))
            {
                l1.skipChildren();
            } else
            if (_anySetter != null)
            {
                try
                {
                    _anySetter.deserializeAndSet(l1, deserializationcontext, obj, s);
                }
                catch (Exception exception)
                {
                    wrapAndThrow(exception, obj, s, deserializationcontext);
                }
            } else
            {
                handleUnknownProperty(l1, deserializationcontext, obj, s);
            }
            l1.nextToken();
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected Object deserializeUsingPropertyBasedWithExternalTypeId(l l1, DeserializationContext deserializationcontext)
    {
        ExternalTypeHandler externaltypehandler;
        PropertyBasedCreator propertybasedcreator;
        PropertyValueBuffer propertyvaluebuffer;
        TokenBuffer tokenbuffer;
        r r1;
        externaltypehandler = _externalTypeIdHandler.start();
        propertybasedcreator = _propertyBasedCreator;
        propertyvaluebuffer = propertybasedcreator.startBuilding(l1, deserializationcontext, _objectIdReader);
        tokenbuffer = new TokenBuffer(l1.getCodec());
        tokenbuffer.writeStartObject();
        r1 = l1.getCurrentToken();
_L2:
        String s;
        r r2;
        if (r1 != r.f)
        {
            break MISSING_BLOCK_LABEL_336;
        }
        s = l1.getCurrentName();
        l1.nextToken();
        SettableBeanProperty settablebeanproperty = propertybasedcreator.findCreatorProperty(s);
        if (settablebeanproperty == null)
        {
            break MISSING_BLOCK_LABEL_224;
        }
        if (externaltypehandler.handlePropertyValue(l1, deserializationcontext, s, propertyvaluebuffer))
        {
            break MISSING_BLOCK_LABEL_183;
        }
        Object obj1 = settablebeanproperty.deserialize(l1, deserializationcontext);
        if (!propertyvaluebuffer.assignParameter(settablebeanproperty.getCreatorIndex(), obj1))
        {
            break MISSING_BLOCK_LABEL_183;
        }
        r2 = l1.nextToken();
        Object obj2 = propertybasedcreator.build(deserializationcontext, propertyvaluebuffer);
        for (; r2 == r.f; r2 = l1.nextToken())
        {
            l1.nextToken();
            tokenbuffer.copyCurrentStructure(l1);
        }

        break; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        wrapAndThrow(exception1, _beanType.getRawClass(), s, deserializationcontext);
_L3:
        r1 = l1.nextToken();
        if (true) goto _L2; else goto _L1
_L1:
        if (obj2.getClass() != _beanType.getRawClass())
        {
            throw deserializationcontext.mappingException("Can not create polymorphic instances with unwrapped values");
        } else
        {
            return externaltypehandler.complete(l1, deserializationcontext, obj2);
        }
        if (!propertyvaluebuffer.readIdProperty(s))
        {
            SettableBeanProperty settablebeanproperty1 = _beanProperties.find(s);
            if (settablebeanproperty1 != null)
            {
                propertyvaluebuffer.bufferProperty(settablebeanproperty1, settablebeanproperty1.deserialize(l1, deserializationcontext));
            } else
            if (!externaltypehandler.handlePropertyValue(l1, deserializationcontext, s, null))
            {
                if (_ignorableProps != null && _ignorableProps.contains(s))
                {
                    l1.skipChildren();
                } else
                if (_anySetter != null)
                {
                    propertyvaluebuffer.bufferAnyProperty(_anySetter, s, _anySetter.deserialize(l1, deserializationcontext));
                }
            }
        }
          goto _L3
        Object obj;
        try
        {
            obj = externaltypehandler.complete(l1, deserializationcontext, propertyvaluebuffer, propertybasedcreator);
        }
        catch (Exception exception)
        {
            wrapInstantiationProblem(exception, deserializationcontext);
            return null;
        }
        return obj;
    }

    protected Object deserializeUsingPropertyBasedWithUnwrapped(l l1, DeserializationContext deserializationcontext)
    {
        PropertyBasedCreator propertybasedcreator;
        PropertyValueBuffer propertyvaluebuffer;
        TokenBuffer tokenbuffer;
        r r1;
        propertybasedcreator = _propertyBasedCreator;
        propertyvaluebuffer = propertybasedcreator.startBuilding(l1, deserializationcontext, _objectIdReader);
        tokenbuffer = new TokenBuffer(l1.getCodec());
        tokenbuffer.writeStartObject();
        r1 = l1.getCurrentToken();
_L2:
        String s;
        r r2;
        if (r1 != r.f)
        {
            break MISSING_BLOCK_LABEL_327;
        }
        s = l1.getCurrentName();
        l1.nextToken();
        SettableBeanProperty settablebeanproperty = propertybasedcreator.findCreatorProperty(s);
        if (settablebeanproperty == null)
        {
            break MISSING_BLOCK_LABEL_214;
        }
        Object obj1 = settablebeanproperty.deserialize(l1, deserializationcontext);
        if (!propertyvaluebuffer.assignParameter(settablebeanproperty.getCreatorIndex(), obj1))
        {
            break MISSING_BLOCK_LABEL_158;
        }
        r2 = l1.nextToken();
        Object obj2 = propertybasedcreator.build(deserializationcontext, propertyvaluebuffer);
        for (; r2 == r.f; r2 = l1.nextToken())
        {
            l1.nextToken();
            tokenbuffer.copyCurrentStructure(l1);
        }

        break; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        wrapAndThrow(exception1, _beanType.getRawClass(), s, deserializationcontext);
_L3:
        r1 = l1.nextToken();
        if (true) goto _L2; else goto _L1
_L1:
        tokenbuffer.writeEndObject();
        if (obj2.getClass() != _beanType.getRawClass())
        {
            tokenbuffer.close();
            throw deserializationcontext.mappingException("Can not create polymorphic instances with unwrapped values");
        } else
        {
            return _unwrappedPropertyHandler.processUnwrapped(l1, deserializationcontext, obj2, tokenbuffer);
        }
        if (!propertyvaluebuffer.readIdProperty(s))
        {
            SettableBeanProperty settablebeanproperty1 = _beanProperties.find(s);
            if (settablebeanproperty1 != null)
            {
                propertyvaluebuffer.bufferProperty(settablebeanproperty1, settablebeanproperty1.deserialize(l1, deserializationcontext));
            } else
            if (_ignorableProps != null && _ignorableProps.contains(s))
            {
                l1.skipChildren();
            } else
            {
                tokenbuffer.writeFieldName(s);
                tokenbuffer.copyCurrentStructure(l1);
                if (_anySetter != null)
                {
                    propertyvaluebuffer.bufferAnyProperty(_anySetter, s, _anySetter.deserialize(l1, deserializationcontext));
                }
            }
        }
          goto _L3
        Object obj;
        try
        {
            obj = propertybasedcreator.build(deserializationcontext, propertyvaluebuffer);
        }
        catch (Exception exception)
        {
            wrapInstantiationProblem(exception, deserializationcontext);
            return null;
        }
        return _unwrappedPropertyHandler.processUnwrapped(l1, deserializationcontext, obj, tokenbuffer);
    }

    protected Object deserializeWithExternalTypeId(l l1, DeserializationContext deserializationcontext)
    {
        if (_propertyBasedCreator != null)
        {
            return deserializeUsingPropertyBasedWithExternalTypeId(l1, deserializationcontext);
        } else
        {
            return deserializeWithExternalTypeId(l1, deserializationcontext, _valueInstantiator.createUsingDefault(deserializationcontext));
        }
    }

    protected Object deserializeWithExternalTypeId(l l1, DeserializationContext deserializationcontext, Object obj)
    {
        Class class1;
        ExternalTypeHandler externaltypehandler;
        if (_needViewProcesing)
        {
            class1 = deserializationcontext.getActiveView();
        } else
        {
            class1 = null;
        }
        externaltypehandler = _externalTypeIdHandler.start();
        while (l1.getCurrentToken() != r.c) 
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            SettableBeanProperty settablebeanproperty = _beanProperties.find(s);
            if (settablebeanproperty != null)
            {
                if (l1.getCurrentToken().d())
                {
                    externaltypehandler.handleTypePropertyValue(l1, deserializationcontext, s, obj);
                }
                if (class1 != null && !settablebeanproperty.visibleInView(class1))
                {
                    l1.skipChildren();
                } else
                {
                    try
                    {
                        settablebeanproperty.deserializeAndSet(l1, deserializationcontext, obj);
                    }
                    catch (Exception exception1)
                    {
                        wrapAndThrow(exception1, obj, s, deserializationcontext);
                    }
                }
            } else
            if (_ignorableProps != null && _ignorableProps.contains(s))
            {
                l1.skipChildren();
            } else
            if (!externaltypehandler.handlePropertyValue(l1, deserializationcontext, s, obj))
            {
                if (_anySetter != null)
                {
                    try
                    {
                        _anySetter.deserializeAndSet(l1, deserializationcontext, obj, s);
                    }
                    catch (Exception exception)
                    {
                        wrapAndThrow(exception, obj, s, deserializationcontext);
                    }
                } else
                {
                    handleUnknownProperty(l1, deserializationcontext, obj, s);
                }
            }
            l1.nextToken();
        }
        return externaltypehandler.complete(l1, deserializationcontext, obj);
    }

    protected Object deserializeWithUnwrapped(l l1, DeserializationContext deserializationcontext)
    {
        if (_delegateDeserializer != null)
        {
            return _valueInstantiator.createUsingDelegate(deserializationcontext, _delegateDeserializer.deserialize(l1, deserializationcontext));
        }
        if (_propertyBasedCreator != null)
        {
            return deserializeUsingPropertyBasedWithUnwrapped(l1, deserializationcontext);
        }
        TokenBuffer tokenbuffer = new TokenBuffer(l1.getCodec());
        tokenbuffer.writeStartObject();
        Object obj = _valueInstantiator.createUsingDefault(deserializationcontext);
        if (_injectables != null)
        {
            injectValues(deserializationcontext, obj);
        }
        Class class1;
        if (_needViewProcesing)
        {
            class1 = deserializationcontext.getActiveView();
        } else
        {
            class1 = null;
        }
        while (l1.getCurrentToken() != r.c) 
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            SettableBeanProperty settablebeanproperty = _beanProperties.find(s);
            if (settablebeanproperty != null)
            {
                if (class1 != null && !settablebeanproperty.visibleInView(class1))
                {
                    l1.skipChildren();
                } else
                {
                    try
                    {
                        settablebeanproperty.deserializeAndSet(l1, deserializationcontext, obj);
                    }
                    catch (Exception exception1)
                    {
                        wrapAndThrow(exception1, obj, s, deserializationcontext);
                    }
                }
            } else
            if (_ignorableProps != null && _ignorableProps.contains(s))
            {
                l1.skipChildren();
            } else
            {
                tokenbuffer.writeFieldName(s);
                tokenbuffer.copyCurrentStructure(l1);
                if (_anySetter != null)
                {
                    try
                    {
                        _anySetter.deserializeAndSet(l1, deserializationcontext, obj, s);
                    }
                    catch (Exception exception)
                    {
                        wrapAndThrow(exception, obj, s, deserializationcontext);
                    }
                }
            }
            l1.nextToken();
        }
        tokenbuffer.writeEndObject();
        _unwrappedPropertyHandler.processUnwrapped(l1, deserializationcontext, obj, tokenbuffer);
        return obj;
    }

    protected Object deserializeWithUnwrapped(l l1, DeserializationContext deserializationcontext, Object obj)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.b)
        {
            r1 = l1.nextToken();
        }
        TokenBuffer tokenbuffer = new TokenBuffer(l1.getCodec());
        tokenbuffer.writeStartObject();
        Class class1;
        if (_needViewProcesing)
        {
            class1 = deserializationcontext.getActiveView();
        } else
        {
            class1 = null;
        }
        while (r1 == r.f) 
        {
            String s = l1.getCurrentName();
            SettableBeanProperty settablebeanproperty = _beanProperties.find(s);
            l1.nextToken();
            if (settablebeanproperty != null)
            {
                if (class1 != null && !settablebeanproperty.visibleInView(class1))
                {
                    l1.skipChildren();
                } else
                {
                    try
                    {
                        settablebeanproperty.deserializeAndSet(l1, deserializationcontext, obj);
                    }
                    catch (Exception exception)
                    {
                        wrapAndThrow(exception, obj, s, deserializationcontext);
                    }
                }
            } else
            if (_ignorableProps != null && _ignorableProps.contains(s))
            {
                l1.skipChildren();
            } else
            {
                tokenbuffer.writeFieldName(s);
                tokenbuffer.copyCurrentStructure(l1);
                if (_anySetter != null)
                {
                    _anySetter.deserializeAndSet(l1, deserializationcontext, obj, s);
                }
            }
            r1 = l1.nextToken();
        }
        tokenbuffer.writeEndObject();
        _unwrappedPropertyHandler.processUnwrapped(l1, deserializationcontext, obj, tokenbuffer);
        return obj;
    }

    protected final Object deserializeWithView(l l1, DeserializationContext deserializationcontext, Object obj, Class class1)
    {
        r r1 = l1.getCurrentToken();
        while (r1 == r.f) 
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            SettableBeanProperty settablebeanproperty = _beanProperties.find(s);
            if (settablebeanproperty != null)
            {
                if (!settablebeanproperty.visibleInView(class1))
                {
                    l1.skipChildren();
                } else
                {
                    try
                    {
                        settablebeanproperty.deserializeAndSet(l1, deserializationcontext, obj);
                    }
                    catch (Exception exception)
                    {
                        wrapAndThrow(exception, obj, s, deserializationcontext);
                    }
                }
            } else
            if (_ignorableProps != null && _ignorableProps.contains(s))
            {
                l1.skipChildren();
            } else
            if (_anySetter != null)
            {
                _anySetter.deserializeAndSet(l1, deserializationcontext, obj, s);
            } else
            {
                handleUnknownProperty(l1, deserializationcontext, obj, s);
            }
            r1 = l1.nextToken();
        }
        return obj;
    }

    public JsonDeserializer unwrappingDeserializer(NameTransformer nametransformer)
    {
        if (getClass() != com/fasterxml/jackson/databind/deser/BeanDeserializer)
        {
            return this;
        } else
        {
            return new BeanDeserializer(this, nametransformer);
        }
    }

    public BeanDeserializer withIgnorableProperties(HashSet hashset)
    {
        return new BeanDeserializer(this, hashset);
    }

    public volatile BeanDeserializerBase withIgnorableProperties(HashSet hashset)
    {
        return withIgnorableProperties(hashset);
    }

    public BeanDeserializer withObjectIdReader(ObjectIdReader objectidreader)
    {
        return new BeanDeserializer(this, objectidreader);
    }

    public volatile BeanDeserializerBase withObjectIdReader(ObjectIdReader objectidreader)
    {
        return withObjectIdReader(objectidreader);
    }

    private class _cls1
    {

        static final int $SwitchMap$com$fasterxml$jackson$core$JsonToken[];

        static 
        {
            $SwitchMap$com$fasterxml$jackson$core$JsonToken = new int[r.values().length];
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.h.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.i.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.j.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.g.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.k.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror4) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.l.ordinal()] = 6;
            }
            catch (NoSuchFieldError nosuchfielderror5) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.d.ordinal()] = 7;
            }
            catch (NoSuchFieldError nosuchfielderror6) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.f.ordinal()] = 8;
            }
            catch (NoSuchFieldError nosuchfielderror7) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.c.ordinal()] = 9;
            }
            catch (NoSuchFieldError nosuchfielderror8)
            {
                return;
            }
        }
    }

}
