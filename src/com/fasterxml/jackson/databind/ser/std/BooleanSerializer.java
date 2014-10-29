// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import java.lang.reflect.Type;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            NonTypedScalarSerializerBase

public final class BooleanSerializer extends NonTypedScalarSerializerBase
{

    final boolean _forPrimitive;

    public BooleanSerializer(boolean flag)
    {
        super(java/lang/Boolean);
        _forPrimitive = flag;
    }

    public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        if (jsonformatvisitorwrapper != null)
        {
            jsonformatvisitorwrapper.expectBooleanFormat(javatype);
        }
    }

    public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        boolean flag;
        if (!_forPrimitive)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return createSchemaNode("boolean", flag);
    }

    public final void serialize(Boolean boolean1, h h1, SerializerProvider serializerprovider)
    {
        h1.writeBoolean(boolean1.booleanValue());
    }

    public final volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serialize((Boolean)obj, h1, serializerprovider);
    }
}
