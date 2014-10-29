// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.b;

import java.nio.FloatBuffer;
import java.nio.IntBuffer;

// Referenced classes of package com.instagram.filterkit.b:
//            e

public final class f extends e
{

    private IntBuffer a;
    private FloatBuffer b;

    public f(String s, int i, int j, int k)
    {
        super(s, i, j, k);
    }

    public final void a(FloatBuffer floatbuffer)
    {
        b = floatbuffer;
    }

    public final void a(IntBuffer intbuffer)
    {
        a = intbuffer;
    }

    public final IntBuffer c()
    {
        return a;
    }

    public final FloatBuffer d()
    {
        return b;
    }
}
