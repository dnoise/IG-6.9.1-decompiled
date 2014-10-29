// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class RecordingYearBox extends AbstractFullBox
{

    public static final String TYPE = "yrrc";
    int recordingYear;

    public RecordingYearBox()
    {
        super("yrrc");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        recordingYear = e.d(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, recordingYear);
    }

    protected long getContentSize()
    {
        return 6L;
    }

    public int getRecordingYear()
    {
        return recordingYear;
    }

    public void setRecordingYear(int i)
    {
        recordingYear = i;
    }
}
