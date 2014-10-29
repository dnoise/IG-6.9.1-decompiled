// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.vodafone;

import com.coremedia.iso.e;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class CoverUriBox extends AbstractFullBox
{

    public static final String TYPE = "cvru";
    private String coverUri;

    public CoverUriBox()
    {
        super("cvru");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        coverUri = e.g(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        bytebuffer.put(k.a(coverUri));
        bytebuffer.put((byte)0);
    }

    protected long getContentSize()
    {
        return (long)(5 + k.b(coverUri));
    }

    public String getCoverUri()
    {
        return coverUri;
    }

    public void setCoverUri(String s)
    {
        coverUri = s;
    }

    public String toString()
    {
        return (new StringBuilder("CoverUriBox[coverUri=")).append(getCoverUri()).append("]").toString();
    }
}
