// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.NoClass;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.fasterxml.jackson.databind.introspect:
//            POJOPropertiesCollector, BeanPropertyDefinition, AnnotatedMember, AnnotatedMethod, 
//            AnnotatedWithParams, AnnotatedClass, AnnotatedConstructor, ObjectIdInfo

public class BasicBeanDescription extends BeanDescription
{

    protected final AnnotationIntrospector _annotationIntrospector;
    protected AnnotatedMember _anyGetter;
    protected AnnotatedMethod _anySetterMethod;
    protected TypeBindings _bindings;
    protected final AnnotatedClass _classInfo;
    protected final MapperConfig _config;
    protected Set _ignoredPropertyNames;
    protected Map _injectables;
    protected AnnotatedMethod _jsonValueMethod;
    protected ObjectIdInfo _objectIdInfo;
    protected final List _properties;

    protected BasicBeanDescription(MapperConfig mapperconfig, JavaType javatype, AnnotatedClass annotatedclass, List list)
    {
        super(javatype);
        _config = mapperconfig;
        AnnotationIntrospector annotationintrospector;
        if (mapperconfig == null)
        {
            annotationintrospector = null;
        } else
        {
            annotationintrospector = mapperconfig.getAnnotationIntrospector();
        }
        _annotationIntrospector = annotationintrospector;
        _classInfo = annotatedclass;
        _properties = list;
    }

    protected BasicBeanDescription(POJOPropertiesCollector pojopropertiescollector)
    {
        this(pojopropertiescollector.getConfig(), pojopropertiescollector.getType(), pojopropertiescollector.getClassDef(), pojopropertiescollector.getProperties());
        _objectIdInfo = pojopropertiescollector.getObjectIdInfo();
    }

    public static BasicBeanDescription forDeserialization(POJOPropertiesCollector pojopropertiescollector)
    {
        BasicBeanDescription basicbeandescription = new BasicBeanDescription(pojopropertiescollector);
        basicbeandescription._anySetterMethod = pojopropertiescollector.getAnySetterMethod();
        basicbeandescription._ignoredPropertyNames = pojopropertiescollector.getIgnoredPropertyNames();
        basicbeandescription._injectables = pojopropertiescollector.getInjectables();
        basicbeandescription._jsonValueMethod = pojopropertiescollector.getJsonValueMethod();
        return basicbeandescription;
    }

    public static BasicBeanDescription forOtherUse(MapperConfig mapperconfig, JavaType javatype, AnnotatedClass annotatedclass)
    {
        return new BasicBeanDescription(mapperconfig, javatype, annotatedclass, Collections.emptyList());
    }

    public static BasicBeanDescription forSerialization(POJOPropertiesCollector pojopropertiescollector)
    {
        BasicBeanDescription basicbeandescription = new BasicBeanDescription(pojopropertiescollector);
        basicbeandescription._jsonValueMethod = pojopropertiescollector.getJsonValueMethod();
        basicbeandescription._anyGetter = pojopropertiescollector.getAnyGetter();
        return basicbeandescription;
    }

    public Converter _createConverter(Object obj)
    {
        if (obj == null)
        {
            return null;
        }
        if (obj instanceof Converter)
        {
            return (Converter)obj;
        }
        if (!(obj instanceof Class))
        {
            throw new IllegalStateException((new StringBuilder("AnnotationIntrospector returned Converter definition of type ")).append(obj.getClass().getName()).append("; expected type Converter or Class<Converter> instead").toString());
        }
        Class class1 = (Class)obj;
        if (class1 == com/fasterxml/jackson/databind/util/Converter$None || class1 == com/fasterxml/jackson/databind/annotation/NoClass)
        {
            return null;
        }
        if (!com/fasterxml/jackson/databind/util/Converter.isAssignableFrom(class1))
        {
            throw new IllegalStateException((new StringBuilder("AnnotationIntrospector returned Class ")).append(class1.getName()).append("; expected Class<Converter>").toString());
        }
        HandlerInstantiator handlerinstantiator = _config.getHandlerInstantiator();
        Converter converter = null;
        if (handlerinstantiator != null)
        {
            converter = handlerinstantiator.converterInstance(_config, _classInfo, class1);
        }
        if (converter == null)
        {
            converter = (Converter)ClassUtil.createInstance(class1, _config.canOverrideAccessModifiers());
        }
        return converter;
    }

    public LinkedHashMap _findPropertyFields(Collection collection, boolean flag)
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        Iterator iterator = _properties.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            BeanPropertyDefinition beanpropertydefinition = (BeanPropertyDefinition)iterator.next();
            AnnotatedField annotatedfield = beanpropertydefinition.getField();
            if (annotatedfield != null)
            {
                String s = beanpropertydefinition.getName();
                if (collection == null || !collection.contains(s))
                {
                    linkedhashmap.put(s, annotatedfield);
                }
            }
        } while (true);
        return linkedhashmap;
    }

    public TypeBindings bindingsForBeanType()
    {
        if (_bindings == null)
        {
            _bindings = new TypeBindings(_config.getTypeFactory(), _type);
        }
        return _bindings;
    }

    public AnnotatedMember findAnyGetter()
    {
        if (_anyGetter != null && !java/util/Map.isAssignableFrom(_anyGetter.getRawType()))
        {
            throw new IllegalArgumentException((new StringBuilder("Invalid 'any-getter' annotation on method ")).append(_anyGetter.getName()).append("(): return type is not instance of java.util.Map").toString());
        } else
        {
            return _anyGetter;
        }
    }

    public AnnotatedMethod findAnySetter()
    {
        if (_anySetterMethod != null)
        {
            Class class1 = _anySetterMethod.getRawParameterType(0);
            if (class1 != java/lang/String && class1 != java/lang/Object)
            {
                throw new IllegalArgumentException((new StringBuilder("Invalid 'any-setter' annotation on method ")).append(_anySetterMethod.getName()).append("(): first argument not of type String or Object, but ").append(class1.getName()).toString());
            }
        }
        return _anySetterMethod;
    }

    public Map findBackReferenceProperties()
    {
        Object obj = null;
        Iterator iterator = _properties.iterator();
        do
        {
            Object obj1;
            if (iterator.hasNext())
            {
                AnnotatedMember annotatedmember = ((BeanPropertyDefinition)iterator.next()).getMutator();
                if (annotatedmember == null)
                {
                    continue;
                }
                com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty referenceproperty = _annotationIntrospector.findReferenceType(annotatedmember);
                if (referenceproperty == null || !referenceproperty.isBackReference())
                {
                    continue;
                }
                String s;
                if (obj == null)
                {
                    obj1 = new HashMap();
                } else
                {
                    obj1 = obj;
                }
                s = referenceproperty.getName();
                if (((HashMap) (obj1)).put(s, annotatedmember) != null)
                {
                    throw new IllegalArgumentException((new StringBuilder("Multiple back-reference properties with name '")).append(s).append("'").toString());
                }
            } else
            {
                return ((Map) (obj));
            }
            obj = obj1;
        } while (true);
    }

    public List findCreatorPropertyNames()
    {
        int i = 0;
        Object obj = null;
label0:
        for (; i < 2; i++)
        {
            List list;
            Iterator iterator;
            if (i == 0)
            {
                list = getConstructors();
            } else
            {
                list = getFactoryMethods();
            }
            iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    continue label0;
                }
                AnnotatedWithParams annotatedwithparams = (AnnotatedWithParams)iterator.next();
                int j = annotatedwithparams.getParameterCount();
                if (j > 0)
                {
                    PropertyName propertyname = _annotationIntrospector.findNameForDeserialization(annotatedwithparams.getParameter(0));
                    if (propertyname != null)
                    {
                        if (obj == null)
                        {
                            obj = new ArrayList();
                        }
                        ((List) (obj)).add(propertyname.getSimpleName());
                        int k = 1;
                        while (k < j) 
                        {
                            PropertyName propertyname1 = _annotationIntrospector.findNameForDeserialization(annotatedwithparams.getParameter(k));
                            String s;
                            if (propertyname1 == null)
                            {
                                s = null;
                            } else
                            {
                                s = propertyname1.getSimpleName();
                            }
                            ((List) (obj)).add(s);
                            k++;
                        }
                    }
                }
            } while (true);
        }

        if (obj == null)
        {
            obj = Collections.emptyList();
        }
        return ((List) (obj));
    }

    public AnnotatedConstructor findDefaultConstructor()
    {
        return _classInfo.getDefaultConstructor();
    }

    public Converter findDeserializationConverter()
    {
        if (_annotationIntrospector == null)
        {
            return null;
        } else
        {
            return _createConverter(_annotationIntrospector.findDeserializationConverter(_classInfo));
        }
    }

    public com.fasterxml.jackson.annotation.JsonFormat.Value findExpectedFormat(com.fasterxml.jackson.annotation.JsonFormat.Value value)
    {
        if (_annotationIntrospector != null)
        {
            com.fasterxml.jackson.annotation.JsonFormat.Value value1 = _annotationIntrospector.findFormat(_classInfo);
            if (value1 != null)
            {
                value = value1;
            }
        }
        return value;
    }

    public transient Method findFactoryMethod(Class aclass[])
    {
        Iterator iterator = _classInfo.getStaticMethods().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            AnnotatedMethod annotatedmethod = (AnnotatedMethod)iterator.next();
            if (isFactoryMethod(annotatedmethod))
            {
                Class class1 = annotatedmethod.getRawParameterType(0);
                int i = aclass.length;
                int j = 0;
                while (j < i) 
                {
                    if (class1.isAssignableFrom(aclass[j]))
                    {
                        return annotatedmethod.getAnnotated();
                    }
                    j++;
                }
            }
        } while (true);
        return null;
    }

    public Map findInjectables()
    {
        return _injectables;
    }

    public AnnotatedMethod findJsonValueMethod()
    {
        return _jsonValueMethod;
    }

    public AnnotatedMethod findMethod(String s, Class aclass[])
    {
        return _classInfo.findMethod(s, aclass);
    }

    public Class findPOJOBuilder()
    {
        if (_annotationIntrospector == null)
        {
            return null;
        } else
        {
            return _annotationIntrospector.findPOJOBuilder(_classInfo);
        }
    }

    public com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder.Value findPOJOBuilderConfig()
    {
        if (_annotationIntrospector == null)
        {
            return null;
        } else
        {
            return _annotationIntrospector.findPOJOBuilderConfig(_classInfo);
        }
    }

    public List findProperties()
    {
        return _properties;
    }

    public Converter findSerializationConverter()
    {
        if (_annotationIntrospector == null)
        {
            return null;
        } else
        {
            return _createConverter(_annotationIntrospector.findSerializationConverter(_classInfo));
        }
    }

    public com.fasterxml.jackson.annotation.JsonInclude.Include findSerializationInclusion(com.fasterxml.jackson.annotation.JsonInclude.Include include)
    {
        if (_annotationIntrospector == null)
        {
            return include;
        } else
        {
            return _annotationIntrospector.findSerializationInclusion(_classInfo, include);
        }
    }

    public transient Constructor findSingleArgConstructor(Class aclass[])
    {
        Iterator iterator = _classInfo.getConstructors().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            AnnotatedConstructor annotatedconstructor = (AnnotatedConstructor)iterator.next();
            if (annotatedconstructor.getParameterCount() == 1)
            {
                Class class1 = annotatedconstructor.getRawParameterType(0);
                int i = aclass.length;
                int j = 0;
                while (j < i) 
                {
                    if (aclass[j] == class1)
                    {
                        return annotatedconstructor.getAnnotated();
                    }
                    j++;
                }
            }
        } while (true);
        return null;
    }

    public Annotations getClassAnnotations()
    {
        return _classInfo.getAnnotations();
    }

    public AnnotatedClass getClassInfo()
    {
        return _classInfo;
    }

    public List getConstructors()
    {
        return _classInfo.getConstructors();
    }

    public List getFactoryMethods()
    {
        List list = _classInfo.getStaticMethods();
        if (list.isEmpty())
        {
            return list;
        }
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            AnnotatedMethod annotatedmethod = (AnnotatedMethod)iterator.next();
            if (isFactoryMethod(annotatedmethod))
            {
                arraylist.add(annotatedmethod);
            }
        } while (true);
        return arraylist;
    }

    public Set getIgnoredPropertyNames()
    {
        if (_ignoredPropertyNames == null)
        {
            return Collections.emptySet();
        } else
        {
            return _ignoredPropertyNames;
        }
    }

    public ObjectIdInfo getObjectIdInfo()
    {
        return _objectIdInfo;
    }

    public boolean hasKnownClassAnnotations()
    {
        return _classInfo.hasAnnotations();
    }

    public Object instantiateBean(boolean flag)
    {
        Object obj;
        AnnotatedConstructor annotatedconstructor = _classInfo.getDefaultConstructor();
        if (annotatedconstructor == null)
        {
            return null;
        }
        if (flag)
        {
            annotatedconstructor.fixAccess();
        }
        Object obj1;
        try
        {
            obj1 = annotatedconstructor.getAnnotated().newInstance(new Object[0]);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            for (; ((Throwable) (obj)).getCause() != null; obj = ((Throwable) (obj)).getCause()) { }
            if (obj instanceof Error)
            {
                throw (Error)obj;
            }
            if (obj instanceof RuntimeException)
            {
                throw (RuntimeException)obj;
            } else
            {
                throw new IllegalArgumentException((new StringBuilder("Failed to instantiate bean of type ")).append(_classInfo.getAnnotated().getName()).append(": (").append(obj.getClass().getName()).append(") ").append(((Throwable) (obj)).getMessage()).toString(), ((Throwable) (obj)));
            }
        }
        return obj1;
    }

    protected boolean isFactoryMethod(AnnotatedMethod annotatedmethod)
    {
        Class class1 = annotatedmethod.getRawReturnType();
        if (getBeanClass().isAssignableFrom(class1))
        {
            if (_annotationIntrospector.hasCreatorAnnotation(annotatedmethod))
            {
                return true;
            }
            if ("valueOf".equals(annotatedmethod.getName()))
            {
                return true;
            }
        }
        return false;
    }

    public boolean removeProperty(String s)
    {
        for (Iterator iterator = _properties.iterator(); iterator.hasNext();)
        {
            if (((BeanPropertyDefinition)iterator.next()).getName().equals(s))
            {
                iterator.remove();
                return true;
            }
        }

        return false;
    }

    public JavaType resolveType(Type type)
    {
        if (type == null)
        {
            return null;
        } else
        {
            return bindingsForBeanType().resolveType(type);
        }
    }
}
