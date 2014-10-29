// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;

import java.nio.ByteBuffer;

// Referenced classes of package com.googlecode.mp4parser.boxes.piff:
//            b

public final class c extends b
{

    ByteBuffer b;

    public c(int i)
    {
        super(i);
    }

    public final ByteBuffer a()
    {
        return b;
    }

    public final void a(ByteBuffer bytebuffer)
    {
        b = bytebuffer.duplicate();
    }
}
