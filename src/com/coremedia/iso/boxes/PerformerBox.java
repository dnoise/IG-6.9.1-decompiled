// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class PerformerBox extends AbstractFullBox
{

    public static final String TYPE = "perf";
    private String language;
    private String performer;

    public PerformerBox()
    {
        super("perf");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        language = e.k(bytebuffer);
        performer = e.g(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.a(bytebuffer, language);
        bytebuffer.put(k.a(performer));
        bytebuffer.put((byte)0);
    }

    protected long getContentSize()
    {
        return (long)(1 + (6 + k.b(performer)));
    }

    public String getLanguage()
    {
        return language;
    }

    public String getPerformer()
    {
        return performer;
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public void setPerformer(String s)
    {
        performer = s;
    }

    public String toString()
    {
        return (new StringBuilder("PerformerBox[language=")).append(getLanguage()).append(";performer=").append(getPerformer()).append("]").toString();
    }
}
