// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

// Referenced classes of package com.coremedia.iso.boxes.fragment:
//            a

public class TrackExtendsBox extends AbstractFullBox
{

    public static final String TYPE = "trex";
    private long defaultSampleDescriptionIndex;
    private long defaultSampleDuration;
    private a defaultSampleFlags;
    private long defaultSampleSize;
    private long trackId;

    public TrackExtendsBox()
    {
        super("trex");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        trackId = e.b(bytebuffer);
        defaultSampleDescriptionIndex = e.b(bytebuffer);
        defaultSampleDuration = e.b(bytebuffer);
        defaultSampleSize = e.b(bytebuffer);
        defaultSampleFlags = new a(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, trackId);
        g.b(bytebuffer, defaultSampleDescriptionIndex);
        g.b(bytebuffer, defaultSampleDuration);
        g.b(bytebuffer, defaultSampleSize);
        defaultSampleFlags.a(bytebuffer);
    }

    protected long getContentSize()
    {
        return 24L;
    }

    public long getDefaultSampleDescriptionIndex()
    {
        return defaultSampleDescriptionIndex;
    }

    public long getDefaultSampleDuration()
    {
        return defaultSampleDuration;
    }

    public a getDefaultSampleFlags()
    {
        return defaultSampleFlags;
    }

    public String getDefaultSampleFlagsStr()
    {
        return defaultSampleFlags.toString();
    }

    public long getDefaultSampleSize()
    {
        return defaultSampleSize;
    }

    public long getTrackId()
    {
        return trackId;
    }

    public void setDefaultSampleDescriptionIndex(long l)
    {
        defaultSampleDescriptionIndex = l;
    }

    public void setDefaultSampleDuration(long l)
    {
        defaultSampleDuration = l;
    }

    public void setDefaultSampleFlags(a a1)
    {
        defaultSampleFlags = a1;
    }

    public void setDefaultSampleSize(long l)
    {
        defaultSampleSize = l;
    }

    public void setTrackId(long l)
    {
        trackId = l;
    }
}
