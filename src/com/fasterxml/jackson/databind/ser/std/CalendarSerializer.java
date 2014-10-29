// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.text.DateFormat;
import java.util.Calendar;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            DateTimeSerializerBase

public class CalendarSerializer extends DateTimeSerializerBase
{

    public static final CalendarSerializer instance = new CalendarSerializer();

    public CalendarSerializer()
    {
        this(false, null);
    }

    public CalendarSerializer(boolean flag, DateFormat dateformat)
    {
        super(java/util/Calendar, flag, dateformat);
    }

    protected volatile long _timestamp(Object obj)
    {
        return _timestamp((Calendar)obj);
    }

    protected long _timestamp(Calendar calendar)
    {
        if (calendar == null)
        {
            return 0L;
        } else
        {
            return calendar.getTimeInMillis();
        }
    }

    public volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serialize((Calendar)obj, h1, serializerprovider);
    }

    public void serialize(Calendar calendar, h h1, SerializerProvider serializerprovider)
    {
        if (_useTimestamp)
        {
            h1.writeNumber(_timestamp(calendar));
            return;
        }
        if (_customFormat != null)
        {
            synchronized (_customFormat)
            {
                h1.writeString(_customFormat.format(calendar));
            }
            return;
        } else
        {
            serializerprovider.defaultSerializeDateValue(calendar.getTime(), h1);
            return;
        }
    }

    public CalendarSerializer withFormat(boolean flag, DateFormat dateformat)
    {
        if (flag)
        {
            return new CalendarSerializer(true, null);
        } else
        {
            return new CalendarSerializer(false, dateformat);
        }
    }

    public volatile DateTimeSerializerBase withFormat(boolean flag, DateFormat dateformat)
    {
        return withFormat(flag, dateformat);
    }

}
