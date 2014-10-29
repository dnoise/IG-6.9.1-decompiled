// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializerProvider;

// Referenced classes of package com.fasterxml.jackson.databind.jsonFormatVisitors:
//            JsonObjectFormatVisitor, JsonFormatVisitable

public class _provider
    implements JsonObjectFormatVisitor
{

    protected SerializerProvider _provider;

    public SerializerProvider getProvider()
    {
        return _provider;
    }

    public void optionalProperty(BeanProperty beanproperty)
    {
    }

    public void optionalProperty(String s)
    {
    }

    public void optionalProperty(String s, JsonFormatVisitable jsonformatvisitable, JavaType javatype)
    {
    }

    public void property(BeanProperty beanproperty)
    {
    }

    public void property(String s)
    {
    }

    public void property(String s, JsonFormatVisitable jsonformatvisitable, JavaType javatype)
    {
    }

    public void setProvider(SerializerProvider serializerprovider)
    {
        _provider = serializerprovider;
    }

    public ()
    {
    }

    public (SerializerProvider serializerprovider)
    {
        _provider = serializerprovider;
    }
}
