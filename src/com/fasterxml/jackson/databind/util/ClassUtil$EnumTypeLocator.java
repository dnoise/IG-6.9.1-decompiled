// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;

import java.lang.reflect.Field;
import java.util.EnumMap;
import java.util.EnumSet;

class 
{

    static final enumSetTypeField instance = new <init>();
    private final Field enumMapTypeField = locateField(java/util/EnumMap, "elementType", java/lang/Class);
    private final Field enumSetTypeField = locateField(java/util/EnumSet, "elementType", java/lang/Class);

    private Object get(Object obj, Field field)
    {
        Object obj1;
        try
        {
            obj1 = field.get(obj);
        }
        catch (Exception exception)
        {
            throw new IllegalArgumentException(exception);
        }
        return obj1;
    }

    private static Field locateField(Class class1, String s, Class class2)
    {
        Field afield[];
        int i;
        int j;
        afield = class1.getDeclaredFields();
        i = afield.length;
        j = 0;
_L11:
        Field field;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        field = afield[j];
        if (!s.equals(field.getName()) || field.getType() != class2) goto _L2; else goto _L1
_L1:
        if (field != null) goto _L4; else goto _L3
_L3:
        int k;
        int l;
        Field field1;
        k = afield.length;
        l = 0;
        field1 = field;
_L12:
        if (l >= k) goto _L6; else goto _L5
_L5:
        Field field2 = afield[l];
        if (field2.getType() != class2) goto _L8; else goto _L7
_L7:
        if (field1 == null) goto _L10; else goto _L9
_L9:
        field = null;
_L14:
        return field;
_L2:
        j++;
          goto _L11
_L8:
        field2 = field1;
_L10:
        l++;
        field1 = field2;
          goto _L12
_L6:
        field = field1;
_L4:
        if (field == null) goto _L14; else goto _L13
_L13:
        try
        {
            field.setAccessible(true);
        }
        catch (Throwable throwable)
        {
            return field;
        }
        return field;
        field = null;
          goto _L1
    }

    public Class enumTypeFor(EnumMap enummap)
    {
        if (enumMapTypeField != null)
        {
            return (Class)get(enummap, enumMapTypeField);
        } else
        {
            throw new IllegalStateException("Can not figure out type for EnumMap (odd JDK platform?)");
        }
    }

    public Class enumTypeFor(EnumSet enumset)
    {
        if (enumSetTypeField != null)
        {
            return (Class)get(enumset, enumSetTypeField);
        } else
        {
            throw new IllegalStateException("Can not figure out type for EnumSet (odd JDK platform?)");
        }
    }


    private ()
    {
    }
}
