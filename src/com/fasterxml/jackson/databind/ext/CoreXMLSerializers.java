// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;

public class CoreXMLSerializers extends com.fasterxml.jackson.databind.ser.Serializers.Base
{

    public CoreXMLSerializers()
    {
    }

    public JsonSerializer findSerializer(SerializationConfig serializationconfig, JavaType javatype, BeanDescription beandescription)
    {
        Class class1 = javatype.getRawClass();
        if (javax/xml/datatype/Duration.isAssignableFrom(class1) || javax/xml/namespace/QName.isAssignableFrom(class1))
        {
            return ToStringSerializer.instance;
        }
        if (javax/xml/datatype/XMLGregorianCalendar.isAssignableFrom(class1))
        {
            return XMLGregorianCalendarSerializer.instance;
        } else
        {
            return null;
        }
    }

    private class XMLGregorianCalendarSerializer extends StdSerializer
    {

        public static final XMLGregorianCalendarSerializer instance = new XMLGregorianCalendarSerializer();

        public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
        {
            CalendarSerializer.instance.acceptJsonFormatVisitor(jsonformatvisitorwrapper, null);
        }

        public JsonNode getSchema(SerializerProvider serializerprovider, Type type)
        {
            return CalendarSerializer.instance.getSchema(serializerprovider, type);
        }

        public volatile void serialize(Object obj, h h, SerializerProvider serializerprovider)
        {
            serialize((XMLGregorianCalendar)obj, h, serializerprovider);
        }

        public void serialize(XMLGregorianCalendar xmlgregoriancalendar, h h, SerializerProvider serializerprovider)
        {
            CalendarSerializer.instance.serialize(xmlgregoriancalendar.toGregorianCalendar(), h, serializerprovider);
        }


        public XMLGregorianCalendarSerializer()
        {
            super(javax/xml/datatype/XMLGregorianCalendar);
        }
    }

}
