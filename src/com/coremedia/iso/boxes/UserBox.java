// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;

public class UserBox extends AbstractBox
{

    public static final String TYPE = "uuid";
    byte data[];

    public UserBox(byte abyte0[])
    {
        super("uuid", abyte0);
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        data = new byte[bytebuffer.remaining()];
        bytebuffer.get(data);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        bytebuffer.put(data);
    }

    protected long getContentSize()
    {
        return (long)data.length;
    }

    public byte[] getData()
    {
        return data;
    }

    public void setData(byte abyte0[])
    {
        data = abyte0;
    }

    public String toString()
    {
        return (new StringBuilder("UserBox[type=")).append(getType()).append(";userType=").append(new String(getUserType())).append(";contentLength=").append(data.length).append("]").toString();
    }
}
