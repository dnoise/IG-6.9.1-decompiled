// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.a.f.b;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;

// Referenced classes of package com.fasterxml.jackson.databind.cfg:
//            ConfigFeature, BaseSettings, HandlerInstantiator

public abstract class MapperConfig
    implements com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver, Serializable
{

    private static final long serialVersionUID = 0x7b656637b7cdf9a9L;
    protected final BaseSettings _base;
    protected final int _mapperFeatures;

    protected MapperConfig(BaseSettings basesettings, int i)
    {
        _base = basesettings;
        _mapperFeatures = i;
    }

    protected MapperConfig(MapperConfig mapperconfig)
    {
        _base = mapperconfig._base;
        _mapperFeatures = mapperconfig._mapperFeatures;
    }

    public static int collectFeatureDefaults(Class class1)
    {
        Enum aenum[] = (Enum[])class1.getEnumConstants();
        int i = aenum.length;
        int j = 0;
        int k = 0;
        while (j < i) 
        {
            Enum enum = aenum[j];
            int l;
            if (((ConfigFeature)enum).enabledByDefault())
            {
                l = k | ((ConfigFeature)enum).getMask();
            } else
            {
                l = k;
            }
            j++;
            k = l;
        }
        return k;
    }

    public final boolean canOverrideAccessModifiers()
    {
        return isEnabled(MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS);
    }

    public JavaType constructSpecializedType(JavaType javatype, Class class1)
    {
        return getTypeFactory().constructSpecializedType(javatype, class1);
    }

    public final JavaType constructType(b b1)
    {
        return getTypeFactory().constructType(b1.a(), null);
    }

    public final JavaType constructType(Class class1)
    {
        return getTypeFactory().constructType(class1, null);
    }

    public abstract Class getActiveView();

    public AnnotationIntrospector getAnnotationIntrospector()
    {
        return _base.getAnnotationIntrospector();
    }

    public a getBase64Variant()
    {
        return _base.getBase64Variant();
    }

    public ClassIntrospector getClassIntrospector()
    {
        return _base.getClassIntrospector();
    }

    public final DateFormat getDateFormat()
    {
        return _base.getDateFormat();
    }

    public final TypeResolverBuilder getDefaultTyper(JavaType javatype)
    {
        return _base.getTypeResolverBuilder();
    }

    public VisibilityChecker getDefaultVisibilityChecker()
    {
        return _base.getVisibilityChecker();
    }

    public final HandlerInstantiator getHandlerInstantiator()
    {
        return _base.getHandlerInstantiator();
    }

    public final Locale getLocale()
    {
        return _base.getLocale();
    }

    public final PropertyNamingStrategy getPropertyNamingStrategy()
    {
        return _base.getPropertyNamingStrategy();
    }

    public abstract SubtypeResolver getSubtypeResolver();

    public final TimeZone getTimeZone()
    {
        return _base.getTimeZone();
    }

    public final TypeFactory getTypeFactory()
    {
        return _base.getTypeFactory();
    }

    public abstract BeanDescription introspectClassAnnotations(JavaType javatype);

    public BeanDescription introspectClassAnnotations(Class class1)
    {
        return introspectClassAnnotations(constructType(class1));
    }

    public abstract BeanDescription introspectDirectClassAnnotations(JavaType javatype);

    public BeanDescription introspectDirectClassAnnotations(Class class1)
    {
        return introspectDirectClassAnnotations(constructType(class1));
    }

    public final boolean isAnnotationProcessingEnabled()
    {
        return isEnabled(MapperFeature.USE_ANNOTATIONS);
    }

    public final boolean isEnabled(MapperFeature mapperfeature)
    {
        return (_mapperFeatures & mapperfeature.getMask()) != 0;
    }

    public final boolean shouldSortPropertiesAlphabetically()
    {
        return isEnabled(MapperFeature.SORT_PROPERTIES_ALPHABETICALLY);
    }

    public TypeIdResolver typeIdResolverInstance(Annotated annotated, Class class1)
    {
        HandlerInstantiator handlerinstantiator = getHandlerInstantiator();
        if (handlerinstantiator != null)
        {
            TypeIdResolver typeidresolver = handlerinstantiator.typeIdResolverInstance(this, annotated, class1);
            if (typeidresolver != null)
            {
                return typeidresolver;
            }
        }
        return (TypeIdResolver)ClassUtil.createInstance(class1, canOverrideAccessModifiers());
    }

    public TypeResolverBuilder typeResolverBuilderInstance(Annotated annotated, Class class1)
    {
        HandlerInstantiator handlerinstantiator = getHandlerInstantiator();
        if (handlerinstantiator != null)
        {
            TypeResolverBuilder typeresolverbuilder = handlerinstantiator.typeResolverBuilderInstance(this, annotated, class1);
            if (typeresolverbuilder != null)
            {
                return typeresolverbuilder;
            }
        }
        return (TypeResolverBuilder)ClassUtil.createInstance(class1, canOverrideAccessModifiers());
    }

    public abstract boolean useRootWrapping();

    public transient abstract MapperConfig with(MapperFeature amapperfeature[]);

    public transient abstract MapperConfig without(MapperFeature amapperfeature[]);
}
