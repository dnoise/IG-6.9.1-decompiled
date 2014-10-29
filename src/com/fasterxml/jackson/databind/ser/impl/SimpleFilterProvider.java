// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.databind.ser.BeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.FilterProvider;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class SimpleFilterProvider extends FilterProvider
    implements Serializable
{

    private static final long serialVersionUID = 0xd8c9d3897acbc2fcL;
    protected boolean _cfgFailOnUnknownId;
    protected BeanPropertyFilter _defaultFilter;
    protected final Map _filtersById;

    public SimpleFilterProvider()
    {
        this(((Map) (new HashMap())));
    }

    public SimpleFilterProvider(Map map)
    {
        _cfgFailOnUnknownId = true;
        _filtersById = map;
    }

    public SimpleFilterProvider addFilter(String s, BeanPropertyFilter beanpropertyfilter)
    {
        _filtersById.put(s, beanpropertyfilter);
        return this;
    }

    public BeanPropertyFilter findFilter(Object obj)
    {
        BeanPropertyFilter beanpropertyfilter = (BeanPropertyFilter)_filtersById.get(obj);
        if (beanpropertyfilter == null)
        {
            beanpropertyfilter = _defaultFilter;
            if (beanpropertyfilter == null && _cfgFailOnUnknownId)
            {
                throw new IllegalArgumentException((new StringBuilder("No filter configured with id '")).append(obj).append("' (type ").append(obj.getClass().getName()).append(")").toString());
            }
        }
        return beanpropertyfilter;
    }

    public BeanPropertyFilter getDefaultFilter()
    {
        return _defaultFilter;
    }

    public BeanPropertyFilter removeFilter(String s)
    {
        return (BeanPropertyFilter)_filtersById.remove(s);
    }

    public SimpleFilterProvider setDefaultFilter(BeanPropertyFilter beanpropertyfilter)
    {
        _defaultFilter = beanpropertyfilter;
        return this;
    }

    public SimpleFilterProvider setFailOnUnknownId(boolean flag)
    {
        _cfgFailOnUnknownId = flag;
        return this;
    }

    public boolean willFailOnUnknownId()
    {
        return _cfgFailOnUnknownId;
    }
}
