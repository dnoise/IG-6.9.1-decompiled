// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializerProvider;

// Referenced classes of package com.fasterxml.jackson.databind.jsonFormatVisitors:
//            JsonArrayFormatVisitor, JsonFormatTypes, JsonFormatVisitable

public class _provider
    implements JsonArrayFormatVisitor
{

    protected SerializerProvider _provider;

    public SerializerProvider getProvider()
    {
        return _provider;
    }

    public void itemsFormat(JsonFormatTypes jsonformattypes)
    {
    }

    public void itemsFormat(JsonFormatVisitable jsonformatvisitable, JavaType javatype)
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
