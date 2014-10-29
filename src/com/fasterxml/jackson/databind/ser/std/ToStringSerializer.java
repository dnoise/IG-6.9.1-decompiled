// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.lang.reflect.Type;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdSerializer

public class ToStringSerializer extends StdSerializer
{

    public static final ToStringSerializer instance = new ToStringSerializer();

    public ToStringSerializer()
    {
        super(java/lang/Object);
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        if (jsonformatvisitorwrapper != null)
        {
            jsonformatvisitorwrapper.expectStringFormat(javatype);
        }
    }

    public JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        return createSchemaNode("string", true);
    }

    public boolean isEmpty(Object obj)
    {
        String s;
        if (obj != null)
        {
            if ((s = obj.toString()) != null && s.length() != 0)
            {
                return false;
            }
        }
        return true;
    }

    public void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        h1.writeString(obj.toString());
    }

    public void serializeWithType(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        typeserializer.writeTypePrefixForScalar(obj, h1);
        serialize(obj, h1, serializerprovider);
        typeserializer.writeTypeSuffixForScalar(obj, h1);
    }

}
