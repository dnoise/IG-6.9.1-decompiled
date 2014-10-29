// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class CompositionShiftLeastGreatestAtom extends AbstractFullBox
{

    int compositionOffsetToDisplayOffsetShift;
    int displayEndTime;
    int displayStartTime;
    int greatestDisplayOffset;
    int leastDisplayOffset;

    public CompositionShiftLeastGreatestAtom()
    {
        super("cslg");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        compositionOffsetToDisplayOffsetShift = bytebuffer.getInt();
        leastDisplayOffset = bytebuffer.getInt();
        greatestDisplayOffset = bytebuffer.getInt();
        displayStartTime = bytebuffer.getInt();
        displayEndTime = bytebuffer.getInt();
    }

    public int getCompositionOffsetToDisplayOffsetShift()
    {
        return compositionOffsetToDisplayOffsetShift;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        bytebuffer.putInt(compositionOffsetToDisplayOffsetShift);
        bytebuffer.putInt(leastDisplayOffset);
        bytebuffer.putInt(greatestDisplayOffset);
        bytebuffer.putInt(displayStartTime);
        bytebuffer.putInt(displayEndTime);
    }

    protected long getContentSize()
    {
        return 24L;
    }

    public int getDisplayEndTime()
    {
        return displayEndTime;
    }

    public int getDisplayStartTime()
    {
        return displayStartTime;
    }

    public int getGreatestDisplayOffset()
    {
        return greatestDisplayOffset;
    }

    public int getLeastDisplayOffset()
    {
        return leastDisplayOffset;
    }

    public void setCompositionOffsetToDisplayOffsetShift(int i)
    {
        compositionOffsetToDisplayOffsetShift = i;
    }

    public void setDisplayEndTime(int i)
    {
        displayEndTime = i;
    }

    public void setDisplayStartTime(int i)
    {
        displayStartTime = i;
    }

    public void setGreatestDisplayOffset(int i)
    {
        greatestDisplayOffset = i;
    }

    public void setLeastDisplayOffset(int i)
    {
        leastDisplayOffset = i;
    }
}
