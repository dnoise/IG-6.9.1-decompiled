// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.googlecode.mp4parser.boxes.mp4.a.c;
import com.googlecode.mp4parser.boxes.mp4.a.d;
import java.nio.ByteBuffer;

public final class a
{

    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private boolean f;
    private int g;

    public a()
    {
    }

    public a(ByteBuffer bytebuffer)
    {
        boolean flag = true;
        super();
        c c1 = new c(bytebuffer);
        a = c1.a(6);
        b = c1.a(2);
        c = c1.a(2);
        d = c1.a(2);
        e = c1.a(3);
        if (c1.a(flag) != flag)
        {
            flag = false;
        }
        f = flag;
        g = c1.a(16);
    }

    public final void a(ByteBuffer bytebuffer)
    {
        d d1 = new d(bytebuffer);
        d1.a(a, 6);
        d1.a(b, 2);
        d1.a(c, 2);
        d1.a(d, 2);
        d1.a(e, 3);
        int i;
        if (f)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        d1.a(i, 1);
        d1.a(g, 16);
    }

    public final boolean a()
    {
        return f;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            a a1 = (a)obj;
            if (a != a1.a)
            {
                return false;
            }
            if (g != a1.g)
            {
                return false;
            }
            if (b != a1.b)
            {
                return false;
            }
            if (d != a1.d)
            {
                return false;
            }
            if (c != a1.c)
            {
                return false;
            }
            if (f != a1.f)
            {
                return false;
            }
            if (e != a1.e)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        int i = 31 * (31 * (31 * (31 * (31 * a + b) + c) + d) + e);
        int j;
        if (f)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        return 31 * (j + i) + g;
    }

    public final String toString()
    {
        return (new StringBuilder("SampleFlags{reserved=")).append(a).append(", sampleDependsOn=").append(b).append(", sampleHasRedundancy=").append(d).append(", samplePaddingValue=").append(e).append(", sampleIsDifferenceSample=").append(f).append(", sampleDegradationPriority=").append(g).append('}').toString();
    }
}
