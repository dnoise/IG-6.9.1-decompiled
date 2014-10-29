// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;


public final class d
{

    int a;
    short b;

    public d(int i, short word0)
    {
        a = i;
        b = word0;
    }

    public final int a()
    {
        return a;
    }

    public final short b()
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
            d d1 = (d)obj;
            if (a != d1.a)
            {
                return false;
            }
            if (b != d1.b)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        return 31 * a + b;
    }

    public final String toString()
    {
        return (new StringBuilder("{availableBitrate=")).append(a).append(", targetRateShare=").append(b).append('}').toString();
    }
}
