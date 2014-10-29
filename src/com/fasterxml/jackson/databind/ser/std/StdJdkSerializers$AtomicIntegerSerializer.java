// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.o;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonIntegerFormatVisitor;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdScalarSerializer

public final class  extends StdScalarSerializer
{

    public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        JsonIntegerFormatVisitor jsonintegerformatvisitor = jsonformatvisitorwrapper.expectIntegerFormat(javatype);
        if (jsonintegerformatvisitor != null)
        {
            jsonintegerformatvisitor.numberType$351723a9(o.a);
        }
    }

    public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        return createSchemaNode("integer", true);
    }

    public final volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serialize((AtomicInteger)obj, h1, serializerprovider);
    }

    public final void serialize(AtomicInteger atomicinteger, h h1, SerializerProvider serializerprovider)
    {
        h1.writeNumber(atomicinteger.get());
    }

    public ()
    {
        super(java/util/concurrent/atomic/AtomicInteger, false);
    }
}
