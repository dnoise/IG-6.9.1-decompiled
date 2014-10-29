// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.util.NameTransformer;

// Referenced classes of package com.fasterxml.jackson.databind:
//            JavaType, SerializerProvider

public abstract class JsonSerializer
    implements JsonFormatVisitable
{

    public JsonSerializer()
    {
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        if (jsonformatvisitorwrapper != null)
        {
            jsonformatvisitorwrapper.expectAnyFormat(javatype);
        }
    }

    public JsonSerializer getDelegatee()
    {
        return null;
    }

    public Class handledType()
    {
        return null;
    }

    public boolean isEmpty(Object obj)
    {
        return obj == null;
    }

    public boolean isUnwrappingSerializer()
    {
        return false;
    }

    public JsonSerializer replaceDelegatee(JsonSerializer jsonserializer)
    {
        throw new UnsupportedOperationException();
    }

    public abstract void serialize(Object obj, h h, SerializerProvider serializerprovider);

    public void serializeWithType(Object obj, h h, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        Class class1 = handledType();
        if (class1 == null)
        {
            class1 = obj.getClass();
        }
        throw new UnsupportedOperationException((new StringBuilder("Type id handling not implemented for type ")).append(class1.getName()).toString());
    }

    public JsonSerializer unwrappingSerializer(NameTransformer nametransformer)
    {
        return this;
    }

    public boolean usesObjectId()
    {
        return false;
    }
}
