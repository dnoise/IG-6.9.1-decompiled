// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.activity.tabactivity;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.instagram.base.activity.tabactivity:
//            f, i, IgTabHost, e, 
//            d

public final class h
{

    final IgTabHost a;
    private String b;
    private e c;
    private d d;

    private h(IgTabHost igtabhost, String s)
    {
        a = igtabhost;
        super();
        b = s;
    }

    h(IgTabHost igtabhost, String s, byte byte0)
    {
        this(igtabhost, s);
    }

    static e a(h h1)
    {
        return h1.c;
    }

    static d b(h h1)
    {
        return h1.d;
    }

    public final h a(Intent intent)
    {
        d = new f(a, b, intent, (byte)0);
        return this;
    }

    public final h a(View view)
    {
        c = new i(a, view, (byte)0);
        return this;
    }

    public final String a()
    {
        return b;
    }
}
