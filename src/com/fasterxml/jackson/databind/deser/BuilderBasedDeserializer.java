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
import com.fasterxml.jackson.databind.deser.impl.BeanAsArrayBuilderDeserializer;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedCreator;
import com.fasterxml.jackson.databind.deser.impl.PropertyValueBuffer;
import com.fasterxml.jackson.databind.deser.impl.UnwrappedPropertyHandler;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Map;

// Referenced classes of package com.fasterxml.jackson.databind.deser:
//            BeanDeserializerBase, BeanDeserializerBuilder, ValueInstantiator, SettableBeanProperty, 
//            SettableAnyProperty

public class BuilderBasedDeserializer extends BeanDeserializerBase
{

    private static final long serialVersionUID = 1L;
    protected final AnnotatedMethod _buildMethod;

    public BuilderBasedDeserializer(BeanDeserializerBuilder beandeserializerbuilder, BeanDescription beandescription, BeanPropertyMap beanpropertymap, Map map, HashSet hashset, boolean flag, boolean flag1)
    {
        super(beandeserializerbuilder, beandescription, beanpropertymap, map, hashset, flag, flag1);
        _buildMethod = beandeserializerbuilder.getBuildMethod();
        if (_objectIdReader != null)
        {
            throw new IllegalArgumentException((new StringBuilder("Can not use Object Id with Builder-based deserialization (type ")).append(beandescription.getType()).append(")").toString());
        } else
        {
            return;
        }
    }

    protected BuilderBasedDeserializer(BuilderBasedDeserializer builderbaseddeserializer)
    {
        this(builderbaseddeserializer, builderbaseddeserializer._ignoreAllUnknown);
    }

    public BuilderBasedDeserializer(BuilderBasedDeserializer builderbaseddeserializer, ObjectIdReader objectidreader)
    {
        super(builderbaseddeserializer, objectidreader);
        _buildMethod = builderbaseddeserializer._buildMethod;
    }

    protected BuilderBasedDeserializer(BuilderBasedDeserializer builderbaseddeserializer, NameTransformer nametransformer)
    {
        super(builderbaseddeserializer, nametransformer);
        _buildMethod = builderbaseddeserializer._buildMethod;
    }

    public BuilderBasedDeserializer(BuilderBasedDeserializer builderbaseddeserializer, HashSet hashset)
    {
        super(builderbaseddeserializer, hashset);
        _buildMethod = builderbaseddeserializer._buildMethod;
    }

    protected BuilderBasedDeserializer(BuilderBasedDeserializer builderbaseddeserializer, boolean flag)
    {
        super(builderbaseddeserializer, flag);
        _buildMethod = builderbaseddeserializer._buildMethod;
    }

    private final Object vanillaDeserialize(l l1, DeserializationContext deserializationcontext, r r1)
    {
        Object obj = _valueInstantiator.createUsingDefault(deserializationcontext);
_L2:
        String s;
        SettableBeanProperty settablebeanproperty;
        if (l1.getCurrentToken() == r.c)
        {
            break MISSING_BLOCK_LABEL_99;
        }
        s = l1.getCurrentName();
        l1.nextToken();
        settablebeanproperty = _beanProperties.find(s);
        if (settablebeanproperty == null)
        {
            break; /* Loop/switch isn't completed */
        }
        Object obj1 = settablebeanproperty.deserializeSetAndReturn(l1, deserializationcontext, obj);
        obj = obj1;
_L3:
        l1.nextToken();
        if (true) goto _L2; else goto _L1
        Exception exception;
        exception;
        wrapAndThrow(exception, obj, s, deserializationcontext);
          goto _L3
_L1:
        handleUnknownVanilla(l1, deserializationcontext, obj, s);
          goto _L3
        return obj;
    }

    protected final Object _deserialize(l l1, DeserializationContext deserializationcontext, Object obj)
    {
        r r1;
        if (_injectables != null)
        {
            injectValues(deserializationcontext, obj);
        }
        if (_unwrappedPropertyHandler != null)
        {
            return deserializeWithUnwrapped(l1, deserializationcontext, obj);
        }
        if (_externalTypeIdHandler != null)
        {
            return deserializeWithExternalTypeId(l1, deserializationcontext, obj);
        }
        if (_needViewProcesing)
        {
            Class class1 = deserializationcontext.getActiveView();
            if (class1 != null)
            {
                return deserializeWithView(l1, deserializationcontext, obj, class1);
            }
        }
        r1 = l1.getCurrentToken();
        if (r1 == r.b)
        {
            r1 = l1.nextToken();
        }
_L2:
        String s;
        SettableBeanProperty settablebeanproperty;
        if (r1 != r.f)
        {
            break MISSING_BLOCK_LABEL_224;
        }
        s = l1.getCurrentName();
        l1.nextToken();
        settablebeanproperty = _beanProperties.find(s);
        if (settablebeanproperty == null)
        {
            break; /* Loop/switch isn't completed */
        }
        Object obj1 = settablebeanproperty.deserializeSetAndReturn(l1, deserializationcontext, obj);
        obj = obj1;
_L3:
        r1 = l1.nextToken();
        if (true) goto _L2; else goto _L1
        Exception exception;
        exception;
        wrapAndThrow(exception, obj, s, deserializationcontext);
          goto _L3
_L1:
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
          goto _L3
        return obj;
    }

    protected final Object _deserializeUsingPropertyBased(l l1, DeserializationContext deserializationcontext)
    {
        PropertyBasedCreator propertybasedcreator;
        PropertyValueBuffer propertyvaluebuffer;
        r r1;
        TokenBuffer tokenbuffer;
        propertybasedcreator = _propertyBasedCreator;
        propertyvaluebuffer = propertybasedcreator.startBuilding(l1, deserializationcontext, _objectIdReader);
        r1 = l1.getCurrentToken();
        tokenbuffer = null;
_L2:
        String s;
        if (r1 != r.f)
        {
            break MISSING_BLOCK_LABEL_308;
        }
        s = l1.getCurrentName();
        l1.nextToken();
        SettableBeanProperty settablebeanproperty = propertybasedcreator.findCreatorProperty(s);
        if (settablebeanproperty == null)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        Object obj1 = settablebeanproperty.deserialize(l1, deserializationcontext);
        if (!propertyvaluebuffer.assignParameter(settablebeanproperty.getCreatorIndex(), obj1))
        {
            break MISSING_BLOCK_LABEL_140;
        }
        l1.nextToken();
        Object obj2 = propertybasedcreator.build(deserializationcontext, propertyvaluebuffer);
        if (obj2.getClass() != _beanType.getRawClass())
        {
            return handlePolymorphic(l1, deserializationcontext, obj2, tokenbuffer);
        }
        break; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        wrapAndThrow(exception1, _beanType.getRawClass(), s, deserializationcontext);
_L3:
        r1 = l1.nextToken();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        Object obj;
        SettableBeanProperty settablebeanproperty1;
        Object obj3;
        if (tokenbuffer != null)
        {
            obj3 = handleUnknownProperties(deserializationcontext, obj2, tokenbuffer);
        } else
        {
            obj3 = obj2;
        }
        return _deserialize(l1, deserializationcontext, obj3);
        if (!propertyvaluebuffer.readIdProperty(s))
        {
            settablebeanproperty1 = _beanProperties.find(s);
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
          goto _L3
        try
        {
            obj = propertybasedcreator.build(deserializationcontext, propertyvaluebuffer);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            wrapInstantiationProblem(exception, deserializationcontext);
            return null;
        }
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
    }

    protected volatile BeanDeserializerBase asArrayDeserializer()
    {
        return asArrayDeserializer();
    }

    protected BeanAsArrayBuilderDeserializer asArrayDeserializer()
    {
        return new BeanAsArrayBuilderDeserializer(this, _beanProperties.getPropertiesInInsertionOrder(), _buildMethod);
    }

    public final Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.b)
        {
            r r2 = l1.nextToken();
            if (_vanillaProcessing)
            {
                return finishBuild(deserializationcontext, vanillaDeserialize(l1, deserializationcontext, r2));
            } else
            {
                return finishBuild(deserializationcontext, deserializeFromObject(l1, deserializationcontext));
            }
        }
        switch (_cls1..SwitchMap.com.fasterxml.jackson.core.JsonToken[r1.ordinal()])
        {
        default:
            throw deserializationcontext.mappingException(getBeanClass());

        case 1: // '\001'
            return finishBuild(deserializationcontext, deserializeFromString(l1, deserializationcontext));

        case 2: // '\002'
            return finishBuild(deserializationcontext, deserializeFromNumber(l1, deserializationcontext));

        case 3: // '\003'
            return finishBuild(deserializationcontext, deserializeFromDouble(l1, deserializationcontext));

        case 4: // '\004'
            return l1.getEmbeddedObject();

        case 5: // '\005'
        case 6: // '\006'
            return finishBuild(deserializationcontext, deserializeFromBoolean(l1, deserializationcontext));

        case 7: // '\007'
            return finishBuild(deserializationcontext, deserializeFromArray(l1, deserializationcontext));

        case 8: // '\b'
        case 9: // '\t'
            return finishBuild(deserializationcontext, deserializeFromObject(l1, deserializationcontext));
        }
    }

    public Object deserialize(l l1, DeserializationContext deserializationcontext, Object obj)
    {
        return finishBuild(deserializationcontext, _deserialize(l1, deserializationcontext, obj));
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
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        String s;
        wrapAndThrow(exception1, obj, s, deserializationcontext);
_L7:
        l1.nextToken();
        if (l1.getCurrentToken() == r.c) goto _L6; else goto _L5
_L5:
        SettableBeanProperty settablebeanproperty;
        s = l1.getCurrentName();
        l1.nextToken();
        settablebeanproperty = _beanProperties.find(s);
        if (settablebeanproperty == null)
        {
            break MISSING_BLOCK_LABEL_164;
        }
        Object obj1 = settablebeanproperty.deserializeSetAndReturn(l1, deserializationcontext, obj);
        obj = obj1;
          goto _L7
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
          goto _L7
    }

    protected Object deserializeUsingPropertyBasedWithExternalTypeId(l l1, DeserializationContext deserializationcontext)
    {
        throw new IllegalStateException("Deserialization with Builder, External type id, @JsonCreator not yet implemented");
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
            break MISSING_BLOCK_LABEL_322;
        }
        s = l1.getCurrentName();
        l1.nextToken();
        SettableBeanProperty settablebeanproperty = propertybasedcreator.findCreatorProperty(s);
        if (settablebeanproperty == null)
        {
            break MISSING_BLOCK_LABEL_209;
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
        ExternalTypeHandler externaltypehandler;
        String s;
        SettableBeanProperty settablebeanproperty;
        Class class1;
        if (_needViewProcesing)
        {
            class1 = deserializationcontext.getActiveView();
        } else
        {
            class1 = null;
        }
        externaltypehandler = _externalTypeIdHandler.start();
        if (l1.getCurrentToken() == r.c)
        {
            break MISSING_BLOCK_LABEL_213;
        }
        s = l1.getCurrentName();
        l1.nextToken();
        settablebeanproperty = _beanProperties.find(s);
        if (settablebeanproperty == null)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        if (class1 == null || settablebeanproperty.visibleInView(class1))
        {
            break; /* Loop/switch isn't completed */
        }
        l1.skipChildren();
_L4:
        l1.nextToken();
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_22;
_L1:
        Object obj1;
        try
        {
            obj1 = settablebeanproperty.deserializeSetAndReturn(l1, deserializationcontext, obj);
        }
        catch (Exception exception1)
        {
            wrapAndThrow(exception1, obj, s, deserializationcontext);
            continue; /* Loop/switch isn't completed */
        }
        obj = obj1;
        continue; /* Loop/switch isn't completed */
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
        if (true) goto _L4; else goto _L3
_L3:
        return externaltypehandler.complete(l1, deserializationcontext, obj);
    }

    protected Object deserializeWithUnwrapped(l l1, DeserializationContext deserializationcontext)
    {
        TokenBuffer tokenbuffer;
        Object obj;
        String s;
        SettableBeanProperty settablebeanproperty;
        if (_delegateDeserializer != null)
        {
            return _valueInstantiator.createUsingDelegate(deserializationcontext, _delegateDeserializer.deserialize(l1, deserializationcontext));
        }
        if (_propertyBasedCreator != null)
        {
            return deserializeUsingPropertyBasedWithUnwrapped(l1, deserializationcontext);
        }
        tokenbuffer = new TokenBuffer(l1.getCodec());
        tokenbuffer.writeStartObject();
        obj = _valueInstantiator.createUsingDefault(deserializationcontext);
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
        if (l1.getCurrentToken() == r.c)
        {
            break MISSING_BLOCK_LABEL_274;
        }
        s = l1.getCurrentName();
        l1.nextToken();
        settablebeanproperty = _beanProperties.find(s);
        if (settablebeanproperty == null)
        {
            break MISSING_BLOCK_LABEL_197;
        }
        if (class1 == null || settablebeanproperty.visibleInView(class1))
        {
            break; /* Loop/switch isn't completed */
        }
        l1.skipChildren();
_L4:
        l1.nextToken();
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_92;
_L1:
        Object obj1;
        try
        {
            obj1 = settablebeanproperty.deserializeSetAndReturn(l1, deserializationcontext, obj);
        }
        catch (Exception exception1)
        {
            wrapAndThrow(exception1, obj, s, deserializationcontext);
            continue; /* Loop/switch isn't completed */
        }
        obj = obj1;
        continue; /* Loop/switch isn't completed */
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
        if (true) goto _L4; else goto _L3
_L3:
        tokenbuffer.writeEndObject();
        _unwrappedPropertyHandler.processUnwrapped(l1, deserializationcontext, obj, tokenbuffer);
        return obj;
    }

    protected Object deserializeWithUnwrapped(l l1, DeserializationContext deserializationcontext, Object obj)
    {
        TokenBuffer tokenbuffer;
        String s;
        SettableBeanProperty settablebeanproperty;
        r r1 = l1.getCurrentToken();
        if (r1 == r.b)
        {
            r1 = l1.nextToken();
        }
        tokenbuffer = new TokenBuffer(l1.getCodec());
        tokenbuffer.writeStartObject();
        Class class1;
        if (_needViewProcesing)
        {
            class1 = deserializationcontext.getActiveView();
        } else
        {
            class1 = null;
        }
        if (r1 != r.f)
        {
            break MISSING_BLOCK_LABEL_214;
        }
        s = l1.getCurrentName();
        settablebeanproperty = _beanProperties.find(s);
        l1.nextToken();
        if (settablebeanproperty == null)
        {
            break MISSING_BLOCK_LABEL_152;
        }
        if (class1 == null || settablebeanproperty.visibleInView(class1))
        {
            break; /* Loop/switch isn't completed */
        }
        l1.skipChildren();
_L4:
        r1 = l1.nextToken();
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_51;
_L1:
        Object obj1;
        try
        {
            obj1 = settablebeanproperty.deserializeSetAndReturn(l1, deserializationcontext, obj);
        }
        catch (Exception exception)
        {
            wrapAndThrow(exception, obj, s, deserializationcontext);
            continue; /* Loop/switch isn't completed */
        }
        obj = obj1;
        continue; /* Loop/switch isn't completed */
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
        if (true) goto _L4; else goto _L3
_L3:
        tokenbuffer.writeEndObject();
        _unwrappedPropertyHandler.processUnwrapped(l1, deserializationcontext, obj, tokenbuffer);
        return obj;
    }

    protected final Object deserializeWithView(l l1, DeserializationContext deserializationcontext, Object obj, Class class1)
    {
        r r1 = l1.getCurrentToken();
_L2:
        String s;
        SettableBeanProperty settablebeanproperty;
        if (r1 != r.f)
        {
            break MISSING_BLOCK_LABEL_157;
        }
        s = l1.getCurrentName();
        l1.nextToken();
        settablebeanproperty = _beanProperties.find(s);
        if (settablebeanproperty == null)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        if (settablebeanproperty.visibleInView(class1))
        {
            break; /* Loop/switch isn't completed */
        }
        l1.skipChildren();
_L3:
        r1 = l1.nextToken();
        if (true) goto _L2; else goto _L1
_L1:
        Object obj1 = settablebeanproperty.deserializeSetAndReturn(l1, deserializationcontext, obj);
        obj = obj1;
          goto _L3
        Exception exception;
        exception;
        wrapAndThrow(exception, obj, s, deserializationcontext);
          goto _L3
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
          goto _L3
        return obj;
    }

    protected final Object finishBuild(DeserializationContext deserializationcontext, Object obj)
    {
        Object obj1;
        try
        {
            obj1 = _buildMethod.getMember().invoke(obj, new Object[0]);
        }
        catch (Exception exception)
        {
            wrapInstantiationProblem(exception, deserializationcontext);
            return null;
        }
        return obj1;
    }

    public JsonDeserializer unwrappingDeserializer(NameTransformer nametransformer)
    {
        return new BuilderBasedDeserializer(this, nametransformer);
    }

    public volatile BeanDeserializerBase withIgnorableProperties(HashSet hashset)
    {
        return withIgnorableProperties(hashset);
    }

    public BuilderBasedDeserializer withIgnorableProperties(HashSet hashset)
    {
        return new BuilderBasedDeserializer(this, hashset);
    }

    public volatile BeanDeserializerBase withObjectIdReader(ObjectIdReader objectidreader)
    {
        return withObjectIdReader(objectidreader);
    }

    public BuilderBasedDeserializer withObjectIdReader(ObjectIdReader objectidreader)
    {
        return new BuilderBasedDeserializer(this, objectidreader);
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
