// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.boxes.a;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes.sampleentry:
//            SampleEntry, a, b

public class TextSampleEntry extends SampleEntry
{

    public static final String TYPE1 = "tx3g";
    public static final String TYPE_ENCRYPTED = "enct";
    private int backgroundColorRgba[];
    private com.coremedia.iso.boxes.sampleentry.a boxRecord;
    private long displayFlags;
    private int horizontalJustification;
    private b styleRecord;
    private int verticalJustification;

    public TextSampleEntry(String s)
    {
        super(s);
        backgroundColorRgba = new int[4];
        boxRecord = new com.coremedia.iso.boxes.sampleentry.a();
        styleRecord = new b();
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        _parseReservedAndDataReferenceIndex(bytebuffer);
        displayFlags = e.b(bytebuffer);
        horizontalJustification = e.f(bytebuffer);
        verticalJustification = e.f(bytebuffer);
        backgroundColorRgba = new int[4];
        backgroundColorRgba[0] = e.f(bytebuffer);
        backgroundColorRgba[1] = e.f(bytebuffer);
        backgroundColorRgba[2] = e.f(bytebuffer);
        backgroundColorRgba[3] = e.f(bytebuffer);
        boxRecord = new com.coremedia.iso.boxes.sampleentry.a();
        boxRecord.a(bytebuffer);
        styleRecord = new b();
        styleRecord.a(bytebuffer);
        _parseChildBoxes(bytebuffer);
    }

    public int[] getBackgroundColorRgba()
    {
        return backgroundColorRgba;
    }

    public com.coremedia.iso.boxes.sampleentry.a getBoxRecord()
    {
        return boxRecord;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        _writeReservedAndDataReferenceIndex(bytebuffer);
        g.b(bytebuffer, displayFlags);
        g.d(bytebuffer, horizontalJustification);
        g.d(bytebuffer, verticalJustification);
        g.d(bytebuffer, backgroundColorRgba[0]);
        g.d(bytebuffer, backgroundColorRgba[1]);
        g.d(bytebuffer, backgroundColorRgba[2]);
        g.d(bytebuffer, backgroundColorRgba[3]);
        boxRecord.b(bytebuffer);
        styleRecord.b(bytebuffer);
        _writeChildBoxes(bytebuffer);
    }

    protected long getContentSize()
    {
        com.coremedia.iso.boxes.sampleentry.a _tmp = boxRecord;
        b _tmp1 = styleRecord;
        Iterator iterator = boxes.iterator();
        long l;
        for (l = 38L; iterator.hasNext(); l += ((a)iterator.next()).getSize()) { }
        return l;
    }

    public int getHorizontalJustification()
    {
        return horizontalJustification;
    }

    public b getStyleRecord()
    {
        return styleRecord;
    }

    public int getVerticalJustification()
    {
        return verticalJustification;
    }

    public boolean isContinuousKaraoke()
    {
        return (2048L & displayFlags) == 2048L;
    }

    public boolean isFillTextRegion()
    {
        return (0x40000L & displayFlags) == 0x40000L;
    }

    public boolean isScrollDirection()
    {
        return (384L & displayFlags) == 384L;
    }

    public boolean isScrollIn()
    {
        return (32L & displayFlags) == 32L;
    }

    public boolean isScrollOut()
    {
        return (64L & displayFlags) == 64L;
    }

    public boolean isWriteTextVertically()
    {
        return (0x20000L & displayFlags) == 0x20000L;
    }

    public void setBackgroundColorRgba(int ai[])
    {
        backgroundColorRgba = ai;
    }

    public void setBoxRecord(com.coremedia.iso.boxes.sampleentry.a a1)
    {
        boxRecord = a1;
    }

    public void setContinuousKaraoke(boolean flag)
    {
        if (flag)
        {
            displayFlags = 2048L | displayFlags;
            return;
        } else
        {
            displayFlags = -2049L & displayFlags;
            return;
        }
    }

    public void setFillTextRegion(boolean flag)
    {
        if (flag)
        {
            displayFlags = 0x40000L | displayFlags;
            return;
        } else
        {
            displayFlags = 0xfffffffffffbffffL & displayFlags;
            return;
        }
    }

    public void setHorizontalJustification(int i)
    {
        horizontalJustification = i;
    }

    public void setScrollDirection(boolean flag)
    {
        if (flag)
        {
            displayFlags = 384L | displayFlags;
            return;
        } else
        {
            displayFlags = -385L & displayFlags;
            return;
        }
    }

    public void setScrollIn(boolean flag)
    {
        if (flag)
        {
            displayFlags = 32L | displayFlags;
            return;
        } else
        {
            displayFlags = -33L & displayFlags;
            return;
        }
    }

    public void setScrollOut(boolean flag)
    {
        if (flag)
        {
            displayFlags = 64L | displayFlags;
            return;
        } else
        {
            displayFlags = -65L & displayFlags;
            return;
        }
    }

    public void setStyleRecord(b b1)
    {
        styleRecord = b1;
    }

    public void setVerticalJustification(int i)
    {
        verticalJustification = i;
    }

    public void setWriteTextVertically(boolean flag)
    {
        if (flag)
        {
            displayFlags = 0x20000L | displayFlags;
            return;
        } else
        {
            displayFlags = 0xfffffffffffdffffL & displayFlags;
            return;
        }
    }

    public String toString()
    {
        return "TextSampleEntry";
    }
}
