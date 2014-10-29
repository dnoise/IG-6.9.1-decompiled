// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.vodafone;

import com.coremedia.iso.e;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class LyricsUriBox extends AbstractFullBox
{

    public static final String TYPE = "lrcu";
    private String lyricsUri;

    public LyricsUriBox()
    {
        super("lrcu");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        lyricsUri = e.g(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        bytebuffer.put(k.a(lyricsUri));
        bytebuffer.put((byte)0);
    }

    protected long getContentSize()
    {
        return (long)(5 + k.b(lyricsUri));
    }

    public String getLyricsUri()
    {
        return lyricsUri;
    }

    public void setLyricsUri(String s)
    {
        lyricsUri = s;
    }

    public String toString()
    {
        return (new StringBuilder("LyricsUriBox[lyricsUri=")).append(getLyricsUri()).append("]").toString();
    }
}
