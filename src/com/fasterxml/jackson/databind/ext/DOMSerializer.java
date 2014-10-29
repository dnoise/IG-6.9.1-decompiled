// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import java.lang.reflect.Type;
import org.w3c.dom.Node;
import org.w3c.dom.bootstrap.DOMImplementationRegistry;
import org.w3c.dom.ls.DOMImplementationLS;
import org.w3c.dom.ls.LSSerializer;

public class DOMSerializer extends StdSerializer
{

    protected final DOMImplementationLS _domImpl;

    public DOMSerializer()
    {
        super(org/w3c/dom/Node);
        DOMImplementationRegistry domimplementationregistry;
        try
        {
            domimplementationregistry = DOMImplementationRegistry.newInstance();
        }
        catch (Exception exception)
        {
            throw new IllegalStateException((new StringBuilder("Could not instantiate DOMImplementationRegistry: ")).append(exception.getMessage()).toString(), exception);
        }
        _domImpl = (DOMImplementationLS)domimplementationregistry.getDOMImplementation("LS");
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        if (jsonformatvisitorwrapper != null)
        {
            jsonformatvisitorwrapper.expectAnyFormat(javatype);
        }
    }

    public JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        return createSchemaNode("string", true);
    }

    public volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serialize((Node)obj, h1, serializerprovider);
    }

    public void serialize(Node node, h h1, SerializerProvider serializerprovider)
    {
        if (_domImpl == null)
        {
            throw new IllegalStateException("Could not find DOM LS");
        } else
        {
            h1.writeString(_domImpl.createLSSerializer().writeToString(node));
            return;
        }
    }
}
