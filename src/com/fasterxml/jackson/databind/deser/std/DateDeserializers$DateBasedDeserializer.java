// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdScalarDeserializer

public abstract class _formatString extends StdScalarDeserializer
    implements ContextualDeserializer
{

    protected final DateFormat _customFormat;
    protected final String _formatString;

    protected Date _parseDate(l l1, DeserializationContext deserializationcontext)
    {
        String s;
        if (_customFormat == null || l1.getCurrentToken() != r.h)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        s = l1.getText().trim();
        if (s.length() == 0)
        {
            return (Date)getEmptyValue();
        }
        if (true) goto _L2; else goto _L1
_L1:
        dateformat;
        JVM INSTR monitorenter ;
_L2:
        Date date;
        synchronized (_customFormat)
        {
            date = _customFormat.parse(s);
        }
        return date;
        exception;
        dateformat;
        JVM INSTR monitorexit ;
        throw exception;
        ParseException parseexception;
        parseexception;
        throw new IllegalArgumentException((new StringBuilder("Failed to parse Date value '")).append(s).append("' (format: \"").append(_formatString).append("\"): ").append(parseexception.getMessage()).toString());
        return super._parseDate(l1, deserializationcontext);
    }

    public JsonDeserializer createContextual(DeserializationContext deserializationcontext, BeanProperty beanproperty)
    {
        if (beanproperty != null)
        {
            com.fasterxml.jackson.annotation.ializer ializer = deserializationcontext.getAnnotationIntrospector().findFormat(beanproperty.getMember());
            if (ializer != null)
            {
                java.util.TimeZone timezone = ializer.pector();
                String s = ializer.pector();
                if (s.length() > 0)
                {
                    java.util.Locale locale = ializer.pector();
                    if (locale == null)
                    {
                        locale = deserializationcontext.getLocale();
                    }
                    SimpleDateFormat simpledateformat = new SimpleDateFormat(s, locale);
                    DateFormat dateformat;
                    Object obj;
                    java.util.TimeZone timezone1;
                    if (timezone == null)
                    {
                        timezone1 = deserializationcontext.getTimeZone();
                    } else
                    {
                        timezone1 = timezone;
                    }
                    simpledateformat.setTimeZone(timezone1);
                    this = withDateFormat(simpledateformat, s);
                } else
                if (timezone != null)
                {
                    dateformat = deserializationcontext.getConfig().getDateFormat();
                    if (dateformat.getClass() == com/fasterxml/jackson/databind/util/StdDateFormat)
                    {
                        obj = ((StdDateFormat)dateformat).withTimeZone(timezone);
                    } else
                    {
                        obj = (DateFormat)dateformat.clone();
                        ((DateFormat) (obj)).setTimeZone(timezone);
                    }
                    return withDateFormat(((DateFormat) (obj)), s);
                }
            }
        }
        return this;
    }

    protected abstract withDateFormat withDateFormat(DateFormat dateformat, String s);

    protected ( , DateFormat dateformat, String s)
    {
        super(._valueClass);
        _customFormat = dateformat;
        _formatString = s;
    }

    protected _formatString(Class class1)
    {
        super(class1);
        _customFormat = null;
        _formatString = null;
    }
}
