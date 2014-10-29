// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso;

import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;

// Referenced classes of package com.coremedia.iso:
//            k, IsoFile

public final class e
{

    private static int a(byte byte0)
    {
        if (byte0 < 0)
        {
            byte0 += 256;
        }
        return byte0;
    }

    public static long a(ByteBuffer bytebuffer)
    {
        long l1 = f(bytebuffer);
        long l2 = f(bytebuffer);
        long l3 = f(bytebuffer);
        return ((long)f(bytebuffer) << 24) + (l3 << 16) + (l2 << 8) + (l1 << 0);
    }

    public static String a(ByteBuffer bytebuffer, int i1)
    {
        byte abyte0[] = new byte[i1];
        bytebuffer.get(abyte0);
        return com.coremedia.iso.k.a(abyte0);
    }

    public static long b(ByteBuffer bytebuffer)
    {
        long l1 = bytebuffer.getInt();
        if (l1 < 0L)
        {
            l1 += 0x100000000L;
        }
        return l1;
    }

    public static int c(ByteBuffer bytebuffer)
    {
        return 0 + (d(bytebuffer) << 8) + a(bytebuffer.get());
    }

    public static int d(ByteBuffer bytebuffer)
    {
        return 0 + (a(bytebuffer.get()) << 8) + a(bytebuffer.get());
    }

    public static int e(ByteBuffer bytebuffer)
    {
        return 0 + a(bytebuffer.get()) + (a(bytebuffer.get()) << 8);
    }

    public static int f(ByteBuffer bytebuffer)
    {
        return a(bytebuffer.get());
    }

    public static String g(ByteBuffer bytebuffer)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        do
        {
            byte byte0 = bytebuffer.get();
            if (byte0 != 0)
            {
                bytearrayoutputstream.write(byte0);
            } else
            {
                return com.coremedia.iso.k.a(bytearrayoutputstream.toByteArray());
            }
        } while (true);
    }

    public static long h(ByteBuffer bytebuffer)
    {
        long l1 = 0L + (b(bytebuffer) << 32);
        if (l1 < 0L)
        {
            throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
        } else
        {
            return l1 + b(bytebuffer);
        }
    }

    public static double i(ByteBuffer bytebuffer)
    {
        byte abyte0[] = new byte[4];
        bytebuffer.get(abyte0);
        return (double)(0 | 0xff000000 & abyte0[0] << 24 | 0xff0000 & abyte0[1] << 16 | 0xff00 & abyte0[2] << 8 | 0xff & abyte0[3]) / 65536D;
    }

    public static float j(ByteBuffer bytebuffer)
    {
        byte abyte0[] = new byte[2];
        bytebuffer.get(abyte0);
        return (float)(short)((short)(0 | 0xff00 & abyte0[0] << 8) | 0xff & abyte0[1]) / 256F;
    }

    public static String k(ByteBuffer bytebuffer)
    {
        int i1 = d(bytebuffer);
        StringBuilder stringbuilder = new StringBuilder();
        for (int j1 = 0; j1 < 3; j1++)
        {
            stringbuilder.append((char)(96 + (0x1f & i1 >> 5 * (2 - j1))));
        }

        return stringbuilder.toString();
    }

    public static String l(ByteBuffer bytebuffer)
    {
        byte abyte0[] = new byte[4];
        bytebuffer.get(abyte0);
        return IsoFile.bytesToFourCC(abyte0);
    }
}
