// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;

import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public final class AppleDataBox extends AbstractFullBox
{

    public static final String TYPE = "data";
    private byte data[];
    private byte fourBytes[];

    public AppleDataBox()
    {
        super("data");
        fourBytes = new byte[4];
    }

    private static AppleDataBox getEmpty()
    {
        AppleDataBox appledatabox = new AppleDataBox();
        appledatabox.setVersion(0);
        appledatabox.setFourBytes(new byte[4]);
        return appledatabox;
    }

    public static AppleDataBox getStringAppleDataBox()
    {
        AppleDataBox appledatabox = getEmpty();
        appledatabox.setFlags(1);
        appledatabox.setData(new byte[] {
            0
        });
        return appledatabox;
    }

    public static AppleDataBox getUint16AppleDataBox()
    {
        AppleDataBox appledatabox = new AppleDataBox();
        appledatabox.setFlags(21);
        appledatabox.setData(new byte[] {
            0, 0
        });
        return appledatabox;
    }

    public static AppleDataBox getUint32AppleDataBox()
    {
        AppleDataBox appledatabox = new AppleDataBox();
        appledatabox.setFlags(21);
        appledatabox.setData(new byte[] {
            0, 0, 0, 0
        });
        return appledatabox;
    }

    public static AppleDataBox getUint8AppleDataBox()
    {
        AppleDataBox appledatabox = new AppleDataBox();
        appledatabox.setFlags(21);
        appledatabox.setData(new byte[] {
            0
        });
        return appledatabox;
    }

    public final void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        fourBytes = new byte[4];
        bytebuffer.get(fourBytes);
        data = new byte[bytebuffer.remaining()];
        bytebuffer.get(data);
    }

    protected final void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        bytebuffer.put(fourBytes, 0, 4);
        bytebuffer.put(data);
    }

    protected final long getContentSize()
    {
        return (long)(8 + data.length);
    }

    public final byte[] getData()
    {
        return data;
    }

    public final byte[] getFourBytes()
    {
        return fourBytes;
    }

    public final void setData(byte abyte0[])
    {
        data = new byte[abyte0.length];
        System.arraycopy(abyte0, 0, data, 0, abyte0.length);
    }

    public final void setFourBytes(byte abyte0[])
    {
        System.arraycopy(abyte0, 0, fourBytes, 0, 4);
    }
}
