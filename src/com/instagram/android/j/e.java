// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.j;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class e
{

    private final Map a = new HashMap();

    public e()
    {
    }

    public final List a(String s)
    {
        return (List)a.get(s);
    }

    public final void a()
    {
        a.clear();
    }

    public final void a(String s, List list)
    {
        a.put(s, list);
    }
}
