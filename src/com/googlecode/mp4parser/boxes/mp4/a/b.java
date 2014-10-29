// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.a;

import com.coremedia.iso.e;
import java.nio.ByteBuffer;

public abstract class b
{

    static final boolean W;
    int T;
    int U;
    int V;

    public b()
    {
    }

    public final int a()
    {
        return 1 + U + V;
    }

    public final void a(int i, ByteBuffer bytebuffer)
    {
        T = i;
        int j = e.f(bytebuffer);
        U = j & 0x7f;
        int k = 1;
        while (j >>> 7 == 1) 
        {
            j = e.f(bytebuffer);
            k++;
            U = U << 7 | j & 0x7f;
        }
        V = k;
        ByteBuffer bytebuffer1 = bytebuffer.slice();
        bytebuffer1.limit(U);
        a(bytebuffer1);
        if (!W && bytebuffer1.remaining() != 0)
        {
            throw new AssertionError((new StringBuilder()).append(getClass().getSimpleName()).append(" has not been fully parsed").toString());
        } else
        {
            bytebuffer.position(bytebuffer.position() + U);
            return;
        }
    }

    public abstract void a(ByteBuffer bytebuffer);

    public final int b()
    {
        return U;
    }

    public final int c()
    {
        return V;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("BaseDescriptor");
        stringbuilder.append("{tag=").append(T);
        stringbuilder.append(", sizeOfInstance=").append(U);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    static 
    {
        boolean flag;
        if (!com/googlecode/mp4parser/boxes/mp4/a/b.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        W = flag;
    }
}
