// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

// Referenced classes of package com.fasterxml.jackson.databind:
//            SerializationFeature, MapperFeature, AnnotationIntrospector, JavaType, 
//            BeanDescription, PropertyNamingStrategy

public final class SerializationConfig extends MapperConfigBase
    implements Serializable
{

    private static final long serialVersionUID = 0x7ace4b0d59bb8a49L;
    protected final FilterProvider _filterProvider;
    protected final int _serFeatures;
    protected com.fasterxml.jackson.annotation.JsonInclude.Include _serializationInclusion;

    private SerializationConfig(SerializationConfig serializationconfig, int i, int j)
    {
        super(serializationconfig, i);
        _serializationInclusion = null;
        _serFeatures = j;
        _serializationInclusion = serializationconfig._serializationInclusion;
        _filterProvider = serializationconfig._filterProvider;
    }

    private SerializationConfig(SerializationConfig serializationconfig, com.fasterxml.jackson.annotation.JsonInclude.Include include)
    {
        super(serializationconfig);
        _serializationInclusion = null;
        _serFeatures = serializationconfig._serFeatures;
        _serializationInclusion = include;
        _filterProvider = serializationconfig._filterProvider;
    }

    private SerializationConfig(SerializationConfig serializationconfig, BaseSettings basesettings)
    {
        super(serializationconfig, basesettings);
        _serializationInclusion = null;
        _serFeatures = serializationconfig._serFeatures;
        _serializationInclusion = serializationconfig._serializationInclusion;
        _filterProvider = serializationconfig._filterProvider;
    }

    private SerializationConfig(SerializationConfig serializationconfig, SubtypeResolver subtyperesolver)
    {
        super(serializationconfig, subtyperesolver);
        _serializationInclusion = null;
        _serFeatures = serializationconfig._serFeatures;
        _serializationInclusion = serializationconfig._serializationInclusion;
        _filterProvider = serializationconfig._filterProvider;
    }

    private SerializationConfig(SerializationConfig serializationconfig, FilterProvider filterprovider)
    {
        super(serializationconfig);
        _serializationInclusion = null;
        _serFeatures = serializationconfig._serFeatures;
        _serializationInclusion = serializationconfig._serializationInclusion;
        _filterProvider = filterprovider;
    }

    private SerializationConfig(SerializationConfig serializationconfig, Class class1)
    {
        super(serializationconfig, class1);
        _serializationInclusion = null;
        _serFeatures = serializationconfig._serFeatures;
        _serializationInclusion = serializationconfig._serializationInclusion;
        _filterProvider = serializationconfig._filterProvider;
    }

    private SerializationConfig(SerializationConfig serializationconfig, String s)
    {
        super(serializationconfig, s);
        _serializationInclusion = null;
        _serFeatures = serializationconfig._serFeatures;
        _serializationInclusion = serializationconfig._serializationInclusion;
        _filterProvider = serializationconfig._filterProvider;
    }

    protected SerializationConfig(SerializationConfig serializationconfig, Map map)
    {
        super(serializationconfig, map);
        _serializationInclusion = null;
        _serFeatures = serializationconfig._serFeatures;
        _serializationInclusion = serializationconfig._serializationInclusion;
        _filterProvider = serializationconfig._filterProvider;
    }

    public SerializationConfig(BaseSettings basesettings, SubtypeResolver subtyperesolver, Map map)
    {
        super(basesettings, subtyperesolver, map);
        _serializationInclusion = null;
        _serFeatures = collectFeatureDefaults(com/fasterxml/jackson/databind/SerializationFeature);
        _filterProvider = null;
    }

    private final SerializationConfig _withBase(BaseSettings basesettings)
    {
        if (_base == basesettings)
        {
            return this;
        } else
        {
            return new SerializationConfig(this, basesettings);
        }
    }

    public final AnnotationIntrospector getAnnotationIntrospector()
    {
        if (isEnabled(MapperFeature.USE_ANNOTATIONS))
        {
            return super.getAnnotationIntrospector();
        } else
        {
            return AnnotationIntrospector.nopInstance();
        }
    }

    public final VisibilityChecker getDefaultVisibilityChecker()
    {
        VisibilityChecker visibilitychecker = super.getDefaultVisibilityChecker();
        if (!isEnabled(MapperFeature.AUTO_DETECT_GETTERS))
        {
            visibilitychecker = visibilitychecker.withGetterVisibility(com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility.NONE);
        }
        if (!isEnabled(MapperFeature.AUTO_DETECT_IS_GETTERS))
        {
            visibilitychecker = visibilitychecker.withIsGetterVisibility(com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility.NONE);
        }
        if (!isEnabled(MapperFeature.AUTO_DETECT_FIELDS))
        {
            visibilitychecker = visibilitychecker.withFieldVisibility(com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility.NONE);
        }
        return visibilitychecker;
    }

    public final FilterProvider getFilterProvider()
    {
        return _filterProvider;
    }

    public final int getSerializationFeatures()
    {
        return _serFeatures;
    }

    public final com.fasterxml.jackson.annotation.JsonInclude.Include getSerializationInclusion()
    {
        if (_serializationInclusion != null)
        {
            return _serializationInclusion;
        } else
        {
            return com.fasterxml.jackson.annotation.JsonInclude.Include.ALWAYS;
        }
    }

    public final BeanDescription introspect(JavaType javatype)
    {
        return getClassIntrospector().forSerialization(this, javatype, this);
    }

    public final BeanDescription introspectClassAnnotations(JavaType javatype)
    {
        return getClassIntrospector().forClassAnnotations(this, javatype, this);
    }

    public final BeanDescription introspectDirectClassAnnotations(JavaType javatype)
    {
        return getClassIntrospector().forDirectClassAnnotations(this, javatype, this);
    }

    public final boolean isEnabled(SerializationFeature serializationfeature)
    {
        return (_serFeatures & serializationfeature.getMask()) != 0;
    }

    public final String toString()
    {
        return (new StringBuilder("[SerializationConfig: flags=0x")).append(Integer.toHexString(_serFeatures)).append("]").toString();
    }

    public final boolean useRootWrapping()
    {
        if (_rootName != null)
        {
            return _rootName.length() > 0;
        } else
        {
            return isEnabled(SerializationFeature.WRAP_ROOT_VALUE);
        }
    }

    public final SerializationConfig with(a a)
    {
        return _withBase(_base.with(a));
    }

    public final SerializationConfig with(AnnotationIntrospector annotationintrospector)
    {
        return _withBase(_base.withAnnotationIntrospector(annotationintrospector));
    }

    public final SerializationConfig with(PropertyNamingStrategy propertynamingstrategy)
    {
        return _withBase(_base.withPropertyNamingStrategy(propertynamingstrategy));
    }

    public final SerializationConfig with(SerializationFeature serializationfeature)
    {
        int i = _serFeatures | serializationfeature.getMask();
        if (i == _serFeatures)
        {
            return this;
        } else
        {
            return new SerializationConfig(this, _mapperFeatures, i);
        }
    }

    public final transient SerializationConfig with(SerializationFeature serializationfeature, SerializationFeature aserializationfeature[])
    {
        int i = _serFeatures | serializationfeature.getMask();
        int j = aserializationfeature.length;
        for (int k = 0; k < j; k++)
        {
            i |= aserializationfeature[k].getMask();
        }

        if (i == _serFeatures)
        {
            return this;
        } else
        {
            return new SerializationConfig(this, _mapperFeatures, i);
        }
    }

    public final SerializationConfig with(HandlerInstantiator handlerinstantiator)
    {
        return _withBase(_base.withHandlerInstantiator(handlerinstantiator));
    }

    public final SerializationConfig with(ClassIntrospector classintrospector)
    {
        return _withBase(_base.withClassIntrospector(classintrospector));
    }

    public final SerializationConfig with(VisibilityChecker visibilitychecker)
    {
        return _withBase(_base.withVisibilityChecker(visibilitychecker));
    }

    public final SerializationConfig with(SubtypeResolver subtyperesolver)
    {
        if (subtyperesolver == _subtypeResolver)
        {
            return this;
        } else
        {
            return new SerializationConfig(this, subtyperesolver);
        }
    }

    public final SerializationConfig with(TypeResolverBuilder typeresolverbuilder)
    {
        return _withBase(_base.withTypeResolverBuilder(typeresolverbuilder));
    }

    public final SerializationConfig with(TypeFactory typefactory)
    {
        return _withBase(_base.withTypeFactory(typefactory));
    }

    public final SerializationConfig with(DateFormat dateformat)
    {
        SerializationConfig serializationconfig = new SerializationConfig(this, _base.withDateFormat(dateformat));
        if (dateformat == null)
        {
            return serializationconfig.with(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
        } else
        {
            return serializationconfig.without(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
        }
    }

    public final SerializationConfig with(Locale locale)
    {
        return _withBase(_base.with(locale));
    }

    public final SerializationConfig with(TimeZone timezone)
    {
        return _withBase(_base.with(timezone));
    }

    public final transient SerializationConfig with(MapperFeature amapperfeature[])
    {
        int i = _mapperFeatures;
        int j = amapperfeature.length;
        for (int k = 0; k < j; k++)
        {
            i |= amapperfeature[k].getMask();
        }

        if (i == _mapperFeatures)
        {
            return this;
        } else
        {
            return new SerializationConfig(this, i, _serFeatures);
        }
    }

    public final volatile MapperConfig with(MapperFeature amapperfeature[])
    {
        return with(amapperfeature);
    }

    public final volatile MapperConfigBase with(a a)
    {
        return with(a);
    }

    public final volatile MapperConfigBase with(AnnotationIntrospector annotationintrospector)
    {
        return with(annotationintrospector);
    }

    public final volatile MapperConfigBase with(PropertyNamingStrategy propertynamingstrategy)
    {
        return with(propertynamingstrategy);
    }

    public final volatile MapperConfigBase with(HandlerInstantiator handlerinstantiator)
    {
        return with(handlerinstantiator);
    }

    public final volatile MapperConfigBase with(ClassIntrospector classintrospector)
    {
        return with(classintrospector);
    }

    public final volatile MapperConfigBase with(VisibilityChecker visibilitychecker)
    {
        return with(visibilitychecker);
    }

    public final volatile MapperConfigBase with(SubtypeResolver subtyperesolver)
    {
        return with(subtyperesolver);
    }

    public final volatile MapperConfigBase with(TypeResolverBuilder typeresolverbuilder)
    {
        return with(typeresolverbuilder);
    }

    public final volatile MapperConfigBase with(TypeFactory typefactory)
    {
        return with(typefactory);
    }

    public final volatile MapperConfigBase with(DateFormat dateformat)
    {
        return with(dateformat);
    }

    public final volatile MapperConfigBase with(Locale locale)
    {
        return with(locale);
    }

    public final volatile MapperConfigBase with(TimeZone timezone)
    {
        return with(timezone);
    }

    public final SerializationConfig withAppendedAnnotationIntrospector(AnnotationIntrospector annotationintrospector)
    {
        return _withBase(_base.withAppendedAnnotationIntrospector(annotationintrospector));
    }

    public final volatile MapperConfigBase withAppendedAnnotationIntrospector(AnnotationIntrospector annotationintrospector)
    {
        return withAppendedAnnotationIntrospector(annotationintrospector);
    }

    public final transient SerializationConfig withFeatures(SerializationFeature aserializationfeature[])
    {
        int i = _serFeatures;
        int j = aserializationfeature.length;
        for (int k = 0; k < j; k++)
        {
            i |= aserializationfeature[k].getMask();
        }

        if (i == _serFeatures)
        {
            return this;
        } else
        {
            return new SerializationConfig(this, _mapperFeatures, i);
        }
    }

    public final SerializationConfig withFilters(FilterProvider filterprovider)
    {
        if (filterprovider == _filterProvider)
        {
            return this;
        } else
        {
            return new SerializationConfig(this, filterprovider);
        }
    }

    public final SerializationConfig withInsertedAnnotationIntrospector(AnnotationIntrospector annotationintrospector)
    {
        return _withBase(_base.withInsertedAnnotationIntrospector(annotationintrospector));
    }

    public final volatile MapperConfigBase withInsertedAnnotationIntrospector(AnnotationIntrospector annotationintrospector)
    {
        return withInsertedAnnotationIntrospector(annotationintrospector);
    }

    public final SerializationConfig withRootName(String s)
    {
        if (s != null ? s.equals(_rootName) : _rootName == null)
        {
            return this;
        } else
        {
            return new SerializationConfig(this, s);
        }
    }

    public final volatile MapperConfigBase withRootName(String s)
    {
        return withRootName(s);
    }

    public final SerializationConfig withSerializationInclusion(com.fasterxml.jackson.annotation.JsonInclude.Include include)
    {
        if (_serializationInclusion == include)
        {
            return this;
        } else
        {
            return new SerializationConfig(this, include);
        }
    }

    public final SerializationConfig withView(Class class1)
    {
        if (_view == class1)
        {
            return this;
        } else
        {
            return new SerializationConfig(this, class1);
        }
    }

    public final volatile MapperConfigBase withView(Class class1)
    {
        return withView(class1);
    }

    public final SerializationConfig withVisibility(PropertyAccessor propertyaccessor, com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility visibility)
    {
        return _withBase(_base.withVisibility(propertyaccessor, visibility));
    }

    public final volatile MapperConfigBase withVisibility(PropertyAccessor propertyaccessor, com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility visibility)
    {
        return withVisibility(propertyaccessor, visibility);
    }

    public final SerializationConfig without(SerializationFeature serializationfeature)
    {
        int i = _serFeatures & (-1 ^ serializationfeature.getMask());
        if (i == _serFeatures)
        {
            return this;
        } else
        {
            return new SerializationConfig(this, _mapperFeatures, i);
        }
    }

    public final transient SerializationConfig without(SerializationFeature serializationfeature, SerializationFeature aserializationfeature[])
    {
        int i = _serFeatures & (-1 ^ serializationfeature.getMask());
        int j = aserializationfeature.length;
        for (int k = 0; k < j; k++)
        {
            i &= -1 ^ aserializationfeature[k].getMask();
        }

        if (i == _serFeatures)
        {
            return this;
        } else
        {
            return new SerializationConfig(this, _mapperFeatures, i);
        }
    }

    public final transient SerializationConfig without(MapperFeature amapperfeature[])
    {
        int i = _mapperFeatures;
        int j = amapperfeature.length;
        for (int k = 0; k < j; k++)
        {
            i &= -1 ^ amapperfeature[k].getMask();
        }

        if (i == _mapperFeatures)
        {
            return this;
        } else
        {
            return new SerializationConfig(this, i, _serFeatures);
        }
    }

    public final volatile MapperConfig without(MapperFeature amapperfeature[])
    {
        return without(amapperfeature);
    }

    public final transient SerializationConfig withoutFeatures(SerializationFeature aserializationfeature[])
    {
        int i = _serFeatures;
        int j = aserializationfeature.length;
        for (int k = 0; k < j; k++)
        {
            i &= -1 ^ aserializationfeature[k].getMask();
        }

        if (i == _serFeatures)
        {
            return this;
        } else
        {
            return new SerializationConfig(this, _mapperFeatures, i);
        }
    }
}
