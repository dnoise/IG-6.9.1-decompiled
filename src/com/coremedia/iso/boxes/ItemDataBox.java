// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;

public class ItemDataBox extends AbstractBox
{

    public static final String TYPE = "idat";
    ByteBuffer data;

    public ItemDataBox()
    {
        super("idat");
        data = ByteBuffer.allocate(0);
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        data = bytebuffer.slice();
        bytebuffer.position(bytebuffer.position() + bytebuffer.remaining());
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        bytebuffer.put(data);
    }

    protected long getContentSize()
    {
        return (long)data.limit();
    }

    public ByteBuffer getData()
    {
        return data;
    }

    public void setData(ByteBuffer bytebuffer)
    {
        data = bytebuffer;
    }
}
