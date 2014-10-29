// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.JsonDeserializer;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.TimeZone;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdDeserializer

public class DateDeserializers
{

    private static final HashSet _classNames;

    public DateDeserializers()
    {
    }

    public static StdDeserializer[] all()
    {
        StdDeserializer astddeserializer[] = new StdDeserializer[6];
        astddeserializer[0] = CalendarDeserializer.instance;
        astddeserializer[1] = DateDeserializer.instance;
        astddeserializer[2] = CalendarDeserializer.gregorianInstance;
        astddeserializer[3] = SqlDateDeserializer.instance;
        astddeserializer[4] = TimestampDeserializer.instance;
        astddeserializer[5] = TimeZoneDeserializer.instance;
        return astddeserializer;
    }

    public static JsonDeserializer find(Class class1, String s)
    {
        if (!_classNames.contains(s))
        {
            return null;
        }
        if (class1 == java/util/Calendar)
        {
            return CalendarDeserializer.instance;
        }
        if (class1 == java/util/Date)
        {
            return DateDeserializer.instance;
        }
        if (class1 == java/sql/Date)
        {
            return SqlDateDeserializer.instance;
        }
        if (class1 == java/sql/Timestamp)
        {
            return TimestampDeserializer.instance;
        }
        if (class1 == java/util/TimeZone)
        {
            return TimeZoneDeserializer.instance;
        }
        if (class1 == java/util/GregorianCalendar)
        {
            return CalendarDeserializer.gregorianInstance;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Internal error: can't find deserializer for ")).append(s).toString());
        }
    }

    static 
    {
        int i = 0;
        _classNames = new HashSet();
        Class aclass[] = {
            java/util/Calendar, java/util/GregorianCalendar, java/sql/Date, java/util/Date, java/sql/Timestamp, java/util/TimeZone
        };
        for (; i < 6; i++)
        {
            Class class1 = aclass[i];
            _classNames.add(class1.getName());
        }

    }

    private class CalendarDeserializer extends DateBasedDeserializer
    {
        private class DateBasedDeserializer extends StdScalarDeserializer
            implements ContextualDeserializer
        {

            protected final DateFormat _customFormat;
            protected final String _formatString;

            protected java.util.Date _parseDate(l l1, DeserializationContext deserializationcontext)
            {
                String s;
                if (_customFormat == null || l1.getCurrentToken() != r.h)
                {
                    break MISSING_BLOCK_LABEL_124;
                }
                s = l1.getText().trim();
                if (s.length() == 0)
                {
                    return (java.util.Date)getEmptyValue();
                }
                if (true) goto _L2; else goto _L1
_L1:
                dateformat;
                JVM INSTR monitorenter ;
_L2:
                java.util.Date date;
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
                    com.fasterxml.jackson.annotation.JsonFormat.Value value = deserializationcontext.getAnnotationIntrospector().findFormat(beanproperty.getMember());
                    if (value != null)
                    {
                        TimeZone timezone = value.getTimeZone();
                        String s = value.getPattern();
                        if (s.length() > 0)
                        {
                            java.util.Locale locale = value.getLocale();
                            if (locale == null)
                            {
                                locale = deserializationcontext.getLocale();
                            }
                            SimpleDateFormat simpledateformat = new SimpleDateFormat(s, locale);
                            DateFormat dateformat;
                            Object obj;
                            TimeZone timezone1;
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

            protected abstract DateBasedDeserializer withDateFormat(DateFormat dateformat, String s);

            protected DateBasedDeserializer(DateBasedDeserializer datebaseddeserializer, DateFormat dateformat, String s)
            {
                super(datebaseddeserializer._valueClass);
                _customFormat = dateformat;
                _formatString = s;
            }

            protected DateBasedDeserializer(Class class1)
            {
                super(class1);
                _customFormat = null;
                _formatString = null;
            }
        }


        public static final CalendarDeserializer gregorianInstance = new CalendarDeserializer(java/util/GregorianCalendar);
        public static final CalendarDeserializer instance = new CalendarDeserializer();
        protected final Class _calendarClass;

        public volatile JsonDeserializer createContextual(DeserializationContext deserializationcontext, BeanProperty beanproperty)
        {
            return super.createContextual(deserializationcontext, beanproperty);
        }

        public volatile Object deserialize(l l, DeserializationContext deserializationcontext)
        {
            return deserialize(l, deserializationcontext);
        }

        public Calendar deserialize(l l, DeserializationContext deserializationcontext)
        {
            java.util.Date date = _parseDate(l, deserializationcontext);
            if (date != null) goto _L2; else goto _L1
_L1:
            Calendar calendar = null;
_L4:
            return calendar;
_L2:
            if (_calendarClass == null)
            {
                return deserializationcontext.constructCalendar(date);
            }
            TimeZone timezone;
            try
            {
                calendar = (Calendar)_calendarClass.newInstance();
                calendar.setTimeInMillis(date.getTime());
                timezone = deserializationcontext.getTimeZone();
            }
            catch (Exception exception)
            {
                throw deserializationcontext.instantiationException(_calendarClass, exception);
            }
            if (timezone == null) goto _L4; else goto _L3
_L3:
            calendar.setTimeZone(timezone);
            return calendar;
        }

        protected CalendarDeserializer withDateFormat(DateFormat dateformat, String s)
        {
            return new CalendarDeserializer(this, dateformat, s);
        }

        protected volatile DateBasedDeserializer withDateFormat(DateFormat dateformat, String s)
        {
            return withDateFormat(dateformat, s);
        }


        public CalendarDeserializer()
        {
            super(java/util/Calendar);
            _calendarClass = null;
        }

        public CalendarDeserializer(CalendarDeserializer calendardeserializer, DateFormat dateformat, String s)
        {
            super(calendardeserializer, dateformat, s);
            _calendarClass = calendardeserializer._calendarClass;
        }

        public CalendarDeserializer(Class class1)
        {
            super(class1);
            _calendarClass = class1;
        }
    }


    private class DateDeserializer extends DateBasedDeserializer
    {

        public static final DateDeserializer instance = new DateDeserializer();

        public volatile JsonDeserializer createContextual(DeserializationContext deserializationcontext, BeanProperty beanproperty)
        {
            return super.createContextual(deserializationcontext, beanproperty);
        }

        public volatile Object deserialize(l l, DeserializationContext deserializationcontext)
        {
            return deserialize(l, deserializationcontext);
        }

        public java.util.Date deserialize(l l, DeserializationContext deserializationcontext)
        {
            return _parseDate(l, deserializationcontext);
        }

        protected volatile DateBasedDeserializer withDateFormat(DateFormat dateformat, String s)
        {
            return withDateFormat(dateformat, s);
        }

        protected DateDeserializer withDateFormat(DateFormat dateformat, String s)
        {
            return new DateDeserializer(this, dateformat, s);
        }


        public DateDeserializer()
        {
            super(java/util/Date);
        }

        public DateDeserializer(DateDeserializer datedeserializer, DateFormat dateformat, String s)
        {
            super(datedeserializer, dateformat, s);
        }
    }


    private class SqlDateDeserializer extends DateBasedDeserializer
    {

        public static final SqlDateDeserializer instance = new SqlDateDeserializer();

        public volatile JsonDeserializer createContextual(DeserializationContext deserializationcontext, BeanProperty beanproperty)
        {
            return super.createContextual(deserializationcontext, beanproperty);
        }

        public volatile Object deserialize(l l, DeserializationContext deserializationcontext)
        {
            return deserialize(l, deserializationcontext);
        }

        public Date deserialize(l l, DeserializationContext deserializationcontext)
        {
            java.util.Date date = _parseDate(l, deserializationcontext);
            if (date == null)
            {
                return null;
            } else
            {
                return new Date(date.getTime());
            }
        }

        protected volatile DateBasedDeserializer withDateFormat(DateFormat dateformat, String s)
        {
            return withDateFormat(dateformat, s);
        }

        protected SqlDateDeserializer withDateFormat(DateFormat dateformat, String s)
        {
            return new SqlDateDeserializer(this, dateformat, s);
        }


        public SqlDateDeserializer()
        {
            super(java/sql/Date);
        }

        public SqlDateDeserializer(SqlDateDeserializer sqldatedeserializer, DateFormat dateformat, String s)
        {
            super(sqldatedeserializer, dateformat, s);
        }
    }


    private class TimestampDeserializer extends DateBasedDeserializer
    {

        public static final TimestampDeserializer instance = new TimestampDeserializer();

        public volatile JsonDeserializer createContextual(DeserializationContext deserializationcontext, BeanProperty beanproperty)
        {
            return super.createContextual(deserializationcontext, beanproperty);
        }

        public volatile Object deserialize(l l, DeserializationContext deserializationcontext)
        {
            return deserialize(l, deserializationcontext);
        }

        public Timestamp deserialize(l l, DeserializationContext deserializationcontext)
        {
            return new Timestamp(_parseDate(l, deserializationcontext).getTime());
        }

        protected volatile DateBasedDeserializer withDateFormat(DateFormat dateformat, String s)
        {
            return withDateFormat(dateformat, s);
        }

        protected TimestampDeserializer withDateFormat(DateFormat dateformat, String s)
        {
            return new TimestampDeserializer(this, dateformat, s);
        }


        public TimestampDeserializer()
        {
            super(java/sql/Timestamp);
        }

        public TimestampDeserializer(TimestampDeserializer timestampdeserializer, DateFormat dateformat, String s)
        {
            super(timestampdeserializer, dateformat, s);
        }
    }


    private class TimeZoneDeserializer extends FromStringDeserializer
    {

        public static final TimeZoneDeserializer instance = new TimeZoneDeserializer();

        protected volatile Object _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return _deserialize(s, deserializationcontext);
        }

        protected TimeZone _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return TimeZone.getTimeZone(s);
        }


        public TimeZoneDeserializer()
        {
            super(java/util/TimeZone);
        }
    }

}
