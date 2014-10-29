// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.userservice.a;

import com.android.internal.util.Predicate;
import com.instagram.common.y.e;
import com.instagram.user.c.a;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public final class i
{

    public static void a(CharSequence charsequence, Set set, Collection collection, Predicate predicate)
    {
        String s = charsequence.toString();
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            a a1 = (a)iterator.next();
            if (!e.c(a1.b()) && e.a(a1.b(), s, 0))
            {
                a(set, predicate, a1);
            }
            String s1 = a1.c();
            if (!e.c(s1) && e.b(s1, s))
            {
                a(set, predicate, a1);
            }
        } while (true);
    }

    private static void a(Set set, Predicate predicate, a a1)
    {
        if (predicate == null || predicate.apply(a1))
        {
            set.add(a1);
        }
    }
}
