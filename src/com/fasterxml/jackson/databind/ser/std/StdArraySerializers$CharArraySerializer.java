// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.ObjectNode;
import java.lang.reflect.Type;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdSerializer

public final class  extends StdSerializer
{

    private final void _writeArrayContents(h h1, char ac[])
    {
        int i = 0;
        for (int j = ac.length; i < j; i++)
        {
            h1.writeString(ac, i, 1);
        }

    }

    public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        if (jsonformatvisitorwrapper != null)
        {
            JsonArrayFormatVisitor jsonarrayformatvisitor = jsonformatvisitorwrapper.expectArrayFormat(javatype);
            if (jsonarrayformatvisitor != null)
            {
                jsonarrayformatvisitor.itemsFormat(JsonFormatTypes.STRING);
            }
        }
    }

    public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        ObjectNode objectnode = createSchemaNode("array", true);
        ObjectNode objectnode1 = createSchemaNode("string");
        objectnode1.put("type", "string");
        objectnode.put("items", objectnode1);
        return objectnode;
    }

    public final volatile boolean isEmpty(Object obj)
    {
        return isEmpty((char[])obj);
    }

    public final boolean isEmpty(char ac[])
    {
        return ac == null || ac.length == 0;
    }

    public final volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serialize((char[])obj, h1, serializerprovider);
    }

    public final void serialize(char ac[], h h1, SerializerProvider serializerprovider)
    {
        if (serializerprovider.isEnabled(SerializationFeature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS))
        {
            h1.writeStartArray();
            _writeArrayContents(h1, ac);
            h1.writeEndArray();
            return;
        } else
        {
            h1.writeString(ac, 0, ac.length);
            return;
        }
    }

    public final volatile void serializeWithType(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        serializeWithType((char[])obj, h1, serializerprovider, typeserializer);
    }

    public final void serializeWithType(char ac[], h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        if (serializerprovider.isEnabled(SerializationFeature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS))
        {
            typeserializer.writeTypePrefixForArray(ac, h1);
            _writeArrayContents(h1, ac);
            typeserializer.writeTypeSuffixForArray(ac, h1);
            return;
        } else
        {
            typeserializer.writeTypePrefixForScalar(ac, h1);
            h1.writeString(ac, 0, ac.length);
            typeserializer.writeTypeSuffixForScalar(ac, h1);
            return;
        }
    }

    public ()
    {
        super([C);
    }
}
