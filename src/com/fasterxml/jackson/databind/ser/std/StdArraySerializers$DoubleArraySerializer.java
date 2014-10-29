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
                jsonarrayformatvisitor.itemsFormat(JsonFormatTypes.NUMBER);
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
        objectnode.put("items", createSchemaNode("number"));
        return objectnode;
    }

    public final volatile boolean hasSingleElement(Object obj)
    {
        return hasSingleElement((double[])obj);
    }

    public final boolean hasSingleElement(double ad[])
    {
        return ad.length == 1;
    }

    public final volatile boolean isEmpty(Object obj)
    {
        return isEmpty((double[])obj);
    }

    public final boolean isEmpty(double ad[])
    {
        return ad == null || ad.length == 0;
    }

    public final volatile void serializeContents(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serializeContents((double[])obj, h1, serializerprovider);
    }

    public final void serializeContents(double ad[], h h1, SerializerProvider serializerprovider)
    {
        int i = 0;
        for (int j = ad.length; i < j; i++)
        {
            h1.writeNumber(ad[i]);
        }

    }

    static 
    {
        VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(Double.TYPE);
    }

    public ()
    {
        super([D, null);
    }
}
