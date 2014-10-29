// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.c;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;

public final class d
{

    public static UUID a(byte abyte0[])
    {
        ByteBuffer bytebuffer = ByteBuffer.wrap(abyte0);
        bytebuffer.order(ByteOrder.BIG_ENDIAN);
        return new UUID(bytebuffer.getLong(), bytebuffer.getLong());
    }

    public static byte[] a(UUID uuid)
    {
        int i = 8;
        long l = uuid.getMostSignificantBits();
        long l1 = uuid.getLeastSignificantBits();
        byte abyte0[] = new byte[16];
        for (int j = 0; j < i; j++)
        {
            abyte0[j] = (byte)(int)(l >>> 8 * (7 - j));
        }

        for (; i < 16; i++)
        {
            abyte0[i] = (byte)(int)(l1 >>> 8 * (7 - i));
        }

        return abyte0;
    }
}
