// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;

public class CoreXMLDeserializers extends com.fasterxml.jackson.databind.deser.Deserializers.Base
{

    static final DatatypeFactory _dataTypeFactory;

    public CoreXMLDeserializers()
    {
    }

    public JsonDeserializer findBeanDeserializer(JavaType javatype, DeserializationConfig deserializationconfig, BeanDescription beandescription)
    {
        Class class1 = javatype.getRawClass();
        if (class1 == javax/xml/namespace/QName)
        {
            return QNameDeserializer.instance;
        }
        if (class1 == javax/xml/datatype/XMLGregorianCalendar)
        {
            return GregorianCalendarDeserializer.instance;
        }
        if (class1 == javax/xml/datatype/Duration)
        {
            return DurationDeserializer.instance;
        } else
        {
            return null;
        }
    }

    static 
    {
        try
        {
            _dataTypeFactory = DatatypeFactory.newInstance();
        }
        catch (DatatypeConfigurationException datatypeconfigurationexception)
        {
            throw new RuntimeException(datatypeconfigurationexception);
        }
    }

    private class QNameDeserializer extends FromStringDeserializer
    {

        public static final QNameDeserializer instance = new QNameDeserializer();
        private static final long serialVersionUID = 1L;

        protected volatile Object _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return _deserialize(s, deserializationcontext);
        }

        protected QName _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return QName.valueOf(s);
        }


        public QNameDeserializer()
        {
            super(javax/xml/namespace/QName);
        }
    }


    private class GregorianCalendarDeserializer extends StdScalarDeserializer
    {

        public static final GregorianCalendarDeserializer instance = new GregorianCalendarDeserializer();
        private static final long serialVersionUID = 1L;

        public volatile Object deserialize(l l, DeserializationContext deserializationcontext)
        {
            return deserialize(l, deserializationcontext);
        }

        public XMLGregorianCalendar deserialize(l l, DeserializationContext deserializationcontext)
        {
            java.util.Date date = _parseDate(l, deserializationcontext);
            if (date == null)
            {
                return null;
            }
            GregorianCalendar gregoriancalendar = new GregorianCalendar();
            gregoriancalendar.setTime(date);
            java.util.TimeZone timezone = deserializationcontext.getTimeZone();
            if (timezone != null)
            {
                gregoriancalendar.setTimeZone(timezone);
            }
            return CoreXMLDeserializers._dataTypeFactory.newXMLGregorianCalendar(gregoriancalendar);
        }


        public GregorianCalendarDeserializer()
        {
            super(javax/xml/datatype/XMLGregorianCalendar);
        }
    }


    private class DurationDeserializer extends FromStringDeserializer
    {

        public static final DurationDeserializer instance = new DurationDeserializer();
        private static final long serialVersionUID = 1L;

        protected volatile Object _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return _deserialize(s, deserializationcontext);
        }

        protected Duration _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return CoreXMLDeserializers._dataTypeFactory.newDuration(s);
        }


        public DurationDeserializer()
        {
            super(javax/xml/datatype/Duration);
        }
    }

}
