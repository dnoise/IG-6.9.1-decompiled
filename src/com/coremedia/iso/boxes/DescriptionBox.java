// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class DescriptionBox extends AbstractFullBox
{

    public static final String TYPE = "dscp";
    private String description;
    private String language;

    public DescriptionBox()
    {
        super("dscp");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        language = e.k(bytebuffer);
        description = e.g(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.a(bytebuffer, language);
        bytebuffer.put(k.a(description));
        bytebuffer.put((byte)0);
    }

    protected long getContentSize()
    {
        return (long)(7 + k.b(description));
    }

    public String getDescription()
    {
        return description;
    }

    public String getLanguage()
    {
        return language;
    }

    public void setDescription(String s)
    {
        description = s;
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public String toString()
    {
        return (new StringBuilder("DescriptionBox[language=")).append(getLanguage()).append(";description=").append(getDescription()).append("]").toString();
    }
}
