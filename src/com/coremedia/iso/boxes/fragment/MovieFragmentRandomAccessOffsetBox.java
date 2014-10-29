// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class MovieFragmentRandomAccessOffsetBox extends AbstractFullBox
{

    public static final String TYPE = "mfro";
    private long mfraSize;

    public MovieFragmentRandomAccessOffsetBox()
    {
        super("mfro");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        mfraSize = e.b(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, mfraSize);
    }

    protected long getContentSize()
    {
        return 8L;
    }

    public long getMfraSize()
    {
        return mfraSize;
    }

    public void setMfraSize(long l)
    {
        mfraSize = l;
    }
}
