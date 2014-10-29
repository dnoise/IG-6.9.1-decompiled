// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class TfxdBox extends AbstractFullBox
{

    public long fragmentAbsoluteDuration;
    public long fragmentAbsoluteTime;

    public TfxdBox()
    {
        super("uuid");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        if (getVersion() == 1)
        {
            fragmentAbsoluteTime = e.h(bytebuffer);
            fragmentAbsoluteDuration = e.h(bytebuffer);
            return;
        } else
        {
            fragmentAbsoluteTime = e.b(bytebuffer);
            fragmentAbsoluteDuration = e.b(bytebuffer);
            return;
        }
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        if (getVersion() == 1)
        {
            g.a(bytebuffer, fragmentAbsoluteTime);
            g.a(bytebuffer, fragmentAbsoluteDuration);
            return;
        } else
        {
            g.b(bytebuffer, fragmentAbsoluteTime);
            g.b(bytebuffer, fragmentAbsoluteDuration);
            return;
        }
    }

    protected long getContentSize()
    {
        return getVersion() != 1 ? 12L : 20L;
    }

    public long getFragmentAbsoluteDuration()
    {
        return fragmentAbsoluteDuration;
    }

    public long getFragmentAbsoluteTime()
    {
        return fragmentAbsoluteTime;
    }

    public byte[] getUserType()
    {
        return (new byte[] {
            109, 29, -101, 5, 66, -43, 68, -26, -128, -30, 
            20, 29, -81, -9, 87, -78
        });
    }
}
