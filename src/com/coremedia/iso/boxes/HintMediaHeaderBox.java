// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import java.nio.ByteBuffer;

// Referenced classes of package com.coremedia.iso.boxes:
//            AbstractMediaHeaderBox

public class HintMediaHeaderBox extends AbstractMediaHeaderBox
{

    public static final String TYPE = "hmhd";
    private long avgBitrate;
    private int avgPduSize;
    private long maxBitrate;
    private int maxPduSize;

    public HintMediaHeaderBox()
    {
        super("hmhd");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        maxPduSize = e.d(bytebuffer);
        avgPduSize = e.d(bytebuffer);
        maxBitrate = e.b(bytebuffer);
        avgBitrate = e.b(bytebuffer);
        e.b(bytebuffer);
    }

    public long getAvgBitrate()
    {
        return avgBitrate;
    }

    public int getAvgPduSize()
    {
        return avgPduSize;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, maxPduSize);
        g.b(bytebuffer, avgPduSize);
        g.b(bytebuffer, maxBitrate);
        g.b(bytebuffer, avgBitrate);
        g.b(bytebuffer, 0L);
    }

    protected long getContentSize()
    {
        return 20L;
    }

    public long getMaxBitrate()
    {
        return maxBitrate;
    }

    public int getMaxPduSize()
    {
        return maxPduSize;
    }

    public String toString()
    {
        return (new StringBuilder("HintMediaHeaderBox{maxPduSize=")).append(maxPduSize).append(", avgPduSize=").append(avgPduSize).append(", maxBitrate=").append(maxBitrate).append(", avgBitrate=").append(avgBitrate).append('}').toString();
    }
}
