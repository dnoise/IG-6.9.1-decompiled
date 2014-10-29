// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;

import java.lang.reflect.Array;

final class val.defaultValue
{

    final Object val$defaultValue;
    final Class val$defaultValueType;
    final int val$length;

    public final boolean equals(Object obj)
    {
        if (obj != this) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        flag = false;
        if (obj == null) goto _L4; else goto _L3
_L3:
        Class class1;
        Class class2;
        class1 = obj.getClass();
        class2 = val$defaultValueType;
        flag = false;
        if (class1 != class2) goto _L4; else goto _L5
_L5:
        int i;
        int j;
        i = Array.getLength(obj);
        j = val$length;
        flag = false;
        if (i != j) goto _L4; else goto _L6
_L6:
        int k = 0;
_L10:
        if (k >= val$length) goto _L8; else goto _L7
_L7:
        boolean flag1;
        Object obj1 = Array.get(val$defaultValue, k);
        Object obj2 = Array.get(obj, k);
        if (obj1 == obj2 || obj1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        flag1 = obj1.equals(obj2);
        flag = false;
        if (!flag1) goto _L4; else goto _L9
_L9:
        k++;
          goto _L10
_L8:
        return true;
    }

    _cls9()
    {
        val$defaultValueType = class1;
        val$length = i;
        val$defaultValue = obj;
        super();
    }
}
