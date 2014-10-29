// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.UUID;

public abstract class AbstractTrackEncryptionBox extends AbstractFullBox
{

    int defaultAlgorithmId;
    int defaultIvSize;
    byte default_KID[];

    protected AbstractTrackEncryptionBox(String s)
    {
        super(s);
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        defaultAlgorithmId = e.c(bytebuffer);
        defaultIvSize = e.f(bytebuffer);
        default_KID = new byte[16];
        bytebuffer.get(default_KID);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            AbstractTrackEncryptionBox abstracttrackencryptionbox = (AbstractTrackEncryptionBox)obj;
            if (defaultAlgorithmId != abstracttrackencryptionbox.defaultAlgorithmId)
            {
                return false;
            }
            if (defaultIvSize != abstracttrackencryptionbox.defaultIvSize)
            {
                return false;
            }
            if (!Arrays.equals(default_KID, abstracttrackencryptionbox.default_KID))
            {
                return false;
            }
        }
        return true;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.a(bytebuffer, defaultAlgorithmId);
        g.d(bytebuffer, defaultIvSize);
        bytebuffer.put(default_KID);
    }

    protected long getContentSize()
    {
        return 24L;
    }

    public int getDefaultAlgorithmId()
    {
        return defaultAlgorithmId;
    }

    public int getDefaultIvSize()
    {
        return defaultIvSize;
    }

    public String getDefault_KID()
    {
        ByteBuffer bytebuffer = ByteBuffer.wrap(default_KID);
        bytebuffer.order(ByteOrder.BIG_ENDIAN);
        return (new UUID(bytebuffer.getLong(), bytebuffer.getLong())).toString();
    }

    public int hashCode()
    {
        int i = 31 * (31 * defaultAlgorithmId + defaultIvSize);
        int j;
        if (default_KID != null)
        {
            j = Arrays.hashCode(default_KID);
        } else
        {
            j = 0;
        }
        return j + i;
    }

    public void setDefaultAlgorithmId(int i)
    {
        defaultAlgorithmId = i;
    }

    public void setDefaultIvSize(int i)
    {
        defaultIvSize = i;
    }

    public void setDefault_KID(byte abyte0[])
    {
        default_KID = abyte0;
    }
}
