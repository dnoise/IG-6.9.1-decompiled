// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso;

import java.nio.ByteBuffer;

// Referenced classes of package com.coremedia.iso:
//            e

public final class f
{

    public static long a(ByteBuffer bytebuffer, int i)
    {
        switch (i)
        {
        case 5: // '\005'
        case 6: // '\006'
        case 7: // '\007'
        default:
            throw new RuntimeException((new StringBuilder("I don't know how to read ")).append(i).append(" bytes").toString());

        case 1: // '\001'
            return (long)e.f(bytebuffer);

        case 2: // '\002'
            return (long)e.d(bytebuffer);

        case 3: // '\003'
            return (long)e.c(bytebuffer);

        case 4: // '\004'
            return e.b(bytebuffer);

        case 8: // '\b'
            return e.h(bytebuffer);
        }
    }
}
