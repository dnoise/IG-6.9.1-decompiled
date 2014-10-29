// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializationConfig;
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
        objectnode.put("items", createSchemaNode("string"));
        return objectnode;
    }

    public final volatile boolean isEmpty(Object obj)
    {
        return isEmpty((byte[])obj);
    }

    public final boolean isEmpty(byte abyte0[])
    {
        return abyte0 == null || abyte0.length == 0;
    }

    public final volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serialize((byte[])obj, h1, serializerprovider);
    }

    public final void serialize(byte abyte0[], h h1, SerializerProvider serializerprovider)
    {
        h1.writeBinary(serializerprovider.getConfig().getBase64Variant(), abyte0, 0, abyte0.length);
    }

    public final volatile void serializeWithType(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        serializeWithType((byte[])obj, h1, serializerprovider, typeserializer);
    }

    public final void serializeWithType(byte abyte0[], h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        typeserializer.writeTypePrefixForScalar(abyte0, h1);
        h1.writeBinary(serializerprovider.getConfig().getBase64Variant(), abyte0, 0, abyte0.length);
        typeserializer.writeTypeSuffixForScalar(abyte0, h1);
    }

    public ()
    {
        super([B);
    }
}
