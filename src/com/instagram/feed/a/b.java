// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.a;

import com.fasterxml.jackson.a.l;
import com.instagram.api.k.a.d;
import com.instagram.common.y.e;
import com.instagram.l.b.a;
import java.io.File;

// Referenced classes of package com.instagram.feed.a:
//            h, g, c

public final class b extends h
{

    private final File a;

    public b(com.instagram.feed.f.a a1, boolean flag, File file)
    {
        super(a1, flag);
        a = file;
    }

    private static c b(l l)
    {
        return com.instagram.feed.a.g.a(l);
    }

    protected final d a(l l)
    {
        return b(l);
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        super.a(b1);
        String s = com.instagram.l.b.a.a().C();
        if (!com.instagram.common.y.e.c(s) && !com.instagram.l.b.a.a().D())
        {
            b1.a("last_unseen_ad_id", s);
        }
    }

    protected final String e()
    {
        return "feed/timeline/";
    }

    public final File f()
    {
        return a;
    }
}
