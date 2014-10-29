// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class AuthorBox extends AbstractFullBox
{

    public static final String TYPE = "auth";
    private String author;
    private String language;

    public AuthorBox()
    {
        super("auth");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        language = e.k(bytebuffer);
        author = e.g(bytebuffer);
    }

    public String getAuthor()
    {
        return author;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.a(bytebuffer, language);
        bytebuffer.put(k.a(author));
        bytebuffer.put((byte)0);
    }

    protected long getContentSize()
    {
        return (long)(7 + k.b(author));
    }

    public String getLanguage()
    {
        return language;
    }

    public void setAuthor(String s)
    {
        author = s;
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public String toString()
    {
        return (new StringBuilder("AuthorBox[language=")).append(getLanguage()).append(";author=").append(getAuthor()).append("]").toString();
    }
}
