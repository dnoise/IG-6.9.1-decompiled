// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import java.nio.ByteBuffer;

public final class b
{

    int a;
    int b;
    int c;
    int d;
    int e;
    int f[] = {
        255, 255, 255, 255
    };

    public b()
    {
    }

    public final void a(ByteBuffer bytebuffer)
    {
        a = com.coremedia.iso.e.d(bytebuffer);
        b = com.coremedia.iso.e.d(bytebuffer);
        c = com.coremedia.iso.e.d(bytebuffer);
        d = com.coremedia.iso.e.f(bytebuffer);
        e = com.coremedia.iso.e.f(bytebuffer);
        f = new int[4];
        f[0] = com.coremedia.iso.e.f(bytebuffer);
        f[1] = com.coremedia.iso.e.f(bytebuffer);
        f[2] = com.coremedia.iso.e.f(bytebuffer);
        f[3] = com.coremedia.iso.e.f(bytebuffer);
    }

    public final void b(ByteBuffer bytebuffer)
    {
        g.b(bytebuffer, a);
        g.b(bytebuffer, b);
        g.b(bytebuffer, c);
        g.d(bytebuffer, d);
        g.d(bytebuffer, e);
        g.d(bytebuffer, f[0]);
        g.d(bytebuffer, f[1]);
        g.d(bytebuffer, f[2]);
        g.d(bytebuffer, f[3]);
    }
}
