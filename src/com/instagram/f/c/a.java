// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.c;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

public final class a
{

    private int a;
    private com.instagram.user.c.a b;
    private long c;

    public a()
    {
    }

    public static a a(l l1)
    {
        a a1 = new a();
        if (l1.getCurrentToken() != r.m)
        {
            do
            {
                if (l1.nextToken() == r.c)
                {
                    break;
                }
                String s = l1.getCurrentName();
                if ("number_of_requests".equals(s))
                {
                    l1.nextToken();
                    a1.a(l1.getValueAsInt());
                } else
                if ("user".equals(s))
                {
                    l1.nextToken();
                    a1.a(com.instagram.user.c.a.a(l1));
                } else
                if ("requested_at".equals(s))
                {
                    l1.nextToken();
                    a1.a(l1.getValueAsLong());
                } else
                if (s != null)
                {
                    l1.skipChildren();
                }
            } while (true);
        }
        return a1;
    }

    private void a(int i)
    {
        a = i;
    }

    private void a(long l1)
    {
        c = l1;
    }

    public final com.instagram.user.c.a a()
    {
        return b;
    }

    public final void a(com.instagram.user.c.a a1)
    {
        b = a1;
    }

    public final int b()
    {
        return a;
    }

    public final long c()
    {
        return c;
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
            if (b == null)
            {
                if (a1.a() != null)
                {
                    return false;
                }
            } else
            {
                return b.equals(a1.a());
            }
        }
        return true;
    }

    public final int hashCode()
    {
        if (b == null)
        {
            return 0;
        } else
        {
            return b.hashCode();
        }
    }
}
