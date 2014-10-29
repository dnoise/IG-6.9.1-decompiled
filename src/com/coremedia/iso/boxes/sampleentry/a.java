// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import java.nio.ByteBuffer;

public final class a
{

    int a;
    int b;
    int c;
    int d;

    public a()
    {
    }

    public final void a(ByteBuffer bytebuffer)
    {
        a = e.d(bytebuffer);
        b = e.d(bytebuffer);
        c = e.d(bytebuffer);
        d = e.d(bytebuffer);
    }

    public final void b(ByteBuffer bytebuffer)
    {
        g.b(bytebuffer, a);
        g.b(bytebuffer, b);
        g.b(bytebuffer, c);
        g.b(bytebuffer, d);
    }
}
