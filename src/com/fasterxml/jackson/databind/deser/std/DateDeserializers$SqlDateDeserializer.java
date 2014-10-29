// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import java.sql.Date;
import java.text.DateFormat;

public class r extends r
{

    public static final <init> instance = new <init>();

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

    protected volatile r withDateFormat(DateFormat dateformat, String s)
    {
        return withDateFormat(dateformat, s);
    }

    protected withDateFormat withDateFormat(DateFormat dateformat, String s)
    {
        return new <init>(this, dateformat, s);
    }


    public r()
    {
        super(java/sql/Date);
    }

    public r(r r, DateFormat dateformat, String s)
    {
        super(r, dateformat, s);
    }
}
