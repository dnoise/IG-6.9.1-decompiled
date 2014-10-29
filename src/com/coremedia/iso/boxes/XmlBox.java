// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class XmlBox extends AbstractFullBox
{

    public static final String TYPE = "xml ";
    String xml;

    public XmlBox()
    {
        super("xml ");
        xml = "";
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        xml = e.a(bytebuffer, bytebuffer.remaining());
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        bytebuffer.put(k.a(xml));
    }

    protected long getContentSize()
    {
        return (long)(4 + k.b(xml));
    }

    public String getXml()
    {
        return xml;
    }

    public void setXml(String s)
    {
        xml = s;
    }

    public String toString()
    {
        return (new StringBuilder("XmlBox{xml='")).append(xml).append('\'').append('}').toString();
    }
}
