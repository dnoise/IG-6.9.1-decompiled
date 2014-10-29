// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.c;

import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;

public final class a
    implements ByteChannel
{

    ByteBuffer a;

    public a(ByteBuffer bytebuffer)
    {
        a = bytebuffer;
    }

    public final void close()
    {
    }

    public final boolean isOpen()
    {
        return true;
    }

    public final int read(ByteBuffer bytebuffer)
    {
        byte abyte0[] = bytebuffer.array();
        int i = bytebuffer.remaining();
        if (a.remaining() >= i)
        {
            a.get(abyte0, bytebuffer.position(), i);
            return i;
        } else
        {
            throw new EOFException("Reading beyond end of stream");
        }
    }

    public final int write(ByteBuffer bytebuffer)
    {
        int i = bytebuffer.remaining();
        a.put(bytebuffer);
        return i;
    }
}
