// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.vodafone;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class ContentDistributorIdBox extends AbstractFullBox
{

    public static final String TYPE = "cdis";
    private String contentDistributorId;
    private String language;

    public ContentDistributorIdBox()
    {
        super("cdis");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        language = e.k(bytebuffer);
        contentDistributorId = e.g(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.a(bytebuffer, language);
        bytebuffer.put(k.a(contentDistributorId));
        bytebuffer.put((byte)0);
    }

    public String getContentDistributorId()
    {
        return contentDistributorId;
    }

    protected long getContentSize()
    {
        return (long)(5 + (2 + k.b(contentDistributorId)));
    }

    public String getLanguage()
    {
        return language;
    }

    public String toString()
    {
        return (new StringBuilder("ContentDistributorIdBox[language=")).append(getLanguage()).append(";contentDistributorId=").append(getContentDistributorId()).append("]").toString();
    }
}
