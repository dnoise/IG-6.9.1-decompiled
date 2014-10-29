// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.introspect.AnnotationIntrospectorPair;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;

// Referenced classes of package com.fasterxml.jackson.databind.cfg:
//            HandlerInstantiator

public final class BaseSettings
    implements Serializable
{

    private static final long serialVersionUID = 0x448d3f549d79fc0eL;
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final ClassIntrospector _classIntrospector;
    protected final DateFormat _dateFormat;
    protected final a _defaultBase64;
    protected final HandlerInstantiator _handlerInstantiator;
    protected final Locale _locale;
    protected final PropertyNamingStrategy _propertyNamingStrategy;
    protected final TimeZone _timeZone;
    protected final TypeFactory _typeFactory;
    protected final TypeResolverBuilder _typeResolverBuilder;
    protected final VisibilityChecker _visibilityChecker;

    public BaseSettings(ClassIntrospector classintrospector, AnnotationIntrospector annotationintrospector, VisibilityChecker visibilitychecker, PropertyNamingStrategy propertynamingstrategy, TypeFactory typefactory, TypeResolverBuilder typeresolverbuilder, DateFormat dateformat, 
            HandlerInstantiator handlerinstantiator, Locale locale, TimeZone timezone, a a)
    {
        _classIntrospector = classintrospector;
        _annotationIntrospector = annotationintrospector;
        _visibilityChecker = visibilitychecker;
        _propertyNamingStrategy = propertynamingstrategy;
        _typeFactory = typefactory;
        _typeResolverBuilder = typeresolverbuilder;
        _dateFormat = dateformat;
        _handlerInstantiator = handlerinstantiator;
        _locale = locale;
        _timeZone = timezone;
        _defaultBase64 = a;
    }

    public final AnnotationIntrospector getAnnotationIntrospector()
    {
        return _annotationIntrospector;
    }

    public final a getBase64Variant()
    {
        return _defaultBase64;
    }

    public final ClassIntrospector getClassIntrospector()
    {
        return _classIntrospector;
    }

    public final DateFormat getDateFormat()
    {
        return _dateFormat;
    }

    public final HandlerInstantiator getHandlerInstantiator()
    {
        return _handlerInstantiator;
    }

    public final Locale getLocale()
    {
        return _locale;
    }

    public final PropertyNamingStrategy getPropertyNamingStrategy()
    {
        return _propertyNamingStrategy;
    }

    public final TimeZone getTimeZone()
    {
        return _timeZone;
    }

    public final TypeFactory getTypeFactory()
    {
        return _typeFactory;
    }

    public final TypeResolverBuilder getTypeResolverBuilder()
    {
        return _typeResolverBuilder;
    }

    public final VisibilityChecker getVisibilityChecker()
    {
        return _visibilityChecker;
    }

    public final BaseSettings with(a a)
    {
        if (a == _defaultBase64)
        {
            return this;
        } else
        {
            return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale, _timeZone, a);
        }
    }

    public final BaseSettings with(Locale locale)
    {
        if (_locale == locale)
        {
            return this;
        } else
        {
            return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator, locale, _timeZone, _defaultBase64);
        }
    }

    public final BaseSettings with(TimeZone timezone)
    {
        if (timezone == null)
        {
            throw new IllegalArgumentException();
        }
        DateFormat dateformat = _dateFormat;
        Object obj;
        if (dateformat instanceof StdDateFormat)
        {
            obj = ((StdDateFormat)dateformat).withTimeZone(timezone);
        } else
        {
            DateFormat dateformat1 = (DateFormat)dateformat.clone();
            dateformat1.setTimeZone(timezone);
            obj = dateformat1;
        }
        return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, ((DateFormat) (obj)), _handlerInstantiator, _locale, timezone, _defaultBase64);
    }

    public final BaseSettings withAnnotationIntrospector(AnnotationIntrospector annotationintrospector)
    {
        if (_annotationIntrospector == annotationintrospector)
        {
            return this;
        } else
        {
            return new BaseSettings(_classIntrospector, annotationintrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale, _timeZone, _defaultBase64);
        }
    }

    public final BaseSettings withAppendedAnnotationIntrospector(AnnotationIntrospector annotationintrospector)
    {
        return withAnnotationIntrospector(AnnotationIntrospectorPair.create(_annotationIntrospector, annotationintrospector));
    }

    public final BaseSettings withClassIntrospector(ClassIntrospector classintrospector)
    {
        if (_classIntrospector == classintrospector)
        {
            return this;
        } else
        {
            return new BaseSettings(classintrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale, _timeZone, _defaultBase64);
        }
    }

    public final BaseSettings withDateFormat(DateFormat dateformat)
    {
        if (_dateFormat == dateformat)
        {
            return this;
        } else
        {
            return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, dateformat, _handlerInstantiator, _locale, _timeZone, _defaultBase64);
        }
    }

    public final BaseSettings withHandlerInstantiator(HandlerInstantiator handlerinstantiator)
    {
        if (_handlerInstantiator == handlerinstantiator)
        {
            return this;
        } else
        {
            return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, handlerinstantiator, _locale, _timeZone, _defaultBase64);
        }
    }

    public final BaseSettings withInsertedAnnotationIntrospector(AnnotationIntrospector annotationintrospector)
    {
        return withAnnotationIntrospector(AnnotationIntrospectorPair.create(annotationintrospector, _annotationIntrospector));
    }

    public final BaseSettings withPropertyNamingStrategy(PropertyNamingStrategy propertynamingstrategy)
    {
        if (_propertyNamingStrategy == propertynamingstrategy)
        {
            return this;
        } else
        {
            return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, propertynamingstrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale, _timeZone, _defaultBase64);
        }
    }

    public final BaseSettings withTypeFactory(TypeFactory typefactory)
    {
        if (_typeFactory == typefactory)
        {
            return this;
        } else
        {
            return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, typefactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale, _timeZone, _defaultBase64);
        }
    }

    public final BaseSettings withTypeResolverBuilder(TypeResolverBuilder typeresolverbuilder)
    {
        if (_typeResolverBuilder == typeresolverbuilder)
        {
            return this;
        } else
        {
            return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, typeresolverbuilder, _dateFormat, _handlerInstantiator, _locale, _timeZone, _defaultBase64);
        }
    }

    public final BaseSettings withVisibility(PropertyAccessor propertyaccessor, com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility visibility)
    {
        return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker.withVisibility(propertyaccessor, visibility), _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale, _timeZone, _defaultBase64);
    }

    public final BaseSettings withVisibilityChecker(VisibilityChecker visibilitychecker)
    {
        if (_visibilityChecker == visibilitychecker)
        {
            return this;
        } else
        {
            return new BaseSettings(_classIntrospector, _annotationIntrospector, visibilitychecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale, _timeZone, _defaultBase64);
        }
    }
}
