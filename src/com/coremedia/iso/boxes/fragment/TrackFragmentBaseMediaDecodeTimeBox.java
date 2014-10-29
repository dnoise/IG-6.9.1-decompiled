// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class TrackFragmentBaseMediaDecodeTimeBox extends AbstractFullBox
{

    public static final String TYPE = "tfdt";
    private long baseMediaDecodeTime;

    public TrackFragmentBaseMediaDecodeTimeBox()
    {
        super("tfdt");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        if (getVersion() == 1)
        {
            baseMediaDecodeTime = e.h(bytebuffer);
            return;
        } else
        {
            baseMediaDecodeTime = e.b(bytebuffer);
            return;
        }
    }

    public long getBaseMediaDecodeTime()
    {
        return baseMediaDecodeTime;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        if (getVersion() == 1)
        {
            g.a(bytebuffer, baseMediaDecodeTime);
            return;
        } else
        {
            g.b(bytebuffer, baseMediaDecodeTime);
            return;
        }
    }

    protected long getContentSize()
    {
        return getVersion() != 0 ? 12L : 8L;
    }

    public void setBaseMediaDecodeTime(long l)
    {
        baseMediaDecodeTime = l;
    }

    public String toString()
    {
        return (new StringBuilder("TrackFragmentBaseMediaDecodeTimeBox{baseMediaDecodeTime=")).append(baseMediaDecodeTime).append('}').toString();
    }
}
