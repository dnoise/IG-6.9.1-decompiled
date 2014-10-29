// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class AppleDataRateBox extends AbstractFullBox
{

    public static final String TYPE = "rmdr";
    private long dataRate;

    public AppleDataRateBox()
    {
        super("rmdr");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        dataRate = e.b(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, dataRate);
    }

    protected long getContentSize()
    {
        return 8L;
    }

    public long getDataRate()
    {
        return dataRate;
    }
}
