// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.userservice;

import com.android.internal.util.Predicate;
import com.instagram.common.y.e;
import com.instagram.user.c.a;
import com.instagram.user.userservice.a.i;
import java.util.BitSet;
import java.util.HashSet;
import java.util.Set;

public final class d
{

    private final Set a[] = (Set[])new Set[30];

    public d()
    {
    }

    private static int a(CharSequence charsequence)
    {
        return Character.toLowerCase(charsequence.charAt(0)) % 30;
    }

    private static BitSet c(a a1)
    {
        BitSet bitset = new BitSet(30);
        if (a1.b() != null && a1.b().length() > 0)
        {
            bitset.set(a(a1.b()));
        }
        if (a1.c() != null)
        {
            String as[] = a1.c().split(" ");
            int j = as.length;
            for (int k = 0; k < j; k++)
            {
                String s = as[k];
                if (!e.c(s))
                {
                    bitset.set(a(s));
                }
            }

        }
        return bitset;
    }

    public final void a()
    {
        Set aset[] = a;
        int j = aset.length;
        for (int k = 0; k < j; k++)
        {
            Set set = aset[k];
            if (set != null)
            {
                set.clear();
            }
        }

    }

    public final void a(a a1)
    {
        BitSet bitset = c(a1);
        for (int j = bitset.nextSetBit(0); j >= 0; j = bitset.nextSetBit(j + 1))
        {
            if (a[j] == null)
            {
                a[j] = new HashSet();
            }
            a[j].add(a1);
        }

    }

    public final void a(CharSequence charsequence, Set set, Predicate predicate)
    {
        int j = a(charsequence);
        if (a[j] != null)
        {
            i.a(charsequence, set, a[j], predicate);
        }
    }

    public final void b(a a1)
    {
        BitSet bitset = c(a1);
        for (int j = bitset.nextSetBit(0); j >= 0; j = bitset.nextSetBit(j + 1))
        {
            Set set = a[j];
            if (set != null)
            {
                set.remove(a1);
            }
        }

    }
}
