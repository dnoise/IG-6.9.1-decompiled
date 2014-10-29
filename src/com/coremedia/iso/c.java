// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso;

import com.googlecode.mp4parser.c.b;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;

public class c
{

    static final boolean a;

    public c()
    {
    }

    private static int a(ReadableByteChannel readablebytechannel, ByteBuffer bytebuffer, int i)
    {
        int j = 0;
        int k;
        do
        {
            k = readablebytechannel.read(bytebuffer);
            if (-1 == k)
            {
                break;
            }
            j += k;
        } while (j != i);
        if (k == -1)
        {
            throw new EOFException("End of file. No more boxes.");
        } else
        {
            return j;
        }
    }

    public static ByteBuffer a(ReadableByteChannel readablebytechannel, long l)
    {
        Object obj;
        if ((readablebytechannel instanceof FileChannel) && l > 0x100000L)
        {
            java.nio.MappedByteBuffer mappedbytebuffer = ((FileChannel)readablebytechannel).map(java.nio.channels.FileChannel.MapMode.READ_ONLY, ((FileChannel)readablebytechannel).position(), l);
            ((FileChannel)readablebytechannel).position(l + ((FileChannel)readablebytechannel).position());
            obj = mappedbytebuffer;
        } else
        {
            obj = ByteBuffer.allocate(b.a(l));
            a(readablebytechannel, ((ByteBuffer) (obj)), ((ByteBuffer) (obj)).limit());
            ((ByteBuffer) (obj)).rewind();
            if (!a && (long)((ByteBuffer) (obj)).limit() != l)
            {
                throw new AssertionError();
            }
        }
        return ((ByteBuffer) (obj));
    }

    static 
    {
        boolean flag;
        if (!com/coremedia/iso/c.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
