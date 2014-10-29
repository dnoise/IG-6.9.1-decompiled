// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.c;

import com.fasterxml.jackson.a.u;
import java.io.Serializable;

// Referenced classes of package com.fasterxml.jackson.a.c:
//            f

public final class l
    implements u, Serializable
{

    protected final String a;
    protected byte b[];
    protected byte c[];
    protected char d[];

    public l(String s)
    {
        if (s == null)
        {
            throw new IllegalStateException("Null String illegal for SerializedString");
        } else
        {
            a = s;
            return;
        }
    }

    public final int a(byte abyte0[], int i)
    {
        byte abyte1[] = b;
        if (abyte1 == null)
        {
            abyte1 = f.a().b(a);
            b = abyte1;
        }
        int j = abyte1.length;
        if (i + j > abyte0.length)
        {
            return -1;
        } else
        {
            System.arraycopy(abyte1, 0, abyte0, i, j);
            return j;
        }
    }

    public final String a()
    {
        return a;
    }

    public final char[] b()
    {
        char ac[] = d;
        if (ac == null)
        {
            ac = f.a().a(a);
            d = ac;
        }
        return ac;
    }

    public final byte[] c()
    {
        byte abyte0[] = c;
        if (abyte0 == null)
        {
            abyte0 = f.a().c(a);
            c = abyte0;
        }
        return abyte0;
    }

    public final byte[] d()
    {
        byte abyte0[] = b;
        if (abyte0 == null)
        {
            abyte0 = f.a().b(a);
            b = abyte0;
        }
        return abyte0;
    }

    public final boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (obj == null || obj.getClass() != getClass())
        {
            return false;
        } else
        {
            l l1 = (l)obj;
            return a.equals(l1.a);
        }
    }

    public final int hashCode()
    {
        return a.hashCode();
    }

    public final String toString()
    {
        return a;
    }
}
