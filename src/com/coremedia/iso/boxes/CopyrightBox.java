// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class CopyrightBox extends AbstractFullBox
{

    public static final String TYPE = "cprt";
    private String copyright;
    private String language;

    public CopyrightBox()
    {
        super("cprt");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        language = e.k(bytebuffer);
        copyright = e.g(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.a(bytebuffer, language);
        bytebuffer.put(k.a(copyright));
        bytebuffer.put((byte)0);
    }

    protected long getContentSize()
    {
        return (long)(7 + k.b(copyright));
    }

    public String getCopyright()
    {
        return copyright;
    }

    public String getLanguage()
    {
        return language;
    }

    public void setCopyright(String s)
    {
        copyright = s;
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public String toString()
    {
        return (new StringBuilder("CopyrightBox[language=")).append(getLanguage()).append(";copyright=").append(getCopyright()).append("]").toString();
    }
}
