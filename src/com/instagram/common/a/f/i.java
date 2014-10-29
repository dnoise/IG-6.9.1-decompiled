// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.f;

import com.instagram.common.l.a.b;
import java.io.OutputStream;

// Referenced classes of package com.instagram.common.a.f:
//            b, c

final class i
    implements com.instagram.common.a.f.b
{

    private final byte a[];

    public transient i(String as[])
    {
        a = b.a("").a(as).getBytes();
    }

    public final long a()
    {
        return (long)a.length;
    }

    public final void a(OutputStream outputstream, c c1)
    {
        c1.a(0L);
        outputstream.write(a);
    }
}
