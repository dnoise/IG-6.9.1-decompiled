// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonStringFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonValueFormat;
import java.lang.reflect.Type;
import java.sql.Time;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdScalarSerializer

public class SqlTimeSerializer extends StdScalarSerializer
{

    public SqlTimeSerializer()
    {
        super(java/sql/Time);
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        JsonStringFormatVisitor jsonstringformatvisitor;
        if (jsonformatvisitorwrapper == null)
        {
            jsonstringformatvisitor = null;
        } else
        {
            jsonstringformatvisitor = jsonformatvisitorwrapper.expectStringFormat(javatype);
        }
        if (jsonstringformatvisitor != null)
        {
            jsonstringformatvisitor.format(JsonValueFormat.DATE_TIME);
        }
    }

    public JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        return createSchemaNode("string", true);
    }

    public volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serialize((Time)obj, h1, serializerprovider);
    }

    public void serialize(Time time, h h1, SerializerProvider serializerprovider)
    {
        h1.writeString(time.toString());
    }
}
