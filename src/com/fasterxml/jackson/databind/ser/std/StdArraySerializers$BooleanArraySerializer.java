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

    private static final JavaType VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(java/lang/Boolean);

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
                jsonarrayformatvisitor.itemsFormat(JsonFormatTypes.BOOLEAN);
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
        objectnode.put("items", createSchemaNode("boolean"));
        return objectnode;
    }

    public final volatile boolean hasSingleElement(Object obj)
    {
        return hasSingleElement((boolean[])obj);
    }

    public final boolean hasSingleElement(boolean aflag[])
    {
        return aflag.length == 1;
    }

    public final volatile boolean isEmpty(Object obj)
    {
        return isEmpty((boolean[])obj);
    }

    public final boolean isEmpty(boolean aflag[])
    {
        return aflag == null || aflag.length == 0;
    }

    public final volatile void serializeContents(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serializeContents((boolean[])obj, h1, serializerprovider);
    }

    public final void serializeContents(boolean aflag[], h h1, SerializerProvider serializerprovider)
    {
        int i = 0;
        for (int j = aflag.length; i < j; i++)
        {
            h1.writeBoolean(aflag[i]);
        }

    }


    public ()
    {
        super([Z, null);
    }
}
