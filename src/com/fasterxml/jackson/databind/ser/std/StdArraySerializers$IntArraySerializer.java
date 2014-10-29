// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.reflect.Type;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            ArraySerializerBase

public final class  extends ArraySerializerBase
{

    private static final JavaType VALUE_TYPE;

    public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
    {
        return this;
    }

    public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        if (jsonformatvisitorwrapper != null)
        {
            JsonArrayFormatVisitor jsonarrayformatvisitor = jsonformatvisitorwrapper.expectArrayFormat(javatype);
            if (jsonarrayformatvisitor != null)
            {
                jsonarrayformatvisitor.itemsFormat(JsonFormatTypes.INTEGER);
            }
        }
    }

    public final JsonSerializer getContentSerializer()
    {
        return null;
    }

    public final JavaType getContentType()
    {
        return VALUE_TYPE;
    }

    public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        ObjectNode objectnode = createSchemaNode("array", true);
        objectnode.put("items", createSchemaNode("integer"));
        return objectnode;
    }

    public final volatile boolean hasSingleElement(Object obj)
    {
        return hasSingleElement((int[])obj);
    }

    public final boolean hasSingleElement(int ai[])
    {
        return ai.length == 1;
    }

    public final volatile boolean isEmpty(Object obj)
    {
        return isEmpty((int[])obj);
    }

    public final boolean isEmpty(int ai[])
    {
        return ai == null || ai.length == 0;
    }

    public final volatile void serializeContents(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serializeContents((int[])obj, h1, serializerprovider);
    }

    public final void serializeContents(int ai[], h h1, SerializerProvider serializerprovider)
    {
        int i = 0;
        for (int j = ai.length; i < j; i++)
        {
            h1.writeNumber(ai[i]);
        }

    }

    static 
    {
        VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(Integer.TYPE);
    }

    public ()
    {
        super([I, null);
    }
}
