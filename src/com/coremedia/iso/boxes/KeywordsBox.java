// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class KeywordsBox extends AbstractFullBox
{

    public static final String TYPE = "kywd";
    private String keywords[];
    private String language;

    public KeywordsBox()
    {
        super("kywd");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        language = e.k(bytebuffer);
        int i = e.f(bytebuffer);
        keywords = new String[i];
        for (int j = 0; j < i; j++)
        {
            e.f(bytebuffer);
            keywords[j] = e.g(bytebuffer);
        }

    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.a(bytebuffer, language);
        g.d(bytebuffer, keywords.length);
        String as[] = keywords;
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String s = as[j];
            g.d(bytebuffer, 1 + k.b(s));
            bytebuffer.put(k.a(s));
        }

    }

    protected long getContentSize()
    {
        long l = 7L;
        String as[] = keywords;
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            l += 1 + (1 + k.b(as[j]));
        }

        return l;
    }

    public String[] getKeywords()
    {
        return keywords;
    }

    public String getLanguage()
    {
        return language;
    }

    public void setKeywords(String as[])
    {
        keywords = as;
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("KeywordsBox[language=").append(getLanguage());
        for (int i = 0; i < keywords.length; i++)
        {
            stringbuffer.append(";keyword").append(i).append("=").append(keywords[i]);
        }

        stringbuffer.append("]");
        return stringbuffer.toString();
    }
}
