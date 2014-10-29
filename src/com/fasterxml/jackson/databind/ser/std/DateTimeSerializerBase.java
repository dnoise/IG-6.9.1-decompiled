// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.o;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonIntegerFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonStringFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonValueFormat;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdScalarSerializer

public abstract class DateTimeSerializerBase extends StdScalarSerializer
    implements ContextualSerializer
{

    protected final DateFormat _customFormat;
    protected final boolean _useTimestamp;

    protected DateTimeSerializerBase(Class class1, boolean flag, DateFormat dateformat)
    {
        super(class1);
        _useTimestamp = flag;
        _customFormat = dateformat;
    }

    protected abstract long _timestamp(Object obj);

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        boolean flag = _useTimestamp;
        if (!flag && _customFormat == null)
        {
            flag = jsonformatvisitorwrapper.getProvider().isEnabled(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
        }
        if (flag)
        {
            JsonIntegerFormatVisitor jsonintegerformatvisitor = jsonformatvisitorwrapper.expectIntegerFormat(javatype);
            if (jsonintegerformatvisitor != null)
            {
                jsonintegerformatvisitor.numberType$351723a9(o.b);
                jsonintegerformatvisitor.format(JsonValueFormat.UTC_MILLISEC);
            }
        } else
        {
            JsonStringFormatVisitor jsonstringformatvisitor = jsonformatvisitorwrapper.expectStringFormat(javatype);
            if (jsonstringformatvisitor != null)
            {
                jsonstringformatvisitor.format(JsonValueFormat.DATE_TIME);
                return;
            }
        }
    }

    public JsonSerializer createContextual(SerializerProvider serializerprovider, BeanProperty beanproperty)
    {
        if (beanproperty != null)
        {
            com.fasterxml.jackson.annotation.JsonFormat.Value value = serializerprovider.getAnnotationIntrospector().findFormat(beanproperty.getMember());
            if (value != null)
            {
                if (value.getShape().isNumeric())
                {
                    this = withFormat(true, null);
                } else
                {
                    java.util.TimeZone timezone = value.getTimeZone();
                    String s = value.getPattern();
                    if (s.length() > 0)
                    {
                        java.util.Locale locale = value.getLocale();
                        if (locale == null)
                        {
                            locale = serializerprovider.getLocale();
                        }
                        SimpleDateFormat simpledateformat = new SimpleDateFormat(s, locale);
                        DateFormat dateformat;
                        DateFormat dateformat1;
                        java.util.TimeZone timezone1;
                        if (timezone == null)
                        {
                            timezone1 = serializerprovider.getTimeZone();
                        } else
                        {
                            timezone1 = timezone;
                        }
                        simpledateformat.setTimeZone(timezone1);
                        return withFormat(false, simpledateformat);
                    }
                    if (timezone != null)
                    {
                        dateformat = serializerprovider.getConfig().getDateFormat();
                        if (dateformat.getClass() == com/fasterxml/jackson/databind/util/StdDateFormat)
                        {
                            dateformat1 = StdDateFormat.getISO8601Format(timezone);
                        } else
                        {
                            dateformat1 = (DateFormat)dateformat.clone();
                            dateformat1.setTimeZone(timezone);
                        }
                        return withFormat(false, dateformat1);
                    }
                }
            }
        }
        return this;
    }

    public JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        boolean flag = _useTimestamp;
        if (!flag && _customFormat == null)
        {
            flag = serializerprovider.isEnabled(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
        }
        String s;
        if (flag)
        {
            s = "number";
        } else
        {
            s = "string";
        }
        return createSchemaNode(s, true);
    }

    public boolean isEmpty(Object obj)
    {
        return obj == null || _timestamp(obj) == 0L;
    }

    public abstract void serialize(Object obj, h h, SerializerProvider serializerprovider);

    public abstract DateTimeSerializerBase withFormat(boolean flag, DateFormat dateformat);
}
