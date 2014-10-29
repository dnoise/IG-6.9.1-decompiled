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
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.lang.reflect.Type;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdSerializer

public class TokenBufferSerializer extends StdSerializer
{

    public TokenBufferSerializer()
    {
        super(com/fasterxml/jackson/databind/util/TokenBuffer);
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        jsonformatvisitorwrapper.expectAnyFormat(javatype);
    }

    public JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        return createSchemaNode("any", true);
    }

    public void serialize(TokenBuffer tokenbuffer, h h, SerializerProvider serializerprovider)
    {
        tokenbuffer.serialize(h);
    }

    public volatile void serialize(Object obj, h h, SerializerProvider serializerprovider)
    {
        serialize((TokenBuffer)obj, h, serializerprovider);
    }

    public final void serializeWithType(TokenBuffer tokenbuffer, h h, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        typeserializer.writeTypePrefixForScalar(tokenbuffer, h);
        serialize(tokenbuffer, h, serializerprovider);
        typeserializer.writeTypeSuffixForScalar(tokenbuffer, h);
    }

    public volatile void serializeWithType(Object obj, h h, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        serializeWithType((TokenBuffer)obj, h, serializerprovider, typeserializer);
    }
}
