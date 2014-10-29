// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import com.instagram.common.y.e;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.instagram.feed.survey:
//            aj

public final class j
{

    String a;
    String b;
    String c;
    String d;
    String e;
    boolean f;
    List g;
    private int h;

    public j()
    {
        h = aj.a;
    }

    public final String a()
    {
        return a;
    }

    public final String b()
    {
        return c;
    }

    public final String c()
    {
        return d;
    }

    public final String d()
    {
        return e;
    }

    public final boolean e()
    {
        return f;
    }

    public final int f()
    {
        return h;
    }

    public final List g()
    {
        return Collections.unmodifiableList(g);
    }

    final j h()
    {
        if (com.instagram.common.y.e.c(e))
        {
            h = aj.a;
            return this;
        } else
        {
            h = aj.b;
            return this;
        }
    }
}
