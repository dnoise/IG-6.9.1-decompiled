// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.b;
import com.googlecode.mp4parser.AbstractContainerBox;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;

public class UserDataBox extends AbstractContainerBox
{

    public static final String TYPE = "udta";

    public UserDataBox()
    {
        super("udta");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        super._parseDetails(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        super.getContent(bytebuffer);
    }

    protected long getContentSize()
    {
        return super.getContentSize();
    }

    public void parse(ReadableByteChannel readablebytechannel, ByteBuffer bytebuffer, long l, b b)
    {
        super.parse(readablebytechannel, bytebuffer, l, b);
    }
}
