// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.f;

import com.instagram.feed.d.ai;
import java.util.List;

// Referenced classes of package com.instagram.feed.f:
//            b

public final class a
{

    private b a;
    private String b;
    private boolean c;

    private a()
    {
        a = b.a;
    }

    public static a a()
    {
        return new a();
    }

    public final void a(b b1, String s)
    {
        a = b1;
        b = s;
    }

    public final void a(List list)
    {
        if (list != null && !list.isEmpty())
        {
            String s = ((ai)list.get(-1 + list.size())).f();
            a = b.c;
            b = s;
            return;
        } else
        {
            a = b.a;
            return;
        }
    }

    public final b b()
    {
        return a;
    }

    public final String c()
    {
        return b;
    }

    public final boolean d()
    {
        return c;
    }

    public final void e()
    {
        c = true;
    }
}
