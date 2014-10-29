// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.ser.std.CalendarSerializer;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import java.lang.reflect.Type;
import javax.xml.datatype.XMLGregorianCalendar;

public class  extends StdSerializer
{

    public static final serialize instance = new <init>();

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


    public ()
    {
        super(javax/xml/datatype/XMLGregorianCalendar);
    }
}
