// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class GenreBox extends AbstractFullBox
{

    public static final String TYPE = "gnre";
    private String genre;
    private String language;

    public GenreBox()
    {
        super("gnre");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        language = e.k(bytebuffer);
        genre = e.g(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.a(bytebuffer, language);
        bytebuffer.put(k.a(genre));
        bytebuffer.put((byte)0);
    }

    protected long getContentSize()
    {
        return (long)(7 + k.b(genre));
    }

    public String getGenre()
    {
        return genre;
    }

    public String getLanguage()
    {
        return language;
    }

    public void setGenre(String s)
    {
        genre = s;
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public String toString()
    {
        return (new StringBuilder("GenreBox[language=")).append(getLanguage()).append(";genre=").append(getGenre()).append("]").toString();
    }
}
