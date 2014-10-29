// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.cfg.SerializerFactoryConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.impl.FilteredBeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.impl.ObjectIdWriter;
import com.fasterxml.jackson.databind.ser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.ser.std.MapSerializer;
import com.fasterxml.jackson.databind.ser.std.StdDelegatingSerializer;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.fasterxml.jackson.databind.ser:
//            BasicSerializerFactory, PropertyBuilder, ResolvableSerializer, ContextualSerializer, 
//            BeanSerializerModifier, Serializers, BeanSerializerBuilder, AnyGetterWriter, 
//            BeanPropertyWriter, SerializerFactory

public class BeanSerializerFactory extends BasicSerializerFactory
    implements Serializable
{

    public static final BeanSerializerFactory instance = new BeanSerializerFactory(null);
    private static final long serialVersionUID = 1L;

    protected BeanSerializerFactory(SerializerFactoryConfig serializerfactoryconfig)
    {
        super(serializerfactoryconfig);
    }

    protected BeanPropertyWriter _constructWriter(SerializerProvider serializerprovider, BeanPropertyDefinition beanpropertydefinition, TypeBindings typebindings, PropertyBuilder propertybuilder, boolean flag, AnnotatedMember annotatedmember)
    {
        String s = beanpropertydefinition.getName();
        if (serializerprovider.canOverrideAccessModifiers())
        {
            annotatedmember.fixAccess();
        }
        JavaType javatype = annotatedmember.getType(typebindings);
        com.fasterxml.jackson.databind.BeanProperty.Std std = new com.fasterxml.jackson.databind.BeanProperty.Std(s, javatype, beanpropertydefinition.getWrapperName(), propertybuilder.getClassAnnotations(), annotatedmember, beanpropertydefinition.isRequired());
        JsonSerializer jsonserializer = findSerializerFromAnnotation(serializerprovider, annotatedmember);
        if (jsonserializer instanceof ResolvableSerializer)
        {
            ((ResolvableSerializer)jsonserializer).resolve(serializerprovider);
        }
        if (jsonserializer instanceof ContextualSerializer)
        {
            jsonserializer = ((ContextualSerializer)jsonserializer).createContextual(serializerprovider, std);
        }
        boolean flag1 = ClassUtil.isCollectionMapOrArray(javatype.getRawClass());
        TypeSerializer typeserializer = null;
        if (flag1)
        {
            typeserializer = findPropertyContentTypeSerializer(javatype, serializerprovider.getConfig(), annotatedmember);
        }
        return propertybuilder.buildWriter(beanpropertydefinition, javatype, jsonserializer, findPropertyTypeSerializer(javatype, serializerprovider.getConfig(), annotatedmember), typeserializer, annotatedmember, flag);
    }

    protected JsonSerializer _createSerializer2(SerializerProvider serializerprovider, JavaType javatype, BeanDescription beandescription, boolean flag)
    {
        JsonSerializer jsonserializer = findSerializerByAnnotations(serializerprovider, javatype, beandescription);
        if (jsonserializer == null) goto _L2; else goto _L1
_L1:
        return jsonserializer;
_L2:
        SerializationConfig serializationconfig;
        serializationconfig = serializerprovider.getConfig();
        if (!javatype.isContainerType())
        {
            break; /* Loop/switch isn't completed */
        }
        if (!flag)
        {
            flag = usesStaticTyping(serializationconfig, beandescription, null);
        }
        jsonserializer = buildContainerSerializer(serializerprovider, javatype, beandescription, flag);
        if (jsonserializer != null)
        {
            continue; /* Loop/switch isn't completed */
        }
_L4:
        JsonSerializer jsonserializer1;
        if (jsonserializer == null)
        {
            jsonserializer = findSerializerByLookup(javatype, serializationconfig, beandescription, flag);
            if (jsonserializer == null)
            {
                jsonserializer = findSerializerByPrimaryType(serializerprovider, javatype, beandescription, flag);
                if (jsonserializer == null)
                {
                    jsonserializer = findBeanSerializer(serializerprovider, javatype, beandescription);
                    if (jsonserializer == null)
                    {
                        jsonserializer = findSerializerByAddonType(serializationconfig, javatype, beandescription, flag);
                    }
                }
            }
        }
        if (jsonserializer != null && _factoryConfig.hasSerializerModifiers())
        {
            Iterator iterator1 = _factoryConfig.serializerModifiers().iterator();
            for (jsonserializer1 = jsonserializer; iterator1.hasNext(); jsonserializer1 = ((BeanSerializerModifier)iterator1.next()).modifySerializer(serializationconfig, beandescription, jsonserializer1)) { }
            break MISSING_BLOCK_LABEL_241;
        }
        if (true) goto _L1; else goto _L3
_L3:
        Iterator iterator = customSerializers().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            jsonserializer = ((Serializers)iterator.next()).findSerializer(serializationconfig, javatype, beandescription);
        } while (jsonserializer == null);
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
        return jsonserializer1;
    }

    protected JsonSerializer constructBeanSerializer(SerializerProvider serializerprovider, BeanDescription beandescription)
    {
        JsonSerializer jsonserializer;
        if (beandescription.getBeanClass() == java/lang/Object)
        {
            jsonserializer = serializerprovider.getUnknownTypeSerializer(java/lang/Object);
        } else
        {
            SerializationConfig serializationconfig = serializerprovider.getConfig();
            BeanSerializerBuilder beanserializerbuilder = constructBeanSerializerBuilder(beandescription);
            beanserializerbuilder.setConfig(serializationconfig);
            Object obj = findBeanProperties(serializerprovider, beandescription, beanserializerbuilder);
            if (obj == null)
            {
                obj = new ArrayList();
            }
            Object obj1;
            if (_factoryConfig.hasSerializerModifiers())
            {
                Iterator iterator2 = _factoryConfig.serializerModifiers().iterator();
                for (obj1 = obj; iterator2.hasNext(); obj1 = ((BeanSerializerModifier)iterator2.next()).changeProperties(serializationconfig, beandescription, ((List) (obj1)))) { }
            } else
            {
                obj1 = obj;
            }
            List list = filterBeanProperties(serializationconfig, beandescription, ((List) (obj1)));
            List list1;
            if (_factoryConfig.hasSerializerModifiers())
            {
                Iterator iterator1 = _factoryConfig.serializerModifiers().iterator();
                for (list1 = list; iterator1.hasNext(); list1 = ((BeanSerializerModifier)iterator1.next()).orderProperties(serializationconfig, beandescription, list1)) { }
            } else
            {
                list1 = list;
            }
            beanserializerbuilder.setObjectIdWriter(constructObjectIdHandler(serializerprovider, beandescription, list1));
            beanserializerbuilder.setProperties(list1);
            beanserializerbuilder.setFilterId(findFilterId(serializationconfig, beandescription));
            AnnotatedMember annotatedmember = beandescription.findAnyGetter();
            if (annotatedmember != null)
            {
                if (serializationconfig.canOverrideAccessModifiers())
                {
                    annotatedmember.fixAccess();
                }
                JavaType javatype = annotatedmember.getType(beandescription.bindingsForBeanType());
                boolean flag = serializationconfig.isEnabled(MapperFeature.USE_STATIC_TYPING);
                JavaType javatype1 = javatype.getContentType();
                MapSerializer mapserializer = MapSerializer.construct(null, javatype, flag, createTypeSerializer(serializationconfig, javatype1), null, null);
                beanserializerbuilder.setAnyGetter(new AnyGetterWriter(new com.fasterxml.jackson.databind.BeanProperty.Std(annotatedmember.getName(), javatype1, null, beandescription.getClassAnnotations(), annotatedmember, false), annotatedmember, mapserializer));
            }
            processViews(serializationconfig, beanserializerbuilder);
            BeanSerializerBuilder beanserializerbuilder1;
            if (_factoryConfig.hasSerializerModifiers())
            {
                Iterator iterator = _factoryConfig.serializerModifiers().iterator();
                for (beanserializerbuilder1 = beanserializerbuilder; iterator.hasNext(); beanserializerbuilder1 = ((BeanSerializerModifier)iterator.next()).updateBuilder(serializationconfig, beandescription, beanserializerbuilder1)) { }
            } else
            {
                beanserializerbuilder1 = beanserializerbuilder;
            }
            jsonserializer = beanserializerbuilder1.build();
            if (jsonserializer == null && beandescription.hasKnownClassAnnotations())
            {
                return beanserializerbuilder1.createDummy();
            }
        }
        return jsonserializer;
    }

    protected final JsonSerializer constructBeanSerializer(SerializerProvider serializerprovider, BeanDescription beandescription, BeanProperty beanproperty)
    {
        return constructBeanSerializer(serializerprovider, beandescription);
    }

    protected BeanSerializerBuilder constructBeanSerializerBuilder(BeanDescription beandescription)
    {
        return new BeanSerializerBuilder(beandescription);
    }

    protected BeanPropertyWriter constructFilteredBeanWriter(BeanPropertyWriter beanpropertywriter, Class aclass[])
    {
        return FilteredBeanPropertyWriter.constructViewBased(beanpropertywriter, aclass);
    }

    protected ObjectIdWriter constructObjectIdHandler(SerializerProvider serializerprovider, BeanDescription beandescription, List list)
    {
        ObjectIdInfo objectidinfo = beandescription.getObjectIdInfo();
        if (objectidinfo == null)
        {
            return null;
        }
        Class class1 = objectidinfo.getGeneratorType();
        if (class1 == com/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator)
        {
            String s = objectidinfo.getPropertyName();
            int i = list.size();
            int j = 0;
            do
            {
                if (j == i)
                {
                    throw new IllegalArgumentException((new StringBuilder("Invalid Object Id definition for ")).append(beandescription.getBeanClass().getName()).append(": can not find property with name '").append(s).append("'").toString());
                }
                BeanPropertyWriter beanpropertywriter = (BeanPropertyWriter)list.get(j);
                if (s.equals(beanpropertywriter.getName()))
                {
                    if (j > 0)
                    {
                        list.remove(j);
                        list.add(0, beanpropertywriter);
                    }
                    return ObjectIdWriter.construct(beanpropertywriter.getType(), null, new PropertyBasedObjectIdGenerator(objectidinfo, beanpropertywriter), objectidinfo.getAlwaysAsId());
                }
                j++;
            } while (true);
        } else
        {
            JavaType javatype = serializerprovider.constructType(class1);
            JavaType javatype1 = serializerprovider.getTypeFactory().findTypeParameters(javatype, com/fasterxml/jackson/annotation/ObjectIdGenerator)[0];
            ObjectIdGenerator objectidgenerator = serializerprovider.objectIdGeneratorInstance(beandescription.getClassInfo(), objectidinfo);
            return ObjectIdWriter.construct(javatype1, objectidinfo.getPropertyName(), objectidgenerator, objectidinfo.getAlwaysAsId());
        }
    }

    protected PropertyBuilder constructPropertyBuilder(SerializationConfig serializationconfig, BeanDescription beandescription)
    {
        return new PropertyBuilder(serializationconfig, beandescription);
    }

    public JsonSerializer createSerializer(SerializerProvider serializerprovider, JavaType javatype)
    {
        SerializationConfig serializationconfig = serializerprovider.getConfig();
        BeanDescription beandescription = serializationconfig.introspect(javatype);
        JsonSerializer jsonserializer = findSerializerFromAnnotation(serializerprovider, beandescription.getClassInfo());
        if (jsonserializer != null)
        {
            return jsonserializer;
        }
        JavaType javatype1 = modifyTypeByAnnotation(serializationconfig, beandescription.getClassInfo(), javatype);
        boolean flag;
        Converter converter;
        JavaType javatype2;
        if (javatype1 == javatype)
        {
            flag = false;
        } else
        if (!javatype1.hasRawClass(javatype.getRawClass()))
        {
            beandescription = serializationconfig.introspect(javatype1);
            flag = true;
        } else
        {
            flag = true;
        }
        converter = beandescription.findSerializationConverter();
        if (converter == null)
        {
            return _createSerializer2(serializerprovider, javatype1, beandescription, flag);
        }
        javatype2 = converter.getOutputType(serializerprovider.getTypeFactory());
        if (!javatype2.hasRawClass(javatype1.getRawClass()))
        {
            beandescription = serializationconfig.introspect(javatype2);
        }
        return new StdDelegatingSerializer(converter, javatype2, _createSerializer2(serializerprovider, javatype2, beandescription, true));
    }

    protected Iterable customSerializers()
    {
        return _factoryConfig.serializers();
    }

    protected List filterBeanProperties(SerializationConfig serializationconfig, BeanDescription beandescription, List list)
    {
        String as[] = serializationconfig.getAnnotationIntrospector().findPropertiesToIgnore(beandescription.getClassInfo());
        if (as != null && as.length > 0)
        {
            HashSet hashset = ArrayBuilders.arrayToSet(as);
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                if (hashset.contains(((BeanPropertyWriter)iterator.next()).getName()))
                {
                    iterator.remove();
                }
            } while (true);
        }
        return list;
    }

    protected List findBeanProperties(SerializerProvider serializerprovider, BeanDescription beandescription, BeanSerializerBuilder beanserializerbuilder)
    {
        List list = beandescription.findProperties();
        SerializationConfig serializationconfig = serializerprovider.getConfig();
        removeIgnorableTypes(serializationconfig, beandescription, list);
        if (serializationconfig.isEnabled(MapperFeature.REQUIRE_SETTERS_FOR_GETTERS))
        {
            removeSetterlessGetters(serializationconfig, beandescription, list);
        }
        if (list.isEmpty())
        {
            return null;
        }
        boolean flag = usesStaticTyping(serializationconfig, beandescription, null);
        PropertyBuilder propertybuilder = constructPropertyBuilder(serializationconfig, beandescription);
        ArrayList arraylist = new ArrayList(list.size());
        TypeBindings typebindings = beandescription.bindingsForBeanType();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            BeanPropertyDefinition beanpropertydefinition = (BeanPropertyDefinition)iterator.next();
            AnnotatedMember annotatedmember = beanpropertydefinition.getAccessor();
            if (beanpropertydefinition.isTypeId())
            {
                if (annotatedmember != null)
                {
                    if (serializationconfig.canOverrideAccessModifiers())
                    {
                        annotatedmember.fixAccess();
                    }
                    beanserializerbuilder.setTypeId(annotatedmember);
                }
            } else
            {
                com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty referenceproperty = beanpropertydefinition.findReferenceType();
                if (referenceproperty == null || !referenceproperty.isBackReference())
                {
                    if (annotatedmember instanceof AnnotatedMethod)
                    {
                        arraylist.add(_constructWriter(serializerprovider, beanpropertydefinition, typebindings, propertybuilder, flag, (AnnotatedMethod)annotatedmember));
                    } else
                    {
                        arraylist.add(_constructWriter(serializerprovider, beanpropertydefinition, typebindings, propertybuilder, flag, (AnnotatedField)annotatedmember));
                    }
                }
            }
        } while (true);
        return arraylist;
    }

    public JsonSerializer findBeanSerializer(SerializerProvider serializerprovider, JavaType javatype, BeanDescription beandescription)
    {
        if (!isPotentialBeanType(javatype.getRawClass()) && !javatype.isEnumType())
        {
            return null;
        } else
        {
            return constructBeanSerializer(serializerprovider, beandescription);
        }
    }

    public final JsonSerializer findBeanSerializer(SerializerProvider serializerprovider, JavaType javatype, BeanDescription beandescription, BeanProperty beanproperty)
    {
        return findBeanSerializer(serializerprovider, javatype, beandescription);
    }

    protected Object findFilterId(SerializationConfig serializationconfig, BeanDescription beandescription)
    {
        return serializationconfig.getAnnotationIntrospector().findFilterId(beandescription.getClassInfo());
    }

    public TypeSerializer findPropertyContentTypeSerializer(JavaType javatype, SerializationConfig serializationconfig, AnnotatedMember annotatedmember)
    {
        JavaType javatype1 = javatype.getContentType();
        AnnotationIntrospector annotationintrospector = serializationconfig.getAnnotationIntrospector();
        TypeResolverBuilder typeresolverbuilder = annotationintrospector.findPropertyContentTypeResolver(serializationconfig, annotatedmember, javatype);
        if (typeresolverbuilder == null)
        {
            return createTypeSerializer(serializationconfig, javatype1);
        } else
        {
            return typeresolverbuilder.buildTypeSerializer(serializationconfig, javatype1, serializationconfig.getSubtypeResolver().collectAndResolveSubtypes(annotatedmember, serializationconfig, annotationintrospector, javatype1));
        }
    }

    public TypeSerializer findPropertyTypeSerializer(JavaType javatype, SerializationConfig serializationconfig, AnnotatedMember annotatedmember)
    {
        AnnotationIntrospector annotationintrospector = serializationconfig.getAnnotationIntrospector();
        TypeResolverBuilder typeresolverbuilder = annotationintrospector.findPropertyTypeResolver(serializationconfig, annotatedmember, javatype);
        if (typeresolverbuilder == null)
        {
            return createTypeSerializer(serializationconfig, javatype);
        } else
        {
            return typeresolverbuilder.buildTypeSerializer(serializationconfig, javatype, serializationconfig.getSubtypeResolver().collectAndResolveSubtypes(annotatedmember, serializationconfig, annotationintrospector, javatype));
        }
    }

    public final TypeSerializer findPropertyTypeSerializer(JavaType javatype, SerializationConfig serializationconfig, AnnotatedMember annotatedmember, BeanProperty beanproperty)
    {
        return findPropertyTypeSerializer(javatype, serializationconfig, annotatedmember);
    }

    protected boolean isPotentialBeanType(Class class1)
    {
        return ClassUtil.canBeABeanType(class1) == null && !ClassUtil.isProxyType(class1);
    }

    protected void processViews(SerializationConfig serializationconfig, BeanSerializerBuilder beanserializerbuilder)
    {
        List list;
        boolean flag;
        int i;
        BeanPropertyWriter abeanpropertywriter[];
        int j;
        int k;
        list = beanserializerbuilder.getProperties();
        flag = serializationconfig.isEnabled(MapperFeature.DEFAULT_VIEW_INCLUSION);
        i = list.size();
        abeanpropertywriter = new BeanPropertyWriter[i];
        j = 0;
        k = 0;
_L2:
        BeanPropertyWriter beanpropertywriter;
        Class aclass[];
        int l;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        beanpropertywriter = (BeanPropertyWriter)list.get(j);
        aclass = beanpropertywriter.getViews();
        if (aclass != null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_109;
        }
        abeanpropertywriter[j] = beanpropertywriter;
        l = k;
_L3:
        j++;
        k = l;
        if (true) goto _L2; else goto _L1
_L1:
        k++;
        abeanpropertywriter[j] = constructFilteredBeanWriter(beanpropertywriter, aclass);
        l = k;
          goto _L3
        if (flag && k == 0)
        {
            return;
        } else
        {
            beanserializerbuilder.setFilteredProperties(abeanpropertywriter);
            return;
        }
    }

    protected void removeIgnorableTypes(SerializationConfig serializationconfig, BeanDescription beandescription, List list)
    {
        AnnotationIntrospector annotationintrospector = serializationconfig.getAnnotationIntrospector();
        HashMap hashmap = new HashMap();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            AnnotatedMember annotatedmember = ((BeanPropertyDefinition)iterator.next()).getAccessor();
            if (annotatedmember == null)
            {
                iterator.remove();
            } else
            {
                Class class1 = annotatedmember.getRawType();
                Boolean boolean1 = (Boolean)hashmap.get(class1);
                if (boolean1 == null)
                {
                    boolean1 = annotationintrospector.isIgnorableType(serializationconfig.introspectClassAnnotations(class1).getClassInfo());
                    if (boolean1 == null)
                    {
                        boolean1 = Boolean.FALSE;
                    }
                    hashmap.put(class1, boolean1);
                }
                if (boolean1.booleanValue())
                {
                    iterator.remove();
                }
            }
        } while (true);
    }

    protected void removeSetterlessGetters(SerializationConfig serializationconfig, BeanDescription beandescription, List list)
    {
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            BeanPropertyDefinition beanpropertydefinition = (BeanPropertyDefinition)iterator.next();
            if (!beanpropertydefinition.couldDeserialize() && !beanpropertydefinition.isExplicitlyIncluded())
            {
                iterator.remove();
            }
        } while (true);
    }

    public SerializerFactory withConfig(SerializerFactoryConfig serializerfactoryconfig)
    {
        if (_factoryConfig == serializerfactoryconfig)
        {
            return this;
        }
        if (getClass() != com/fasterxml/jackson/databind/ser/BeanSerializerFactory)
        {
            throw new IllegalStateException((new StringBuilder("Subtype of BeanSerializerFactory (")).append(getClass().getName()).append(") has not properly overridden method 'withAdditionalSerializers': can not instantiate subtype with additional serializer definitions").toString());
        } else
        {
            return new BeanSerializerFactory(serializerfactoryconfig);
        }
    }

}
