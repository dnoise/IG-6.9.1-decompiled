// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.cenc;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.c.d;
import java.nio.ByteBuffer;
import java.util.UUID;

public class ProtectionSystemSpecificHeaderBox extends AbstractFullBox
{

    static final boolean $assertionsDisabled = false;
    public static byte OMA2_SYSTEM_ID[] = d.a(UUID.fromString("A2B55680-6F43-11E0-9A3F-0002A5D5C51B"));
    public static byte PLAYREADY_SYSTEM_ID[] = d.a(UUID.fromString("9A04F079-9840-4286-AB92-E65BE0885F95"));
    public static final String TYPE = "pssh";
    byte content[];
    byte systemId[];

    public ProtectionSystemSpecificHeaderBox()
    {
        super("pssh");
    }

    protected void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        systemId = new byte[16];
        bytebuffer.get(systemId);
        long l = e.b(bytebuffer);
        content = new byte[bytebuffer.remaining()];
        bytebuffer.get(content);
        if (!$assertionsDisabled && l != (long)content.length)
        {
            throw new AssertionError();
        } else
        {
            return;
        }
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        if (!$assertionsDisabled && systemId.length != 16)
        {
            throw new AssertionError();
        } else
        {
            bytebuffer.put(systemId, 0, 16);
            g.b(bytebuffer, content.length);
            bytebuffer.put(content);
            return;
        }
    }

    public byte[] getContent()
    {
        return content;
    }

    protected long getContentSize()
    {
        return (long)(24 + content.length);
    }

    public byte[] getSystemId()
    {
        return systemId;
    }

    public void setContent(byte abyte0[])
    {
        content = abyte0;
    }

    public void setSystemId(byte abyte0[])
    {
        if (!$assertionsDisabled && abyte0.length != 16)
        {
            throw new AssertionError();
        } else
        {
            systemId = abyte0;
            return;
        }
    }

    static 
    {
        boolean flag;
        if (!com/googlecode/mp4parser/boxes/cenc/ProtectionSystemSpecificHeaderBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
