// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;


public final class f
{

    private long a;
    private int b;

    public f(long l, int i)
    {
        a = l;
        b = i;
    }

    public final long a()
    {
        return a;
    }

    public final int b()
    {
        return b;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            f f1 = (f)obj;
            if (b != f1.b)
            {
                return false;
            }
            if (a != f1.a)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        return 31 * (int)(a ^ a >>> 32) + b;
    }

    public final String toString()
    {
        return (new StringBuilder("Entry{sampleCount=")).append(a).append(", groupDescriptionIndex=").append(b).append('}').toString();
    }
}
