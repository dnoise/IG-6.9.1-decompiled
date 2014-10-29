// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso;

import java.nio.ByteBuffer;

// Referenced classes of package com.coremedia.iso:
//            k

public final class g
{

    static final boolean a;

    public g()
    {
    }

    public static void a(ByteBuffer bytebuffer, double d1)
    {
        int i = (int)(65536D * d1);
        bytebuffer.put((byte)((0xff000000 & i) >> 24));
        bytebuffer.put((byte)((0xff0000 & i) >> 16));
        bytebuffer.put((byte)((0xff00 & i) >> 8));
        bytebuffer.put((byte)(i & 0xff));
    }

    public static void a(ByteBuffer bytebuffer, int i)
    {
        int j = 0xffffff & i;
        b(bytebuffer, j >> 8);
        d(bytebuffer, j);
    }

    public static void a(ByteBuffer bytebuffer, long l)
    {
        bytebuffer.putLong(l);
    }

    public static void a(ByteBuffer bytebuffer, String s)
    {
        int i = 0;
        if (s.getBytes().length != 3)
        {
            throw new IllegalArgumentException((new StringBuilder("\"")).append(s).append("\" language string isn't exactly 3 characters long!").toString());
        }
        int j = 0;
        for (; i < 3; i++)
        {
            j += -96 + s.getBytes()[i] << 5 * (2 - i);
        }

        b(bytebuffer, j);
    }

    public static void b(ByteBuffer bytebuffer, double d1)
    {
        short word0 = (short)(int)(256D * d1);
        bytebuffer.put((byte)((0xff00 & word0) >> 8));
        bytebuffer.put((byte)(word0 & 0xff));
    }

    public static void b(ByteBuffer bytebuffer, int i)
    {
        int j = 0xffff & i;
        d(bytebuffer, j >> 8);
        d(bytebuffer, j & 0xff);
    }

    public static void b(ByteBuffer bytebuffer, long l)
    {
        bytebuffer.putInt((int)l);
    }

    public static void b(ByteBuffer bytebuffer, String s)
    {
        bytebuffer.put(k.a(s));
        d(bytebuffer, 0);
    }

    public static void c(ByteBuffer bytebuffer, int i)
    {
        int j = 0xffff & i;
        d(bytebuffer, j & 0xff);
        d(bytebuffer, j >> 8);
    }

    public static void c(ByteBuffer bytebuffer, long l)
    {
        if (!a && (l < 0L || l > 0x100000000L))
        {
            throw new AssertionError((new StringBuilder("The given long is not in the range of uint32 (")).append(l).append(")").toString());
        } else
        {
            c(bytebuffer, 0xffff & (int)l);
            c(bytebuffer, (int)(65535L & l >> 16));
            return;
        }
    }

    public static void d(ByteBuffer bytebuffer, int i)
    {
        bytebuffer.put((byte)(i & 0xff));
    }

    static 
    {
        boolean flag;
        if (!com/coremedia/iso/g.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
