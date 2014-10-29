// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class MovieFragmentHeaderBox extends AbstractFullBox
{

    public static final String TYPE = "mfhd";
    private long sequenceNumber;

    public MovieFragmentHeaderBox()
    {
        super("mfhd");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        sequenceNumber = e.b(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, sequenceNumber);
    }

    protected long getContentSize()
    {
        return 8L;
    }

    public long getSequenceNumber()
    {
        return sequenceNumber;
    }

    public void setSequenceNumber(long l)
    {
        sequenceNumber = l;
    }

    public String toString()
    {
        return (new StringBuilder("MovieFragmentHeaderBox{sequenceNumber=")).append(sequenceNumber).append('}').toString();
    }
}
