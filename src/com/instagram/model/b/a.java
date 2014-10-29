// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.model.b;


// Referenced classes of package com.instagram.model.b:
//            b

public final class a
    implements Comparable
{

    com.instagram.user.c.a a;
    boolean b;
    boolean c;
    boolean d;

    a()
    {
    }

    private int a(a a1)
    {
        if (c == a1.c()) goto _L2; else goto _L1
_L1:
        if (!c) goto _L4; else goto _L3
_L3:
        return -1;
_L4:
        return 1;
_L2:
        if (d == a1.d())
        {
            break; /* Loop/switch isn't completed */
        }
        if (!d)
        {
            return 1;
        }
        if (true) goto _L3; else goto _L5
_L5:
        if (b != a1.b())
        {
            if (!b)
            {
                return 1;
            }
        } else
        {
            return a().b().compareToIgnoreCase(a1.a().b());
        }
        if (true) goto _L3; else goto _L6
_L6:
    }

    public final com.instagram.user.c.a a()
    {
        return a;
    }

    public final void a(int i, boolean flag)
    {
        b.a[i - 1];
        JVM INSTR tableswitch 1 3: default 32
    //                   1 42
    //                   2 48
    //                   3 66;
           goto _L1 _L2 _L3 _L4
_L1:
        throw new IllegalArgumentException("Unsupported argument");
_L2:
        b = flag;
_L6:
        return;
_L3:
        c = flag;
        if (c)
        {
            b = true;
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        d = flag;
        if (d)
        {
            b = true;
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final boolean a(int i)
    {
        switch (b.a[i - 1])
        {
        default:
            throw new IllegalArgumentException("Unsupported argument");

        case 1: // '\001'
            return b;

        case 2: // '\002'
            return c;

        case 3: // '\003'
            return d;
        }
    }

    public final boolean b()
    {
        return b;
    }

    public final boolean c()
    {
        return c;
    }

    public final int compareTo(Object obj)
    {
        return a((a)obj);
    }

    public final boolean d()
    {
        return d;
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
            if (a == null)
            {
                if (a1.a() != null)
                {
                    return false;
                }
            } else
            {
                return a.equals(a1.a());
            }
        }
        return true;
    }

    public final int hashCode()
    {
        if (a == null)
        {
            return 0;
        } else
        {
            return a.hashCode();
        }
    }
}
