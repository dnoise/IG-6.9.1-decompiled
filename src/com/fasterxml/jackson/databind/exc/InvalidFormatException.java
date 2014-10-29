// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.exc;

import com.fasterxml.jackson.a.j;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.JsonMappingException;

public class InvalidFormatException extends JsonMappingException
{

    private static final long serialVersionUID = 1L;
    protected final Class _targetType;
    protected final Object _value;

    public InvalidFormatException(String s, j j, Object obj, Class class1)
    {
        super(s, j);
        _value = obj;
        _targetType = class1;
    }

    public InvalidFormatException(String s, Object obj, Class class1)
    {
        super(s);
        _value = obj;
        _targetType = class1;
    }

    public static InvalidFormatException from(l l1, String s, Object obj, Class class1)
    {
        return new InvalidFormatException(s, l1.getTokenLocation(), obj, class1);
    }

    public Class getTargetType()
    {
        return _targetType;
    }

    public Object getValue()
    {
        return _value;
    }
}
