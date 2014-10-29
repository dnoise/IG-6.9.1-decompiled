// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.f;

import com.instagram.creation.video.g.b.a;
import java.nio.ByteBuffer;

final class d
    implements a
{

    private final ByteBuffer a = ByteBuffer.allocateDirect(0x100000);
    private final android.media.MediaCodec.BufferInfo b = new android.media.MediaCodec.BufferInfo();

    public d()
    {
    }

    public final ByteBuffer a()
    {
        return a;
    }

    public final void a(int i, long l, int j)
    {
        b.set(0, i, l, j);
    }

    public final android.media.MediaCodec.BufferInfo b()
    {
        return b;
    }
}
