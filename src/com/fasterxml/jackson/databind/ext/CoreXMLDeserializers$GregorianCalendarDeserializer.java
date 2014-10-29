// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer;
import java.util.GregorianCalendar;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

// Referenced classes of package com.fasterxml.jackson.databind.ext:
//            CoreXMLDeserializers

public class  extends StdScalarDeserializer
{

    public static final _parseDate instance = new <init>();
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


    public ()
    {
        super(javax/xml/datatype/XMLGregorianCalendar);
    }
}
