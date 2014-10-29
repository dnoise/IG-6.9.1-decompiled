// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class TitleBox extends AbstractFullBox
{

    public static final String TYPE = "titl";
    private String language;
    private String title;

    public TitleBox()
    {
        super("titl");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        language = e.k(bytebuffer);
        title = e.g(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.a(bytebuffer, language);
        bytebuffer.put(k.a(title));
        bytebuffer.put((byte)0);
    }

    protected long getContentSize()
    {
        return (long)(7 + k.b(title));
    }

    public String getLanguage()
    {
        return language;
    }

    public String getTitle()
    {
        return title;
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public void setTitle(String s)
    {
        title = s;
    }

    public String toString()
    {
        return (new StringBuilder("TitleBox[language=")).append(getLanguage()).append(";title=").append(getTitle()).append("]").toString();
    }
}
