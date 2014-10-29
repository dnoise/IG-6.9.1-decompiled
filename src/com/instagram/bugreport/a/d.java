// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.bugreport.a;

import android.content.Context;
import com.instagram.common.y.e;

// Referenced classes of package com.instagram.bugreport.a:
//            a, h, b

public class d
{

    private final Context a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;

    public d(Context context)
    {
        a = context;
    }

    public final b a()
    {
        if (!com.instagram.common.y.e.c(h))
        {
            return new a(a, b, c, d, e, h, i);
        } else
        {
            return new h(a, b, c, d, e, g, f);
        }
    }

    public final d a(String s)
    {
        b = s;
        return this;
    }

    public final d b(String s)
    {
        c = s;
        return this;
    }

    final d c(String s)
    {
        d = s;
        return this;
    }

    final d d(String s)
    {
        e = s;
        return this;
    }

    final d e(String s)
    {
        h = s;
        return this;
    }

    final d f(String s)
    {
        f = s;
        return this;
    }

    final d g(String s)
    {
        g = s;
        return this;
    }

    final d h(String s)
    {
        i = s;
        return this;
    }
}
