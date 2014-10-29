// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import java.util.Set;

// Referenced classes of package com.fasterxml.jackson.databind.ser.impl:
//            SimpleBeanPropertyFilter

public class _propertiesToExclude extends SimpleBeanPropertyFilter
{

    protected final Set _propertiesToExclude;

    protected boolean include(BeanPropertyWriter beanpropertywriter)
    {
        return !_propertiesToExclude.contains(beanpropertywriter.getName());
    }

    public (Set set)
    {
        _propertiesToExclude = set;
    }
}
