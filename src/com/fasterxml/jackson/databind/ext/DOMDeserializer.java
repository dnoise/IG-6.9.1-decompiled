// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.std.FromStringDeserializer;
import java.io.StringReader;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

public abstract class DOMDeserializer extends FromStringDeserializer
{

    private static final DocumentBuilderFactory _parserFactory;
    private static final long serialVersionUID = 1L;

    protected DOMDeserializer(Class class1)
    {
        super(class1);
    }

    public abstract Object _deserialize(String s, DeserializationContext deserializationcontext);

    protected final Document parse(String s)
    {
        Document document;
        try
        {
            document = _parserFactory.newDocumentBuilder().parse(new InputSource(new StringReader(s)));
        }
        catch (Exception exception)
        {
            throw new IllegalArgumentException((new StringBuilder("Failed to parse JSON String as XML: ")).append(exception.getMessage()).toString(), exception);
        }
        return document;
    }

    static 
    {
        DocumentBuilderFactory documentbuilderfactory = DocumentBuilderFactory.newInstance();
        _parserFactory = documentbuilderfactory;
        documentbuilderfactory.setNamespaceAware(true);
    }
}
