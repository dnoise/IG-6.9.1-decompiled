// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import java.util.Calendar;
import java.util.Date;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdKeySerializer

public class StdKeySerializers
{

    protected static final JsonSerializer DEFAULT_KEY_SERIALIZER = new StdKeySerializer();
    protected static final JsonSerializer DEFAULT_STRING_SERIALIZER = new StringKeySerializer();

    private StdKeySerializers()
    {
    }

    public static JsonSerializer getStdKeySerializer(JavaType javatype)
    {
        if (javatype == null)
        {
            return DEFAULT_KEY_SERIALIZER;
        }
        Class class1 = javatype.getRawClass();
        if (class1 == java/lang/String)
        {
            return DEFAULT_STRING_SERIALIZER;
        }
        if (class1 == java/lang/Object)
        {
            return DEFAULT_KEY_SERIALIZER;
        }
        if (java/util/Date.isAssignableFrom(class1))
        {
            return DateKeySerializer.instance;
        }
        if (java/util/Calendar.isAssignableFrom(class1))
        {
            return CalendarKeySerializer.instance;
        } else
        {
            return DEFAULT_KEY_SERIALIZER;
        }
    }


    private class DateKeySerializer extends StdSerializer
    {

        protected static final JsonSerializer instance = new DateKeySerializer();

        public volatile void serialize(Object obj, h h, SerializerProvider serializerprovider)
        {
            serialize((Date)obj, h, serializerprovider);
        }

        public void serialize(Date date, h h, SerializerProvider serializerprovider)
        {
            serializerprovider.defaultSerializeDateKey(date, h);
        }


        public DateKeySerializer()
        {
            super(java/util/Date);
        }
    }


    private class CalendarKeySerializer extends StdSerializer
    {

        protected static final JsonSerializer instance = new CalendarKeySerializer();

        public volatile void serialize(Object obj, h h, SerializerProvider serializerprovider)
        {
            serialize((Calendar)obj, h, serializerprovider);
        }

        public void serialize(Calendar calendar, h h, SerializerProvider serializerprovider)
        {
            serializerprovider.defaultSerializeDateKey(calendar.getTimeInMillis(), h);
        }


        public CalendarKeySerializer()
        {
            super(java/util/Calendar);
        }
    }


    private class StringKeySerializer extends StdSerializer
    {

        public volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
        {
            serialize((String)obj, h1, serializerprovider);
        }

        public void serialize(String s, h h1, SerializerProvider serializerprovider)
        {
            h1.writeFieldName(s);
        }

        public StringKeySerializer()
        {
            super(java/lang/String);
        }
    }

}
