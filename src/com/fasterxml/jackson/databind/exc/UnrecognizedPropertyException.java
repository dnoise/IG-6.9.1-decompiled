// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.exc;

import com.fasterxml.jackson.a.j;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.JsonMappingException;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

public class UnrecognizedPropertyException extends JsonMappingException
{

    private static final int MAX_DESC_LENGTH = 200;
    private static final long serialVersionUID = 1L;
    protected transient String _propertiesAsString;
    protected final Collection _propertyIds;
    protected final Class _referringClass;
    protected final String _unrecognizedPropertyName;

    public UnrecognizedPropertyException(String s, j j, Class class1, String s1, Collection collection)
    {
        super(s, j);
        _referringClass = class1;
        _unrecognizedPropertyName = s1;
        _propertyIds = collection;
    }

    public static UnrecognizedPropertyException from(l l1, Object obj, String s, Collection collection)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException();
        }
        Class class1;
        UnrecognizedPropertyException unrecognizedpropertyexception;
        if (obj instanceof Class)
        {
            class1 = (Class)obj;
        } else
        {
            class1 = obj.getClass();
        }
        unrecognizedpropertyexception = new UnrecognizedPropertyException((new StringBuilder("Unrecognized field \"")).append(s).append("\" (class ").append(class1.getName()).append("), not marked as ignorable").toString(), l1.getCurrentLocation(), class1, s, collection);
        unrecognizedpropertyexception.prependPath(obj, s);
        return unrecognizedpropertyexception;
    }

    public Collection getKnownPropertyIds()
    {
        if (_propertyIds == null)
        {
            return null;
        } else
        {
            return Collections.unmodifiableCollection(_propertyIds);
        }
    }

    public String getMessageSuffix()
    {
        String s = _propertiesAsString;
        if (s != null || _propertyIds == null) goto _L2; else goto _L1
_L1:
        StringBuilder stringbuilder;
        int i;
        stringbuilder = new StringBuilder(100);
        i = _propertyIds.size();
        if (i != 1) goto _L4; else goto _L3
_L3:
        stringbuilder.append(" (one known property: \"");
        stringbuilder.append(String.valueOf(_propertyIds.iterator().next()));
        stringbuilder.append('"');
_L6:
        stringbuilder.append("])");
        s = stringbuilder.toString();
        _propertiesAsString = s;
_L2:
        return s;
_L4:
        stringbuilder.append(" (").append(i).append(" known properties: ");
        Iterator iterator = _propertyIds.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            stringbuilder.append(", \"");
            stringbuilder.append(String.valueOf(iterator.next()));
            stringbuilder.append('"');
        } while (stringbuilder.length() <= 200);
        stringbuilder.append(" [truncated]");
        if (true) goto _L6; else goto _L5
_L5:
    }

    public Class getReferringClass()
    {
        return _referringClass;
    }

    public String getUnrecognizedPropertyName()
    {
        return _unrecognizedPropertyName;
    }
}
