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

public class TrackFragmentHeaderBox extends AbstractFullBox
{

    public static final String TYPE = "tfhd";
    private long baseDataOffset;
    private long defaultSampleDuration;
    private a defaultSampleFlags;
    private long defaultSampleSize;
    private boolean durationIsEmpty;
    private long sampleDescriptionIndex;
    private long trackId;

    public TrackFragmentHeaderBox()
    {
        super("tfhd");
        baseDataOffset = -1L;
        defaultSampleDuration = -1L;
        defaultSampleSize = -1L;
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        trackId = e.b(bytebuffer);
        if ((1 & getFlags()) == 1)
        {
            baseDataOffset = e.h(bytebuffer);
        }
        if ((2 & getFlags()) == 2)
        {
            sampleDescriptionIndex = e.b(bytebuffer);
        }
        if ((8 & getFlags()) == 8)
        {
            defaultSampleDuration = e.b(bytebuffer);
        }
        if ((0x10 & getFlags()) == 16)
        {
            defaultSampleSize = e.b(bytebuffer);
        }
        if ((0x20 & getFlags()) == 32)
        {
            defaultSampleFlags = new a(bytebuffer);
        }
        if ((0x10000 & getFlags()) == 0x10000)
        {
            durationIsEmpty = true;
        }
    }

    public long getBaseDataOffset()
    {
        return baseDataOffset;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, trackId);
        if ((1 & getFlags()) == 1)
        {
            g.a(bytebuffer, getBaseDataOffset());
        }
        if ((2 & getFlags()) == 2)
        {
            g.b(bytebuffer, getSampleDescriptionIndex());
        }
        if ((8 & getFlags()) == 8)
        {
            g.b(bytebuffer, getDefaultSampleDuration());
        }
        if ((0x10 & getFlags()) == 16)
        {
            g.b(bytebuffer, getDefaultSampleSize());
        }
        if ((0x20 & getFlags()) == 32)
        {
            defaultSampleFlags.a(bytebuffer);
        }
    }

    protected long getContentSize()
    {
        long l = 8L;
        int i = getFlags();
        if ((i & 1) == 1)
        {
            l = 16L;
        }
        if ((i & 2) == 2)
        {
            l += 4L;
        }
        if ((i & 8) == 8)
        {
            l += 4L;
        }
        if ((i & 0x10) == 16)
        {
            l += 4L;
        }
        if ((i & 0x20) == 32)
        {
            l += 4L;
        }
        return l;
    }

    public long getDefaultSampleDuration()
    {
        return defaultSampleDuration;
    }

    public a getDefaultSampleFlags()
    {
        return defaultSampleFlags;
    }

    public long getDefaultSampleSize()
    {
        return defaultSampleSize;
    }

    public long getSampleDescriptionIndex()
    {
        return sampleDescriptionIndex;
    }

    public long getTrackId()
    {
        return trackId;
    }

    public boolean hasBaseDataOffset()
    {
        return (1 & getFlags()) != 0;
    }

    public boolean hasDefaultSampleDuration()
    {
        return (8 & getFlags()) != 0;
    }

    public boolean hasDefaultSampleFlags()
    {
        return (0x20 & getFlags()) != 0;
    }

    public boolean hasDefaultSampleSize()
    {
        return (0x10 & getFlags()) != 0;
    }

    public boolean hasSampleDescriptionIndex()
    {
        return (2 & getFlags()) != 0;
    }

    public boolean isDurationIsEmpty()
    {
        return durationIsEmpty;
    }

    public void setBaseDataOffset(long l)
    {
        if (l == -1L)
        {
            setFlags(0x7ffffffe & getFlags());
        } else
        {
            setFlags(1 | getFlags());
        }
        baseDataOffset = l;
    }

    public void setDefaultSampleDuration(long l)
    {
        setFlags(8 | getFlags());
        defaultSampleDuration = l;
    }

    public void setDefaultSampleFlags(a a1)
    {
        setFlags(0x20 | getFlags());
        defaultSampleFlags = a1;
    }

    public void setDefaultSampleSize(long l)
    {
        setFlags(0x10 | getFlags());
        defaultSampleSize = l;
    }

    public void setDurationIsEmpty(boolean flag)
    {
        setFlags(0x10000 | getFlags());
        durationIsEmpty = flag;
    }

    public void setSampleDescriptionIndex(long l)
    {
        if (l == -1L)
        {
            setFlags(0x7ffffffd & getFlags());
        } else
        {
            setFlags(2 | getFlags());
        }
        sampleDescriptionIndex = l;
    }

    public void setTrackId(long l)
    {
        trackId = l;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("TrackFragmentHeaderBox");
        stringbuilder.append("{trackId=").append(trackId);
        stringbuilder.append(", baseDataOffset=").append(baseDataOffset);
        stringbuilder.append(", sampleDescriptionIndex=").append(sampleDescriptionIndex);
        stringbuilder.append(", defaultSampleDuration=").append(defaultSampleDuration);
        stringbuilder.append(", defaultSampleSize=").append(defaultSampleSize);
        stringbuilder.append(", defaultSampleFlags=").append(defaultSampleFlags);
        stringbuilder.append(", durationIsEmpty=").append(durationIsEmpty);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
