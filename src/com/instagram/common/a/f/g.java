// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.f;

import java.io.InputStream;
import java.io.OutputStream;

// Referenced classes of package com.instagram.common.a.f:
//            b, h, c

final class g
    implements b
{

    private final h a;

    public g(h h1)
    {
        a = h1;
    }

    public final long a()
    {
        return a.b();
    }

    public final void a(OutputStream outputstream, c c1)
    {
        int i;
        InputStream inputstream;
        i = 0;
        inputstream = a.d();
        c1.a(0L);
        byte abyte0[] = new byte[4096];
_L1:
        int j = inputstream.read(abyte0);
        if (j == -1)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        outputstream.write(abyte0, 0, j);
        i += j;
        c1.a(i);
          goto _L1
        Exception exception;
        exception;
        inputstream.close();
        throw exception;
        outputstream.flush();
        inputstream.close();
        return;
    }
}
