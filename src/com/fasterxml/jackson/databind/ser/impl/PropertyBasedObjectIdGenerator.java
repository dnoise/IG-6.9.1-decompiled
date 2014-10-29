// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;

public class PropertyBasedObjectIdGenerator extends com.fasterxml.jackson.annotation.ObjectIdGenerators.PropertyGenerator
{

    private static final long serialVersionUID = 1L;
    protected final BeanPropertyWriter _property;

    public PropertyBasedObjectIdGenerator(ObjectIdInfo objectidinfo, BeanPropertyWriter beanpropertywriter)
    {
        this(objectidinfo.getScope(), beanpropertywriter);
    }

    protected PropertyBasedObjectIdGenerator(Class class1, BeanPropertyWriter beanpropertywriter)
    {
        super(class1);
        _property = beanpropertywriter;
    }

    public boolean canUseFor(ObjectIdGenerator objectidgenerator)
    {
        Class class1 = objectidgenerator.getClass();
        Class class2 = getClass();
        boolean flag = false;
        if (class1 == class2)
        {
            PropertyBasedObjectIdGenerator propertybasedobjectidgenerator = (PropertyBasedObjectIdGenerator)objectidgenerator;
            Class class3 = propertybasedobjectidgenerator.getScope();
            Class class4 = _scope;
            flag = false;
            if (class3 == class4)
            {
                BeanPropertyWriter beanpropertywriter = propertybasedobjectidgenerator._property;
                BeanPropertyWriter beanpropertywriter1 = _property;
                flag = false;
                if (beanpropertywriter == beanpropertywriter1)
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    public ObjectIdGenerator forScope(Class class1)
    {
        if (class1 == _scope)
        {
            return this;
        } else
        {
            return new PropertyBasedObjectIdGenerator(class1, _property);
        }
    }

    public Object generateId(Object obj)
    {
        Object obj1;
        try
        {
            obj1 = _property.get(obj);
        }
        catch (RuntimeException runtimeexception)
        {
            throw runtimeexception;
        }
        catch (Exception exception)
        {
            throw new IllegalStateException((new StringBuilder("Problem accessing property '")).append(_property.getName()).append("': ").append(exception.getMessage()).toString(), exception);
        }
        return obj1;
    }

    public com.fasterxml.jackson.annotation.ObjectIdGenerator.IdKey key(Object obj)
    {
        return new com.fasterxml.jackson.annotation.ObjectIdGenerator.IdKey(getClass(), _scope, obj);
    }

    public ObjectIdGenerator newForSerialization(Object obj)
    {
        return this;
    }
}
