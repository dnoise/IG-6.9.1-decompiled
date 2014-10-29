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
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonNumberFormatVisitor;
import java.lang.reflect.Type;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            NonTypedScalarSerializerBase

public final class  extends NonTypedScalarSerializerBase
{

    static final serialize instance = new <init>();

    public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        JsonNumberFormatVisitor jsonnumberformatvisitor = jsonformatvisitorwrapper.expectNumberFormat(javatype);
        if (jsonnumberformatvisitor != null)
        {
            jsonnumberformatvisitor.numberType$351723a9(o.e);
        }
    }

    public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        return createSchemaNode("number", true);
    }

    public final void serialize(Double double1, h h1, SerializerProvider serializerprovider)
    {
        h1.writeNumber(double1.doubleValue());
    }

    public final volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serialize((Double)obj, h1, serializerprovider);
    }


    public ()
    {
        super(java/lang/Double);
    }
}
