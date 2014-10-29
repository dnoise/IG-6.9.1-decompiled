// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.a;

import ch.boye.httpclientandroidlib.message.BasicHeader;
import com.instagram.api.k.a.c;
import com.instagram.feed.f.a;
import com.instagram.feed.f.b;
import java.util.ArrayList;
import java.util.List;

public abstract class h extends c
{

    private final boolean a;
    protected final a b;

    public h()
    {
        a = false;
        b = null;
    }

    public h(a a1, boolean flag)
    {
        b = a1;
        a = flag;
    }

    protected void a(com.instagram.common.a.c.b b1)
    {
        if (!a && b != null)
        {
            b b2 = b.b();
            if (b2.d != null)
            {
                b1.a(b2.d, b.c());
            }
        }
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.c;
    }

    protected final String d_()
    {
        return e();
    }

    protected abstract String e();

    public final List l()
    {
        String s = com.instagram.l.a.b.a().i();
        if (s != null)
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(new BasicHeader("X-Attribution-ID", s));
            return arraylist;
        } else
        {
            return null;
        }
    }
}
