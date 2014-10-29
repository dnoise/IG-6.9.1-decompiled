// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.threegpp26245;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import java.nio.ByteBuffer;

public final class a
{

    int a;
    String b;

    public a()
    {
    }

    public final int a()
    {
        return 3 + k.b(b);
    }

    public final void a(ByteBuffer bytebuffer)
    {
        a = e.d(bytebuffer);
        b = e.a(bytebuffer, e.f(bytebuffer));
    }

    public final void b(ByteBuffer bytebuffer)
    {
        g.b(bytebuffer, a);
        g.d(bytebuffer, b.length());
        bytebuffer.put(k.a(b));
    }

    public final String toString()
    {
        return (new StringBuilder("FontRecord{fontId=")).append(a).append(", fontname='").append(b).append('\'').append('}').toString();
    }
}
