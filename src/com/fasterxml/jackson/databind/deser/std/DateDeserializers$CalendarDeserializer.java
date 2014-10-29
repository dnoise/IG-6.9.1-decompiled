// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class _calendarClass extends 
{

    public static final withDateFormat gregorianInstance = new <init>(java/util/GregorianCalendar);
    public static final <init> instance = new <init>();
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
        Date date = _parseDate(l, deserializationcontext);
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
        java.util.TimeZone timezone;
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

    protected _calendarClass withDateFormat(DateFormat dateformat, String s)
    {
        return new <init>(this, dateformat, s);
    }

    protected volatile  withDateFormat(DateFormat dateformat, String s)
    {
        return withDateFormat(dateformat, s);
    }


    public ()
    {
        super(java/util/Calendar);
        _calendarClass = null;
    }

    public (_calendarClass _pcalendarclass, DateFormat dateformat, String s)
    {
        super(_pcalendarclass, dateformat, s);
        _calendarClass = _pcalendarclass._calendarClass;
    }

    public _calendarClass(Class class1)
    {
        super(class1);
        _calendarClass = class1;
    }
}
