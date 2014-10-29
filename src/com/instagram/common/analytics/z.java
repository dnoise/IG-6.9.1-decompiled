// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import java.util.zip.CRC32;

// Referenced classes of package com.instagram.common.analytics:
//            aa

public final class z
{

    private long a;
    private aa b;

    public z()
    {
        this((byte)0);
    }

    private z(byte byte0)
    {
        a = -1L;
    }

    private static long a(long l, String s)
    {
        if (s == null || l < 1L)
        {
            return -1L;
        } else
        {
            CRC32 crc32 = new CRC32();
            crc32.update(s.getBytes());
            return crc32.getValue() % l;
        }
    }

    private long b()
    {
        if (a < 0L)
        {
            return 2003L;
        } else
        {
            return a;
        }
    }

    protected final aa a(String s)
    {
        if (b != null)
        {
            return b;
        } else
        {
            long l = b();
            b = new aa(l, a(l, s));
            return b;
        }
    }

    protected final void a()
    {
        b = null;
    }
}
