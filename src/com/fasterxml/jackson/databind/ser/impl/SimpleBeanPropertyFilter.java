// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.BeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public abstract class SimpleBeanPropertyFilter
    implements BeanPropertyFilter
{

    protected SimpleBeanPropertyFilter()
    {
    }

    public static SimpleBeanPropertyFilter filterOutAllExcept(Set set)
    {
        return new FilterExceptFilter(set);
    }

    public static transient SimpleBeanPropertyFilter filterOutAllExcept(String as[])
    {
        HashSet hashset = new HashSet(as.length);
        Collections.addAll(hashset, as);
        return new FilterExceptFilter(hashset);
    }

    public static SimpleBeanPropertyFilter serializeAllExcept(Set set)
    {
        return new SerializeExceptFilter(set);
    }

    public static transient SimpleBeanPropertyFilter serializeAllExcept(String as[])
    {
        HashSet hashset = new HashSet(as.length);
        Collections.addAll(hashset, as);
        return new SerializeExceptFilter(hashset);
    }

    public void depositSchemaProperty(BeanPropertyWriter beanpropertywriter, JsonObjectFormatVisitor jsonobjectformatvisitor, SerializerProvider serializerprovider)
    {
        if (include(beanpropertywriter))
        {
            beanpropertywriter.depositSchemaProperty(jsonobjectformatvisitor);
        }
    }

    public void depositSchemaProperty(BeanPropertyWriter beanpropertywriter, ObjectNode objectnode, SerializerProvider serializerprovider)
    {
        if (include(beanpropertywriter))
        {
            beanpropertywriter.depositSchemaProperty(objectnode, serializerprovider);
        }
    }

    protected abstract boolean include(BeanPropertyWriter beanpropertywriter);

    public void serializeAsField(Object obj, h h, SerializerProvider serializerprovider, BeanPropertyWriter beanpropertywriter)
    {
        if (include(beanpropertywriter))
        {
            beanpropertywriter.serializeAsField(obj, h, serializerprovider);
        }
    }

    private class FilterExceptFilter extends SimpleBeanPropertyFilter
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        protected final Set _propertiesToInclude;

        protected boolean include(BeanPropertyWriter beanpropertywriter)
        {
            return _propertiesToInclude.contains(beanpropertywriter.getName());
        }

        public FilterExceptFilter(Set set)
        {
            _propertiesToInclude = set;
        }
    }


    private class SerializeExceptFilter extends SimpleBeanPropertyFilter
    {

        protected final Set _propertiesToExclude;

        protected boolean include(BeanPropertyWriter beanpropertywriter)
        {
            return !_propertiesToExclude.contains(beanpropertywriter.getName());
        }

        public SerializeExceptFilter(Set set)
        {
            _propertiesToExclude = set;
        }
    }

}
