// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.e;

import com.instagram.api.k.a.d;
import com.instagram.user.c.a;
import java.util.Iterator;
import java.util.List;

public final class b extends d
{

    List a;

    public b()
    {
    }

    public final List b()
    {
        return a;
    }

    final b c()
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((a)iterator.next()).a(Boolean.valueOf(true))) { }
        return this;
    }
}
