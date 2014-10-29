// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.a.g;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import java.lang.reflect.Type;

public final class FailingSerializer extends StdSerializer
{

    final String _msg;

    public FailingSerializer(String s)
    {
        super(java/lang/Object);
        _msg = s;
    }

    public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
    }

    public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        return null;
    }

    public final void serialize(Object obj, h h, SerializerProvider serializerprovider)
    {
        throw new g(_msg);
    }
}
