// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes;


// Referenced classes of package com.googlecode.mp4parser.boxes:
//            a

public final class b
{

    public int a;
    public long b;
    final a c;

    public b(a a1, int i, long l)
    {
        c = a1;
        super();
        a = i;
        b = l;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            b b1 = (b)obj;
            if (a != b1.a)
            {
                return false;
            }
            if (b != b1.b)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        return 31 * a + (int)(b ^ b >>> 32);
    }

    public final String toString()
    {
        return (new StringBuilder("clr:")).append(a).append(" enc:").append(b).toString();
    }
}
