// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.instagram.common.analytics.a;
import com.instagram.common.analytics.b;
import com.instagram.common.analytics.d;
import com.instagram.feed.d.l;
import java.util.Iterator;
import java.util.List;

final class dg
    implements Runnable
{

    private final String a;
    private final List b;

    dg(String s, List list)
    {
        a = s;
        b = list;
    }

    public final void run()
    {
        int i;
        if (a == null)
        {
            i = b.size();
        } else
        {
            Iterator iterator = b.iterator();
            i = 0;
            while (iterator.hasNext() && !((l)iterator.next()).f().equals(a)) 
            {
                i++;
            }
        }
        com.instagram.common.analytics.a.a().a((new b("main_feed_load", null)).a("num_new_items", i));
    }
}
