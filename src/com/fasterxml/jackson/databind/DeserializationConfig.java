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
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.NopAnnotationIntrospector;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.LinkedNode;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

// Referenced classes of package com.fasterxml.jackson.databind:
//            DeserializationFeature, MapperFeature, AnnotationIntrospector, JavaType, 
//            BeanDescription, PropertyNamingStrategy

public final class DeserializationConfig extends MapperConfigBase
    implements Serializable
{

    private static final long serialVersionUID = 0xc554f8f7bd85e5e1L;
    protected final int _deserFeatures;
    protected final JsonNodeFactory _nodeFactory;
    protected final LinkedNode _problemHandlers;

    private DeserializationConfig(DeserializationConfig deserializationconfig, int i, int j)
    {
        super(deserializationconfig, i);
        _deserFeatures = j;
        _nodeFactory = deserializationconfig._nodeFactory;
        _problemHandlers = deserializationconfig._problemHandlers;
    }

    private DeserializationConfig(DeserializationConfig deserializationconfig, BaseSettings basesettings)
    {
        super(deserializationconfig, basesettings);
        _deserFeatures = deserializationconfig._deserFeatures;
        _nodeFactory = deserializationconfig._nodeFactory;
        _problemHandlers = deserializationconfig._problemHandlers;
    }

    private DeserializationConfig(DeserializationConfig deserializationconfig, SubtypeResolver subtyperesolver)
    {
        super(deserializationconfig, subtyperesolver);
        _deserFeatures = deserializationconfig._deserFeatures;
        _nodeFactory = deserializationconfig._nodeFactory;
        _problemHandlers = deserializationconfig._problemHandlers;
    }

    private DeserializationConfig(DeserializationConfig deserializationconfig, JsonNodeFactory jsonnodefactory)
    {
        super(deserializationconfig);
        _deserFeatures = deserializationconfig._deserFeatures;
        _problemHandlers = deserializationconfig._problemHandlers;
        _nodeFactory = jsonnodefactory;
    }

    private DeserializationConfig(DeserializationConfig deserializationconfig, LinkedNode linkednode)
    {
        super(deserializationconfig);
        _deserFeatures = deserializationconfig._deserFeatures;
        _problemHandlers = linkednode;
        _nodeFactory = deserializationconfig._nodeFactory;
    }

    private DeserializationConfig(DeserializationConfig deserializationconfig, Class class1)
    {
        super(deserializationconfig, class1);
        _deserFeatures = deserializationconfig._deserFeatures;
        _problemHandlers = deserializationconfig._problemHandlers;
        _nodeFactory = deserializationconfig._nodeFactory;
    }

    private DeserializationConfig(DeserializationConfig deserializationconfig, String s)
    {
        super(deserializationconfig, s);
        _deserFeatures = deserializationconfig._deserFeatures;
        _problemHandlers = deserializationconfig._problemHandlers;
        _nodeFactory = deserializationconfig._nodeFactory;
    }

    protected DeserializationConfig(DeserializationConfig deserializationconfig, Map map)
    {
        super(deserializationconfig, map);
        _deserFeatures = deserializationconfig._deserFeatures;
        _problemHandlers = deserializationconfig._problemHandlers;
        _nodeFactory = deserializationconfig._nodeFactory;
    }

    public DeserializationConfig(BaseSettings basesettings, SubtypeResolver subtyperesolver, Map map)
    {
        super(basesettings, subtyperesolver, map);
        _deserFeatures = collectFeatureDefaults(com/fasterxml/jackson/databind/DeserializationFeature);
        _nodeFactory = JsonNodeFactory.instance;
        _problemHandlers = null;
    }

    private final DeserializationConfig _withBase(BaseSettings basesettings)
    {
        if (_base == basesettings)
        {
            return this;
        } else
        {
            return new DeserializationConfig(this, basesettings);
        }
    }

    public final AnnotationIntrospector getAnnotationIntrospector()
    {
        if (isEnabled(MapperFeature.USE_ANNOTATIONS))
        {
            return super.getAnnotationIntrospector();
        } else
        {
            return NopAnnotationIntrospector.instance;
        }
    }

    protected final BaseSettings getBaseSettings()
    {
        return _base;
    }

    public final VisibilityChecker getDefaultVisibilityChecker()
    {
        VisibilityChecker visibilitychecker = super.getDefaultVisibilityChecker();
        if (!isEnabled(MapperFeature.AUTO_DETECT_SETTERS))
        {
            visibilitychecker = visibilitychecker.withSetterVisibility(com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility.NONE);
        }
        if (!isEnabled(MapperFeature.AUTO_DETECT_CREATORS))
        {
            visibilitychecker = visibilitychecker.withCreatorVisibility(com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility.NONE);
        }
        if (!isEnabled(MapperFeature.AUTO_DETECT_FIELDS))
        {
            visibilitychecker = visibilitychecker.withFieldVisibility(com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility.NONE);
        }
        return visibilitychecker;
    }

    public final int getDeserializationFeatures()
    {
        return _deserFeatures;
    }

    public final JsonNodeFactory getNodeFactory()
    {
        return _nodeFactory;
    }

    public final LinkedNode getProblemHandlers()
    {
        return _problemHandlers;
    }

    public final BeanDescription introspect(JavaType javatype)
    {
        return getClassIntrospector().forDeserialization(this, javatype, this);
    }

    public final BeanDescription introspectClassAnnotations(JavaType javatype)
    {
        return getClassIntrospector().forClassAnnotations(this, javatype, this);
    }

    public final BeanDescription introspectDirectClassAnnotations(JavaType javatype)
    {
        return getClassIntrospector().forDirectClassAnnotations(this, javatype, this);
    }

    public final BeanDescription introspectForBuilder(JavaType javatype)
    {
        return getClassIntrospector().forDeserializationWithBuilder(this, javatype, this);
    }

    public final BeanDescription introspectForCreation(JavaType javatype)
    {
        return getClassIntrospector().forCreation(this, javatype, this);
    }

    public final boolean isEnabled(DeserializationFeature deserializationfeature)
    {
        return (_deserFeatures & deserializationfeature.getMask()) != 0;
    }

    public final boolean useRootWrapping()
    {
        if (_rootName != null)
        {
            return _rootName.length() > 0;
        } else
        {
            return isEnabled(DeserializationFeature.UNWRAP_ROOT_VALUE);
        }
    }

    public final DeserializationConfig with(a a)
    {
        return _withBase(_base.with(a));
    }

    public final DeserializationConfig with(AnnotationIntrospector annotationintrospector)
    {
        return _withBase(_base.withAnnotationIntrospector(annotationintrospector));
    }

    public final DeserializationConfig with(DeserializationFeature deserializationfeature)
    {
        int i = _deserFeatures | deserializationfeature.getMask();
        if (i == _deserFeatures)
        {
            return this;
        } else
        {
            return new DeserializationConfig(this, _mapperFeatures, i);
        }
    }

    public final transient DeserializationConfig with(DeserializationFeature deserializationfeature, DeserializationFeature adeserializationfeature[])
    {
        int i = _deserFeatures | deserializationfeature.getMask();
        int j = adeserializationfeature.length;
        for (int k = 0; k < j; k++)
        {
            i |= adeserializationfeature[k].getMask();
        }

        if (i == _deserFeatures)
        {
            return this;
        } else
        {
            return new DeserializationConfig(this, _mapperFeatures, i);
        }
    }

    public final DeserializationConfig with(PropertyNamingStrategy propertynamingstrategy)
    {
        return _withBase(_base.withPropertyNamingStrategy(propertynamingstrategy));
    }

    public final DeserializationConfig with(HandlerInstantiator handlerinstantiator)
    {
        return _withBase(_base.withHandlerInstantiator(handlerinstantiator));
    }

    public final DeserializationConfig with(ClassIntrospector classintrospector)
    {
        return _withBase(_base.withClassIntrospector(classintrospector));
    }

    public final DeserializationConfig with(VisibilityChecker visibilitychecker)
    {
        return _withBase(_base.withVisibilityChecker(visibilitychecker));
    }

    public final DeserializationConfig with(SubtypeResolver subtyperesolver)
    {
        if (_subtypeResolver == subtyperesolver)
        {
            return this;
        } else
        {
            return new DeserializationConfig(this, subtyperesolver);
        }
    }

    public final DeserializationConfig with(TypeResolverBuilder typeresolverbuilder)
    {
        return _withBase(_base.withTypeResolverBuilder(typeresolverbuilder));
    }

    public final DeserializationConfig with(JsonNodeFactory jsonnodefactory)
    {
        if (_nodeFactory == jsonnodefactory)
        {
            return this;
        } else
        {
            return new DeserializationConfig(this, jsonnodefactory);
        }
    }

    public final DeserializationConfig with(TypeFactory typefactory)
    {
        return _withBase(_base.withTypeFactory(typefactory));
    }

    public final DeserializationConfig with(DateFormat dateformat)
    {
        return _withBase(_base.withDateFormat(dateformat));
    }

    public final DeserializationConfig with(Locale locale)
    {
        return _withBase(_base.with(locale));
    }

    public final DeserializationConfig with(TimeZone timezone)
    {
        return _withBase(_base.with(timezone));
    }

    public final transient DeserializationConfig with(MapperFeature amapperfeature[])
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
            return new DeserializationConfig(this, i, _deserFeatures);
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

    public final DeserializationConfig withAppendedAnnotationIntrospector(AnnotationIntrospector annotationintrospector)
    {
        return _withBase(_base.withAppendedAnnotationIntrospector(annotationintrospector));
    }

    public final volatile MapperConfigBase withAppendedAnnotationIntrospector(AnnotationIntrospector annotationintrospector)
    {
        return withAppendedAnnotationIntrospector(annotationintrospector);
    }

    public final transient DeserializationConfig withFeatures(DeserializationFeature adeserializationfeature[])
    {
        int i = _deserFeatures;
        int j = adeserializationfeature.length;
        for (int k = 0; k < j; k++)
        {
            i |= adeserializationfeature[k].getMask();
        }

        if (i == _deserFeatures)
        {
            return this;
        } else
        {
            return new DeserializationConfig(this, _mapperFeatures, i);
        }
    }

    public final DeserializationConfig withHandler(DeserializationProblemHandler deserializationproblemhandler)
    {
        if (LinkedNode.contains(_problemHandlers, deserializationproblemhandler))
        {
            return this;
        } else
        {
            return new DeserializationConfig(this, new LinkedNode(deserializationproblemhandler, _problemHandlers));
        }
    }

    public final DeserializationConfig withInsertedAnnotationIntrospector(AnnotationIntrospector annotationintrospector)
    {
        return _withBase(_base.withInsertedAnnotationIntrospector(annotationintrospector));
    }

    public final volatile MapperConfigBase withInsertedAnnotationIntrospector(AnnotationIntrospector annotationintrospector)
    {
        return withInsertedAnnotationIntrospector(annotationintrospector);
    }

    public final DeserializationConfig withNoProblemHandlers()
    {
        if (_problemHandlers == null)
        {
            return this;
        } else
        {
            return new DeserializationConfig(this, ((LinkedNode) (null)));
        }
    }

    public final DeserializationConfig withRootName(String s)
    {
        if (s != null ? s.equals(_rootName) : _rootName == null)
        {
            return this;
        } else
        {
            return new DeserializationConfig(this, s);
        }
    }

    public final volatile MapperConfigBase withRootName(String s)
    {
        return withRootName(s);
    }

    public final DeserializationConfig withView(Class class1)
    {
        if (_view == class1)
        {
            return this;
        } else
        {
            return new DeserializationConfig(this, class1);
        }
    }

    public final volatile MapperConfigBase withView(Class class1)
    {
        return withView(class1);
    }

    public final DeserializationConfig withVisibility(PropertyAccessor propertyaccessor, com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility visibility)
    {
        return _withBase(_base.withVisibility(propertyaccessor, visibility));
    }

    public final volatile MapperConfigBase withVisibility(PropertyAccessor propertyaccessor, com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility visibility)
    {
        return withVisibility(propertyaccessor, visibility);
    }

    public final DeserializationConfig without(DeserializationFeature deserializationfeature)
    {
        int i = _deserFeatures & (-1 ^ deserializationfeature.getMask());
        if (i == _deserFeatures)
        {
            return this;
        } else
        {
            return new DeserializationConfig(this, _mapperFeatures, i);
        }
    }

    public final transient DeserializationConfig without(DeserializationFeature deserializationfeature, DeserializationFeature adeserializationfeature[])
    {
        int i = _deserFeatures & (-1 ^ deserializationfeature.getMask());
        int j = adeserializationfeature.length;
        for (int k = 0; k < j; k++)
        {
            i &= -1 ^ adeserializationfeature[k].getMask();
        }

        if (i == _deserFeatures)
        {
            return this;
        } else
        {
            return new DeserializationConfig(this, _mapperFeatures, i);
        }
    }

    public final transient DeserializationConfig without(MapperFeature amapperfeature[])
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
            return new DeserializationConfig(this, i, _deserFeatures);
        }
    }

    public final volatile MapperConfig without(MapperFeature amapperfeature[])
    {
        return without(amapperfeature);
    }

    public final transient DeserializationConfig withoutFeatures(DeserializationFeature adeserializationfeature[])
    {
        int i = _deserFeatures;
        int j = adeserializationfeature.length;
        for (int k = 0; k < j; k++)
        {
            i &= -1 ^ adeserializationfeature[k].getMask();
        }

        if (i == _deserFeatures)
        {
            return this;
        } else
        {
            return new DeserializationConfig(this, _mapperFeatures, i);
        }
    }
}
