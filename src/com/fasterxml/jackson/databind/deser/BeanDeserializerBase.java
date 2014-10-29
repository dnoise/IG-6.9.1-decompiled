// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.p;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler;
import com.fasterxml.jackson.databind.deser.impl.InnerClassProperty;
import com.fasterxml.jackson.databind.deser.impl.ManagedReferenceProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdValueProperty;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedCreator;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.deser.impl.UnwrappedPropertyHandler;
import com.fasterxml.jackson.databind.deser.impl.ValueInjector;
import com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase;
import com.fasterxml.jackson.databind.deser.std.StdDelegatingDeserializer;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.ClassKey;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.fasterxml.jackson.databind.deser:
//            ContextualDeserializer, ResolvableDeserializer, BeanDeserializerBuilder, ValueInstantiator, 
//            SettableBeanProperty, AbstractDeserializer, SettableAnyProperty

public abstract class BeanDeserializerBase extends StdDeserializer
    implements ContextualDeserializer, ResolvableDeserializer, Serializable
{

    private static final long serialVersionUID = 0xe3b4c010e97c8f20L;
    protected SettableAnyProperty _anySetter;
    protected final Map _backRefs;
    protected final BeanPropertyMap _beanProperties;
    protected final JavaType _beanType;
    private final transient Annotations _classAnnotations;
    protected JsonDeserializer _delegateDeserializer;
    protected ExternalTypeHandler _externalTypeIdHandler;
    protected final HashSet _ignorableProps;
    protected final boolean _ignoreAllUnknown;
    protected final ValueInjector _injectables[];
    protected final boolean _needViewProcesing;
    protected boolean _nonStandardCreation;
    protected final ObjectIdReader _objectIdReader;
    protected PropertyBasedCreator _propertyBasedCreator;
    protected final com.fasterxml.jackson.annotation.JsonFormat.Shape _serializationShape;
    protected transient HashMap _subDeserializers;
    protected UnwrappedPropertyHandler _unwrappedPropertyHandler;
    protected final ValueInstantiator _valueInstantiator;
    protected boolean _vanillaProcessing;

    protected BeanDeserializerBase(BeanDeserializerBase beandeserializerbase)
    {
        this(beandeserializerbase, beandeserializerbase._ignoreAllUnknown);
    }

    public BeanDeserializerBase(BeanDeserializerBase beandeserializerbase, ObjectIdReader objectidreader)
    {
        super(beandeserializerbase._beanType);
        _classAnnotations = beandeserializerbase._classAnnotations;
        _beanType = beandeserializerbase._beanType;
        _valueInstantiator = beandeserializerbase._valueInstantiator;
        _delegateDeserializer = beandeserializerbase._delegateDeserializer;
        _propertyBasedCreator = beandeserializerbase._propertyBasedCreator;
        _backRefs = beandeserializerbase._backRefs;
        _ignorableProps = beandeserializerbase._ignorableProps;
        _ignoreAllUnknown = beandeserializerbase._ignoreAllUnknown;
        _anySetter = beandeserializerbase._anySetter;
        _injectables = beandeserializerbase._injectables;
        _nonStandardCreation = beandeserializerbase._nonStandardCreation;
        _unwrappedPropertyHandler = beandeserializerbase._unwrappedPropertyHandler;
        _needViewProcesing = beandeserializerbase._needViewProcesing;
        _serializationShape = beandeserializerbase._serializationShape;
        _vanillaProcessing = beandeserializerbase._vanillaProcessing;
        _objectIdReader = objectidreader;
        if (objectidreader == null)
        {
            _beanProperties = beandeserializerbase._beanProperties;
            return;
        } else
        {
            ObjectIdValueProperty objectidvalueproperty = new ObjectIdValueProperty(objectidreader, true);
            _beanProperties = beandeserializerbase._beanProperties.withProperty(objectidvalueproperty);
            return;
        }
    }

    protected BeanDeserializerBase(BeanDeserializerBase beandeserializerbase, NameTransformer nametransformer)
    {
        super(beandeserializerbase._beanType);
        _classAnnotations = beandeserializerbase._classAnnotations;
        _beanType = beandeserializerbase._beanType;
        _valueInstantiator = beandeserializerbase._valueInstantiator;
        _delegateDeserializer = beandeserializerbase._delegateDeserializer;
        _propertyBasedCreator = beandeserializerbase._propertyBasedCreator;
        _backRefs = beandeserializerbase._backRefs;
        _ignorableProps = beandeserializerbase._ignorableProps;
        boolean flag;
        UnwrappedPropertyHandler unwrappedpropertyhandler;
        if (nametransformer != null || beandeserializerbase._ignoreAllUnknown)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        _ignoreAllUnknown = flag;
        _anySetter = beandeserializerbase._anySetter;
        _injectables = beandeserializerbase._injectables;
        _objectIdReader = beandeserializerbase._objectIdReader;
        _nonStandardCreation = beandeserializerbase._nonStandardCreation;
        unwrappedpropertyhandler = beandeserializerbase._unwrappedPropertyHandler;
        if (nametransformer != null)
        {
            if (unwrappedpropertyhandler != null)
            {
                unwrappedpropertyhandler = unwrappedpropertyhandler.renameAll(nametransformer);
            }
            _beanProperties = beandeserializerbase._beanProperties.renameAll(nametransformer);
        } else
        {
            _beanProperties = beandeserializerbase._beanProperties;
        }
        _unwrappedPropertyHandler = unwrappedpropertyhandler;
        _needViewProcesing = beandeserializerbase._needViewProcesing;
        _serializationShape = beandeserializerbase._serializationShape;
        _vanillaProcessing = false;
    }

    public BeanDeserializerBase(BeanDeserializerBase beandeserializerbase, HashSet hashset)
    {
        super(beandeserializerbase._beanType);
        _classAnnotations = beandeserializerbase._classAnnotations;
        _beanType = beandeserializerbase._beanType;
        _valueInstantiator = beandeserializerbase._valueInstantiator;
        _delegateDeserializer = beandeserializerbase._delegateDeserializer;
        _propertyBasedCreator = beandeserializerbase._propertyBasedCreator;
        _backRefs = beandeserializerbase._backRefs;
        _ignorableProps = hashset;
        _ignoreAllUnknown = beandeserializerbase._ignoreAllUnknown;
        _anySetter = beandeserializerbase._anySetter;
        _injectables = beandeserializerbase._injectables;
        _nonStandardCreation = beandeserializerbase._nonStandardCreation;
        _unwrappedPropertyHandler = beandeserializerbase._unwrappedPropertyHandler;
        _needViewProcesing = beandeserializerbase._needViewProcesing;
        _serializationShape = beandeserializerbase._serializationShape;
        _vanillaProcessing = beandeserializerbase._vanillaProcessing;
        _objectIdReader = beandeserializerbase._objectIdReader;
        _beanProperties = beandeserializerbase._beanProperties;
    }

    protected BeanDeserializerBase(BeanDeserializerBase beandeserializerbase, boolean flag)
    {
        super(beandeserializerbase._beanType);
        _classAnnotations = beandeserializerbase._classAnnotations;
        _beanType = beandeserializerbase._beanType;
        _valueInstantiator = beandeserializerbase._valueInstantiator;
        _delegateDeserializer = beandeserializerbase._delegateDeserializer;
        _propertyBasedCreator = beandeserializerbase._propertyBasedCreator;
        _beanProperties = beandeserializerbase._beanProperties;
        _backRefs = beandeserializerbase._backRefs;
        _ignorableProps = beandeserializerbase._ignorableProps;
        _ignoreAllUnknown = flag;
        _anySetter = beandeserializerbase._anySetter;
        _injectables = beandeserializerbase._injectables;
        _objectIdReader = beandeserializerbase._objectIdReader;
        _nonStandardCreation = beandeserializerbase._nonStandardCreation;
        _unwrappedPropertyHandler = beandeserializerbase._unwrappedPropertyHandler;
        _needViewProcesing = beandeserializerbase._needViewProcesing;
        _serializationShape = beandeserializerbase._serializationShape;
        _vanillaProcessing = beandeserializerbase._vanillaProcessing;
    }

    protected BeanDeserializerBase(BeanDeserializerBuilder beandeserializerbuilder, BeanDescription beandescription, BeanPropertyMap beanpropertymap, Map map, HashSet hashset, boolean flag, boolean flag1)
    {
        boolean flag2 = true;
        super(beandescription.getType());
        _classAnnotations = beandescription.getClassInfo().getAnnotations();
        _beanType = beandescription.getType();
        _valueInstantiator = beandeserializerbuilder.getValueInstantiator();
        _beanProperties = beanpropertymap;
        _backRefs = map;
        _ignorableProps = hashset;
        _ignoreAllUnknown = flag;
        _anySetter = beandeserializerbuilder.getAnySetter();
        List list = beandeserializerbuilder.getInjectables();
        ValueInjector avalueinjector[];
        boolean flag3;
        com.fasterxml.jackson.annotation.JsonFormat.Value value;
        com.fasterxml.jackson.annotation.JsonFormat.Shape shape;
        if (list == null || list.isEmpty())
        {
            avalueinjector = null;
        } else
        {
            avalueinjector = (ValueInjector[])list.toArray(new ValueInjector[list.size()]);
        }
        _injectables = avalueinjector;
        _objectIdReader = beandeserializerbuilder.getObjectIdReader();
        if (_unwrappedPropertyHandler != null || _valueInstantiator.canCreateUsingDelegate() || _valueInstantiator.canCreateFromObjectWith() || !_valueInstantiator.canCreateUsingDefault())
        {
            flag3 = flag2;
        } else
        {
            flag3 = false;
        }
        _nonStandardCreation = flag3;
        value = beandescription.findExpectedFormat(null);
        shape = null;
        if (value != null)
        {
            shape = value.getShape();
        }
        _serializationShape = shape;
        _needViewProcesing = flag1;
        if (_nonStandardCreation || _injectables != null || _needViewProcesing || _objectIdReader == null)
        {
            flag2 = false;
        }
        _vanillaProcessing = flag2;
    }

    private Throwable throwOrReturnThrowable(Throwable throwable, DeserializationContext deserializationcontext)
    {
        for (; (throwable instanceof InvocationTargetException) && throwable.getCause() != null; throwable = throwable.getCause()) { }
        if (throwable instanceof Error)
        {
            throw (Error)throwable;
        }
        boolean flag;
        if (deserializationcontext == null || deserializationcontext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (throwable instanceof IOException)
        {
            if (!flag || !(throwable instanceof p))
            {
                throw (IOException)throwable;
            }
        } else
        if (!flag && (throwable instanceof RuntimeException))
        {
            throw (RuntimeException)throwable;
        }
        return throwable;
    }

    protected abstract Object _deserializeUsingPropertyBased(l l1, DeserializationContext deserializationcontext);

    protected JsonDeserializer _findSubclassDeserializer(DeserializationContext deserializationcontext, Object obj, TokenBuffer tokenbuffer)
    {
        this;
        JVM INSTR monitorenter ;
        if (_subDeserializers != null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        JsonDeserializer jsondeserializer = null;
_L1:
        this;
        JVM INSTR monitorexit ;
        if (jsondeserializer != null)
        {
            return jsondeserializer;
        }
        break MISSING_BLOCK_LABEL_55;
        jsondeserializer = (JsonDeserializer)_subDeserializers.get(new ClassKey(obj.getClass()));
          goto _L1
        Exception exception;
        exception;
        throw exception;
        JsonDeserializer jsondeserializer1;
        jsondeserializer1 = deserializationcontext.findRootValueDeserializer(deserializationcontext.constructType(obj.getClass()));
        if (jsondeserializer1 == null)
        {
            break MISSING_BLOCK_LABEL_127;
        }
        this;
        JVM INSTR monitorenter ;
        if (_subDeserializers == null)
        {
            _subDeserializers = new HashMap();
        }
        _subDeserializers.put(new ClassKey(obj.getClass()), jsondeserializer1);
        this;
        JVM INSTR monitorexit ;
        return jsondeserializer1;
        Exception exception1;
        exception1;
        throw exception1;
        return jsondeserializer1;
    }

    protected SettableBeanProperty _resolveInnerClassValuedProperty(DeserializationContext deserializationcontext, SettableBeanProperty settablebeanproperty)
    {
        JsonDeserializer jsondeserializer = settablebeanproperty.getValueDeserializer();
        if (!(jsondeserializer instanceof BeanDeserializerBase) || ((BeanDeserializerBase)jsondeserializer).getValueInstantiator().canCreateUsingDefault()) goto _L2; else goto _L1
_L1:
        Class class1;
        Class class2;
        class1 = settablebeanproperty.getType().getRawClass();
        class2 = ClassUtil.getOuterClass(class1);
        if (class2 == null || class2 != _beanType.getRawClass()) goto _L2; else goto _L3
_L3:
        Constructor aconstructor[];
        int i;
        int j;
        aconstructor = class1.getConstructors();
        i = aconstructor.length;
        j = 0;
_L8:
        if (j >= i) goto _L2; else goto _L4
_L4:
        Constructor constructor;
        Class aclass[];
        constructor = aconstructor[j];
        aclass = constructor.getParameterTypes();
        if (aclass.length != 1 || aclass[0] != class2) goto _L6; else goto _L5
_L5:
        if (deserializationcontext.getConfig().canOverrideAccessModifiers())
        {
            ClassUtil.checkAndFixAccess(constructor);
        }
        settablebeanproperty = new InnerClassProperty(settablebeanproperty, constructor);
_L2:
        return settablebeanproperty;
_L6:
        j++;
        if (true) goto _L8; else goto _L7
_L7:
    }

    protected SettableBeanProperty _resolveManagedReferenceProperty(DeserializationContext deserializationcontext, SettableBeanProperty settablebeanproperty)
    {
        String s = settablebeanproperty.getManagedReferenceName();
        if (s == null)
        {
            return settablebeanproperty;
        }
        JsonDeserializer jsondeserializer = settablebeanproperty.getValueDeserializer();
        boolean flag = false;
        SettableBeanProperty settablebeanproperty1;
        if (jsondeserializer instanceof BeanDeserializerBase)
        {
            settablebeanproperty1 = ((BeanDeserializerBase)jsondeserializer).findBackReference(s);
        } else
        if (jsondeserializer instanceof ContainerDeserializerBase)
        {
            JsonDeserializer jsondeserializer1 = ((ContainerDeserializerBase)jsondeserializer).getContentDeserializer();
            if (!(jsondeserializer1 instanceof BeanDeserializerBase))
            {
                String s1;
                if (jsondeserializer1 == null)
                {
                    s1 = "NULL";
                } else
                {
                    s1 = jsondeserializer1.getClass().getName();
                }
                throw new IllegalArgumentException((new StringBuilder("Can not handle managed/back reference '")).append(s).append("': value deserializer is of type ContainerDeserializerBase, but content type is not handled by a BeanDeserializer  (instead it's of type ").append(s1).append(")").toString());
            }
            settablebeanproperty1 = ((BeanDeserializerBase)jsondeserializer1).findBackReference(s);
            flag = true;
        } else
        if (jsondeserializer instanceof AbstractDeserializer)
        {
            settablebeanproperty1 = ((AbstractDeserializer)jsondeserializer).findBackReference(s);
            flag = false;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Can not handle managed/back reference '")).append(s).append("': type for value deserializer is not BeanDeserializer or ContainerDeserializerBase, but ").append(jsondeserializer.getClass().getName()).toString());
        }
        if (settablebeanproperty1 == null)
        {
            throw new IllegalArgumentException((new StringBuilder("Can not handle managed/back reference '")).append(s).append("': no back reference property found from type ").append(settablebeanproperty.getType()).toString());
        }
        JavaType javatype = _beanType;
        JavaType javatype1 = settablebeanproperty1.getType();
        if (!javatype1.getRawClass().isAssignableFrom(javatype.getRawClass()))
        {
            throw new IllegalArgumentException((new StringBuilder("Can not handle managed/back reference '")).append(s).append("': back reference type (").append(javatype1.getRawClass().getName()).append(") not compatible with managed type (").append(javatype.getRawClass().getName()).append(")").toString());
        } else
        {
            return new ManagedReferenceProperty(settablebeanproperty, s, settablebeanproperty1, _classAnnotations, flag);
        }
    }

    protected SettableBeanProperty _resolveUnwrappedProperty(DeserializationContext deserializationcontext, SettableBeanProperty settablebeanproperty)
    {
        com.fasterxml.jackson.databind.introspect.AnnotatedMember annotatedmember = settablebeanproperty.getMember();
        if (annotatedmember != null)
        {
            NameTransformer nametransformer = deserializationcontext.getAnnotationIntrospector().findUnwrappingNameTransformer(annotatedmember);
            if (nametransformer != null)
            {
                JsonDeserializer jsondeserializer = settablebeanproperty.getValueDeserializer();
                JsonDeserializer jsondeserializer1 = jsondeserializer.unwrappingDeserializer(nametransformer);
                if (jsondeserializer1 != jsondeserializer && jsondeserializer1 != null)
                {
                    return settablebeanproperty.withValueDeserializer(jsondeserializer1);
                }
            }
        }
        return null;
    }

    protected abstract BeanDeserializerBase asArrayDeserializer();

    public JsonDeserializer createContextual(DeserializationContext deserializationcontext, BeanProperty beanproperty)
    {
        ObjectIdReader objectidreader = _objectIdReader;
        AnnotationIntrospector annotationintrospector = deserializationcontext.getAnnotationIntrospector();
        Object obj;
        if (beanproperty == null || annotationintrospector == null)
        {
            obj = null;
        } else
        {
            obj = beanproperty.getMember();
        }
        ObjectIdReader objectidreader1;
        String as[];
        if (beanproperty != null && annotationintrospector != null)
        {
            String as1[] = annotationintrospector.findPropertiesToIgnore(((com.fasterxml.jackson.databind.introspect.Annotated) (obj)));
            ObjectIdInfo objectidinfo = annotationintrospector.findObjectIdInfo(((com.fasterxml.jackson.databind.introspect.Annotated) (obj)));
            BeanDeserializerBase beandeserializerbase;
            com.fasterxml.jackson.annotation.JsonFormat.Shape shape;
            if (objectidinfo != null)
            {
                ObjectIdInfo objectidinfo1 = annotationintrospector.findObjectReferenceInfo(((com.fasterxml.jackson.databind.introspect.Annotated) (obj)), objectidinfo);
                Class class1 = objectidinfo1.getGeneratorType();
                com.fasterxml.jackson.annotation.JsonFormat.Value value;
                JavaType javatype1;
                Object obj1;
                SettableBeanProperty settablebeanproperty;
                JsonDeserializer jsondeserializer;
                if (class1 == com/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator)
                {
                    String s = objectidinfo1.getPropertyName();
                    settablebeanproperty = findProperty(s);
                    if (settablebeanproperty == null)
                    {
                        throw new IllegalArgumentException((new StringBuilder("Invalid Object Id definition for ")).append(getBeanClass().getName()).append(": can not find property with name '").append(s).append("'").toString());
                    }
                    javatype1 = settablebeanproperty.getType();
                    obj1 = new PropertyBasedObjectIdGenerator(objectidinfo1.getScope());
                } else
                {
                    JavaType javatype = deserializationcontext.constructType(class1);
                    javatype1 = deserializationcontext.getTypeFactory().findTypeParameters(javatype, com/fasterxml/jackson/annotation/ObjectIdGenerator)[0];
                    obj1 = deserializationcontext.objectIdGeneratorInstance(((com.fasterxml.jackson.databind.introspect.Annotated) (obj)), objectidinfo1);
                    settablebeanproperty = null;
                }
                jsondeserializer = deserializationcontext.findRootValueDeserializer(javatype1);
                objectidreader1 = ObjectIdReader.construct(javatype1, objectidinfo1.getPropertyName(), ((ObjectIdGenerator) (obj1)), jsondeserializer, settablebeanproperty);
                as = as1;
            } else
            {
                objectidreader1 = objectidreader;
                as = as1;
            }
        } else
        {
            objectidreader1 = objectidreader;
            as = null;
        }
        if (objectidreader1 != null && objectidreader1 != _objectIdReader)
        {
            beandeserializerbase = withObjectIdReader(objectidreader1);
        } else
        {
            beandeserializerbase = this;
        }
        if (as != null && as.length != 0)
        {
            beandeserializerbase = beandeserializerbase.withIgnorableProperties(ArrayBuilders.setAndArray(beandeserializerbase._ignorableProps, as));
        }
        if (obj == null) goto _L2; else goto _L1
_L1:
        value = annotationintrospector.findFormat(((com.fasterxml.jackson.databind.introspect.Annotated) (obj)));
        if (value == null) goto _L2; else goto _L3
_L3:
        shape = value.getShape();
_L5:
        if (shape == null)
        {
            shape = _serializationShape;
        }
        if (shape == com.fasterxml.jackson.annotation.JsonFormat.Shape.ARRAY)
        {
            return beandeserializerbase.asArrayDeserializer();
        } else
        {
            return beandeserializerbase;
        }
_L2:
        shape = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public Iterator creatorProperties()
    {
        if (_propertyBasedCreator == null)
        {
            return Collections.emptyList().iterator();
        } else
        {
            return _propertyBasedCreator.properties().iterator();
        }
    }

    public Object deserializeFromArray(l l1, DeserializationContext deserializationcontext)
    {
        if (_delegateDeserializer == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        Object obj;
        obj = _valueInstantiator.createUsingDelegate(deserializationcontext, _delegateDeserializer.deserialize(l1, deserializationcontext));
        if (_injectables != null)
        {
            injectValues(deserializationcontext, obj);
        }
        return obj;
        Exception exception;
        exception;
        wrapInstantiationProblem(exception, deserializationcontext);
        throw deserializationcontext.mappingException(getBeanClass());
    }

    public Object deserializeFromBoolean(l l1, DeserializationContext deserializationcontext)
    {
        if (_delegateDeserializer != null && !_valueInstantiator.canCreateFromBoolean())
        {
            Object obj = _valueInstantiator.createUsingDelegate(deserializationcontext, _delegateDeserializer.deserialize(l1, deserializationcontext));
            if (_injectables != null)
            {
                injectValues(deserializationcontext, obj);
            }
            return obj;
        }
        boolean flag;
        if (l1.getCurrentToken() == r.k)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return _valueInstantiator.createFromBoolean(deserializationcontext, flag);
    }

    public Object deserializeFromDouble(l l1, DeserializationContext deserializationcontext)
    {
        _cls1..SwitchMap.com.fasterxml.jackson.core.JsonParser.NumberType[-1 + l1.getNumberType$72641f5()];
        JVM INSTR tableswitch 3 4: default 32
    //                   3 59
    //                   4 59;
           goto _L1 _L2 _L2
_L1:
        if (_delegateDeserializer == null) goto _L4; else goto _L3
_L3:
        Object obj = _valueInstantiator.createUsingDelegate(deserializationcontext, _delegateDeserializer.deserialize(l1, deserializationcontext));
_L5:
        return obj;
_L2:
        if (_delegateDeserializer != null && !_valueInstantiator.canCreateFromDouble())
        {
            obj = _valueInstantiator.createUsingDelegate(deserializationcontext, _delegateDeserializer.deserialize(l1, deserializationcontext));
            if (_injectables != null)
            {
                injectValues(deserializationcontext, obj);
                return obj;
            }
        } else
        {
            return _valueInstantiator.createFromDouble(deserializationcontext, l1.getDoubleValue());
        }
        if (true) goto _L5; else goto _L4
_L4:
        throw deserializationcontext.instantiationException(getBeanClass(), "no suitable creator method found to deserialize from JSON floating-point number");
    }

    public Object deserializeFromNumber(l l1, DeserializationContext deserializationcontext)
    {
        if (_objectIdReader == null) goto _L2; else goto _L1
_L1:
        Object obj = deserializeFromObjectId(l1, deserializationcontext);
_L4:
        return obj;
_L2:
        switch (_cls1..SwitchMap.com.fasterxml.jackson.core.JsonParser.NumberType[-1 + l1.getNumberType$72641f5()])
        {
        default:
            if (_delegateDeserializer != null)
            {
                obj = _valueInstantiator.createUsingDelegate(deserializationcontext, _delegateDeserializer.deserialize(l1, deserializationcontext));
                if (_injectables != null)
                {
                    injectValues(deserializationcontext, obj);
                    return obj;
                }
            } else
            {
                throw deserializationcontext.instantiationException(getBeanClass(), "no suitable creator method found to deserialize from JSON integer number");
            }
            break;

        case 2: // '\002'
            break; /* Loop/switch isn't completed */

        case 1: // '\001'
            if (_delegateDeserializer != null && !_valueInstantiator.canCreateFromInt())
            {
                obj = _valueInstantiator.createUsingDelegate(deserializationcontext, _delegateDeserializer.deserialize(l1, deserializationcontext));
                if (_injectables != null)
                {
                    injectValues(deserializationcontext, obj);
                    return obj;
                }
            } else
            {
                return _valueInstantiator.createFromInt(deserializationcontext, l1.getIntValue());
            }
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (_delegateDeserializer != null && !_valueInstantiator.canCreateFromInt())
        {
            obj = _valueInstantiator.createUsingDelegate(deserializationcontext, _delegateDeserializer.deserialize(l1, deserializationcontext));
            if (_injectables != null)
            {
                injectValues(deserializationcontext, obj);
                return obj;
            }
        } else
        {
            return _valueInstantiator.createFromLong(deserializationcontext, l1.getLongValue());
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public abstract Object deserializeFromObject(l l1, DeserializationContext deserializationcontext);

    protected Object deserializeFromObjectId(l l1, DeserializationContext deserializationcontext)
    {
        Object obj = _objectIdReader.deserializer.deserialize(l1, deserializationcontext);
        Object obj1 = deserializationcontext.findObjectId(obj, _objectIdReader.generator).item;
        if (obj1 == null)
        {
            throw new IllegalStateException((new StringBuilder("Could not resolve Object Id [")).append(obj).append("] (for ").append(_beanType).append(") -- unresolved forward-reference?").toString());
        } else
        {
            return obj1;
        }
    }

    protected Object deserializeFromObjectUsingNonDefault(l l1, DeserializationContext deserializationcontext)
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

    public Object deserializeFromString(l l1, DeserializationContext deserializationcontext)
    {
        Object obj;
        if (_objectIdReader != null)
        {
            obj = deserializeFromObjectId(l1, deserializationcontext);
        } else
        if (_delegateDeserializer != null && !_valueInstantiator.canCreateFromString())
        {
            obj = _valueInstantiator.createUsingDelegate(deserializationcontext, _delegateDeserializer.deserialize(l1, deserializationcontext));
            if (_injectables != null)
            {
                injectValues(deserializationcontext, obj);
                return obj;
            }
        } else
        {
            return _valueInstantiator.createFromString(deserializationcontext, l1.getText());
        }
        return obj;
    }

    protected Object deserializeWithObjectId(l l1, DeserializationContext deserializationcontext)
    {
        String s = _objectIdReader.propertyName;
        if (s.equals(l1.getCurrentName()))
        {
            return deserializeFromObject(l1, deserializationcontext);
        }
        TokenBuffer tokenbuffer = new TokenBuffer(l1.getCodec());
        TokenBuffer tokenbuffer1 = null;
        while (l1.getCurrentToken() != r.c) 
        {
            String s1 = l1.getCurrentName();
            if (tokenbuffer1 == null)
            {
                if (s.equals(s1))
                {
                    tokenbuffer1 = new TokenBuffer(l1.getCodec());
                    tokenbuffer1.writeFieldName(s1);
                    l1.nextToken();
                    tokenbuffer1.copyCurrentStructure(l1);
                    tokenbuffer1.append(tokenbuffer);
                    tokenbuffer = null;
                } else
                {
                    tokenbuffer.writeFieldName(s1);
                    l1.nextToken();
                    tokenbuffer.copyCurrentStructure(l1);
                }
            } else
            {
                tokenbuffer1.writeFieldName(s1);
                l1.nextToken();
                tokenbuffer1.copyCurrentStructure(l1);
            }
            l1.nextToken();
        }
        l l2;
        if (tokenbuffer1 != null)
        {
            tokenbuffer = tokenbuffer1;
        }
        tokenbuffer.writeEndObject();
        l2 = tokenbuffer.asParser();
        l2.nextToken();
        return deserializeFromObject(l2, deserializationcontext);
    }

    public final Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        if (_objectIdReader != null)
        {
            r r1 = l1.getCurrentToken();
            if (r1 != null && r1.d())
            {
                return deserializeFromObjectId(l1, deserializationcontext);
            }
        }
        return typedeserializer.deserializeTypedFromObject(l1, deserializationcontext);
    }

    public SettableBeanProperty findBackReference(String s)
    {
        if (_backRefs == null)
        {
            return null;
        } else
        {
            return (SettableBeanProperty)_backRefs.get(s);
        }
    }

    protected JsonDeserializer findConvertingDeserializer(DeserializationContext deserializationcontext, SettableBeanProperty settablebeanproperty)
    {
        AnnotationIntrospector annotationintrospector = deserializationcontext.getAnnotationIntrospector();
        if (annotationintrospector != null)
        {
            Object obj = annotationintrospector.findDeserializationConverter(settablebeanproperty.getMember());
            if (obj != null)
            {
                Converter converter = deserializationcontext.converterInstance(settablebeanproperty.getMember(), obj);
                JavaType javatype = converter.getInputType(deserializationcontext.getTypeFactory());
                return new StdDelegatingDeserializer(converter, javatype, deserializationcontext.findContextualValueDeserializer(javatype, settablebeanproperty));
            }
        }
        return null;
    }

    public SettableBeanProperty findProperty(String s)
    {
        SettableBeanProperty settablebeanproperty;
        if (_beanProperties == null)
        {
            settablebeanproperty = null;
        } else
        {
            settablebeanproperty = _beanProperties.find(s);
        }
        if (settablebeanproperty == null && _propertyBasedCreator != null)
        {
            settablebeanproperty = _propertyBasedCreator.findCreatorProperty(s);
        }
        return settablebeanproperty;
    }

    public final Class getBeanClass()
    {
        return _beanType.getRawClass();
    }

    public Collection getKnownPropertyNames()
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = _beanProperties.iterator(); iterator.hasNext(); arraylist.add(((SettableBeanProperty)iterator.next()).getName())) { }
        return arraylist;
    }

    public ObjectIdReader getObjectIdReader()
    {
        return _objectIdReader;
    }

    public int getPropertyCount()
    {
        return _beanProperties.size();
    }

    public ValueInstantiator getValueInstantiator()
    {
        return _valueInstantiator;
    }

    public JavaType getValueType()
    {
        return _beanType;
    }

    protected Object handlePolymorphic(l l1, DeserializationContext deserializationcontext, Object obj, TokenBuffer tokenbuffer)
    {
        JsonDeserializer jsondeserializer = _findSubclassDeserializer(deserializationcontext, obj, tokenbuffer);
        if (jsondeserializer != null)
        {
            if (tokenbuffer != null)
            {
                tokenbuffer.writeEndObject();
                l l2 = tokenbuffer.asParser();
                l2.nextToken();
                obj = jsondeserializer.deserialize(l2, deserializationcontext, obj);
            }
            if (l1 != null)
            {
                obj = jsondeserializer.deserialize(l1, deserializationcontext, obj);
            }
            return obj;
        }
        if (tokenbuffer != null)
        {
            obj = handleUnknownProperties(deserializationcontext, obj, tokenbuffer);
        }
        if (l1 != null)
        {
            obj = deserialize(l1, deserializationcontext, obj);
        }
        return obj;
    }

    protected Object handleUnknownProperties(DeserializationContext deserializationcontext, Object obj, TokenBuffer tokenbuffer)
    {
        tokenbuffer.writeEndObject();
        String s;
        for (l l1 = tokenbuffer.asParser(); l1.nextToken() != r.c; handleUnknownProperty(l1, deserializationcontext, obj, s))
        {
            s = l1.getCurrentName();
            l1.nextToken();
        }

        return obj;
    }

    protected void handleUnknownProperty(l l1, DeserializationContext deserializationcontext, Object obj, String s)
    {
        if (_ignoreAllUnknown || _ignorableProps != null && _ignorableProps.contains(s))
        {
            l1.skipChildren();
            return;
        } else
        {
            super.handleUnknownProperty(l1, deserializationcontext, obj, s);
            return;
        }
    }

    protected void handleUnknownVanilla(l l1, DeserializationContext deserializationcontext, Object obj, String s)
    {
        if (_ignorableProps != null && _ignorableProps.contains(s))
        {
            l1.skipChildren();
            return;
        }
        if (_anySetter != null)
        {
            try
            {
                _anySetter.deserializeAndSet(l1, deserializationcontext, obj, s);
                return;
            }
            catch (Exception exception)
            {
                wrapAndThrow(exception, obj, s, deserializationcontext);
            }
            return;
        } else
        {
            handleUnknownProperty(l1, deserializationcontext, obj, s);
            return;
        }
    }

    public boolean hasProperty(String s)
    {
        return _beanProperties.find(s) != null;
    }

    public boolean hasViews()
    {
        return _needViewProcesing;
    }

    protected void injectValues(DeserializationContext deserializationcontext, Object obj)
    {
        ValueInjector avalueinjector[] = _injectables;
        int i = avalueinjector.length;
        for (int j = 0; j < i; j++)
        {
            avalueinjector[j].inject(deserializationcontext, obj);
        }

    }

    public boolean isCachable()
    {
        return true;
    }

    public Iterator properties()
    {
        if (_beanProperties == null)
        {
            throw new IllegalStateException("Can only call after BeanDeserializer has been resolved");
        } else
        {
            return _beanProperties.iterator();
        }
    }

    public void replaceProperty(SettableBeanProperty settablebeanproperty, SettableBeanProperty settablebeanproperty1)
    {
        _beanProperties.replace(settablebeanproperty1);
    }

    public void resolve(DeserializationContext deserializationcontext)
    {
        Iterator iterator;
        UnwrappedPropertyHandler unwrappedpropertyhandler;
        com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler.Builder builder1;
        com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler.Builder builder;
        if (_valueInstantiator.canCreateFromObjectWith())
        {
            SettableBeanProperty asettablebeanproperty[] = _valueInstantiator.getFromObjectArguments(deserializationcontext.getConfig());
            _propertyBasedCreator = PropertyBasedCreator.construct(deserializationcontext, _valueInstantiator, asettablebeanproperty);
            Iterator iterator1 = _propertyBasedCreator.properties().iterator();
            builder = null;
            do
            {
                if (!iterator1.hasNext())
                {
                    break;
                }
                SettableBeanProperty settablebeanproperty5 = (SettableBeanProperty)iterator1.next();
                if (settablebeanproperty5.hasValueTypeDeserializer())
                {
                    TypeDeserializer typedeserializer1 = settablebeanproperty5.getValueTypeDeserializer();
                    if (typedeserializer1.getTypeInclusion() == com.fasterxml.jackson.annotation.JsonTypeInfo.As.EXTERNAL_PROPERTY)
                    {
                        if (builder == null)
                        {
                            builder = new com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler.Builder();
                        }
                        builder.addExternal(settablebeanproperty5, typedeserializer1);
                    }
                }
            } while (true);
        } else
        {
            builder = null;
        }
        iterator = _beanProperties.iterator();
        unwrappedpropertyhandler = null;
        builder1 = builder;
_L3:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        SettableBeanProperty settablebeanproperty;
        SettableBeanProperty settablebeanproperty1;
        SettableBeanProperty settablebeanproperty2;
        settablebeanproperty = (SettableBeanProperty)iterator.next();
        SettableBeanProperty settablebeanproperty3;
        if (!settablebeanproperty.hasValueDeserializer())
        {
            JsonDeserializer jsondeserializer2 = findConvertingDeserializer(deserializationcontext, settablebeanproperty);
            if (jsondeserializer2 == null)
            {
                jsondeserializer2 = findDeserializer(deserializationcontext, settablebeanproperty.getType(), settablebeanproperty);
            }
            settablebeanproperty1 = settablebeanproperty.withValueDeserializer(jsondeserializer2);
        } else
        {
            JsonDeserializer jsondeserializer = settablebeanproperty.getValueDeserializer();
            if (!(jsondeserializer instanceof ContextualDeserializer))
            {
                break MISSING_BLOCK_LABEL_648;
            }
            JsonDeserializer jsondeserializer1 = ((ContextualDeserializer)jsondeserializer).createContextual(deserializationcontext, settablebeanproperty);
            if (jsondeserializer1 == jsondeserializer)
            {
                break MISSING_BLOCK_LABEL_648;
            }
            settablebeanproperty1 = settablebeanproperty.withValueDeserializer(jsondeserializer1);
        }
_L4:
        settablebeanproperty2 = _resolveManagedReferenceProperty(deserializationcontext, settablebeanproperty1);
        settablebeanproperty3 = _resolveUnwrappedProperty(deserializationcontext, settablebeanproperty2);
        if (settablebeanproperty3 != null)
        {
            boolean flag;
            boolean flag1;
            boolean flag2;
            JavaType javatype;
            com.fasterxml.jackson.databind.introspect.AnnotatedWithParams annotatedwithparams;
            SettableBeanProperty settablebeanproperty4;
            TypeDeserializer typedeserializer;
            com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler.Builder builder2;
            UnwrappedPropertyHandler unwrappedpropertyhandler1;
            if (unwrappedpropertyhandler == null)
            {
                unwrappedpropertyhandler1 = new UnwrappedPropertyHandler();
            } else
            {
                unwrappedpropertyhandler1 = unwrappedpropertyhandler;
            }
            unwrappedpropertyhandler1.addProperty(settablebeanproperty3);
            unwrappedpropertyhandler = unwrappedpropertyhandler1;
        } else
        {
            settablebeanproperty4 = _resolveInnerClassValuedProperty(deserializationcontext, settablebeanproperty2);
            if (settablebeanproperty4 != settablebeanproperty)
            {
                _beanProperties.replace(settablebeanproperty4);
            }
            if (settablebeanproperty4.hasValueTypeDeserializer())
            {
                typedeserializer = settablebeanproperty4.getValueTypeDeserializer();
                if (typedeserializer.getTypeInclusion() == com.fasterxml.jackson.annotation.JsonTypeInfo.As.EXTERNAL_PROPERTY)
                {
                    if (builder1 == null)
                    {
                        builder2 = new com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler.Builder();
                    } else
                    {
                        builder2 = builder1;
                    }
                    builder2.addExternal(settablebeanproperty4, typedeserializer);
                    _beanProperties.remove(settablebeanproperty4);
                    builder1 = builder2;
                }
            }
        }
        if (true) goto _L3; else goto _L2
_L2:
        if (_anySetter != null && !_anySetter.hasValueDeserializer())
        {
            _anySetter = _anySetter.withValueDeserializer(findDeserializer(deserializationcontext, _anySetter.getType(), _anySetter.getProperty()));
        }
        if (_valueInstantiator.canCreateUsingDelegate())
        {
            javatype = _valueInstantiator.getDelegateType(deserializationcontext.getConfig());
            if (javatype == null)
            {
                throw new IllegalArgumentException((new StringBuilder("Invalid delegate-creator definition for ")).append(_beanType).append(": value instantiator (").append(_valueInstantiator.getClass().getName()).append(") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'").toString());
            }
            annotatedwithparams = _valueInstantiator.getDelegateCreator();
            _delegateDeserializer = findDeserializer(deserializationcontext, javatype, new com.fasterxml.jackson.databind.BeanProperty.Std(null, javatype, null, _classAnnotations, annotatedwithparams, false));
        }
        if (builder1 != null)
        {
            _externalTypeIdHandler = builder1.build();
            _nonStandardCreation = true;
        }
        _unwrappedPropertyHandler = unwrappedpropertyhandler;
        if (unwrappedpropertyhandler != null)
        {
            _nonStandardCreation = true;
        }
        flag = _vanillaProcessing;
        flag1 = false;
        if (flag)
        {
            flag2 = _nonStandardCreation;
            flag1 = false;
            if (!flag2)
            {
                flag1 = true;
            }
        }
        _vanillaProcessing = flag1;
        return;
        settablebeanproperty1 = settablebeanproperty;
          goto _L4
    }

    public abstract JsonDeserializer unwrappingDeserializer(NameTransformer nametransformer);

    public abstract BeanDeserializerBase withIgnorableProperties(HashSet hashset);

    public abstract BeanDeserializerBase withObjectIdReader(ObjectIdReader objectidreader);

    public void wrapAndThrow(Throwable throwable, Object obj, int i, DeserializationContext deserializationcontext)
    {
        throw JsonMappingException.wrapWithPath(throwOrReturnThrowable(throwable, deserializationcontext), obj, i);
    }

    public void wrapAndThrow(Throwable throwable, Object obj, String s, DeserializationContext deserializationcontext)
    {
        throw JsonMappingException.wrapWithPath(throwOrReturnThrowable(throwable, deserializationcontext), obj, s);
    }

    protected void wrapInstantiationProblem(Throwable throwable, DeserializationContext deserializationcontext)
    {
        for (; (throwable instanceof InvocationTargetException) && throwable.getCause() != null; throwable = throwable.getCause()) { }
        if (throwable instanceof Error)
        {
            throw (Error)throwable;
        }
        boolean flag;
        if (deserializationcontext == null || deserializationcontext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (throwable instanceof IOException)
        {
            throw (IOException)throwable;
        }
        if (!flag && (throwable instanceof RuntimeException))
        {
            throw (RuntimeException)throwable;
        } else
        {
            throw deserializationcontext.instantiationException(_beanType.getRawClass(), throwable);
        }
    }

    private class _cls1
    {

        static final int $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[];

        static 
        {
            $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType = new int[o.a().length];
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[-1 + o.a] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[-1 + o.b] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[-1 + o.d] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[-1 + o.e] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3)
            {
                return;
            }
        }
    }

}
