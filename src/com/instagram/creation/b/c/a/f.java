// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.c.a;

import ch.boye.httpclientandroidlib.message.BasicHeader;
import com.instagram.common.a.a.a;
import com.instagram.common.a.c.b;
import com.instagram.common.y.e;
import com.instagram.creation.b.a.j;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.creation.b.c.a:
//            h

public final class f extends a
{

    private j a;
    private File b;
    private int d;
    private int e;
    private String f;

    public f(String s, j j1, File file, int i, int k)
    {
        f = s;
        a = j1;
        b = file;
        d = i;
        e = k;
    }

    public final b a()
    {
        h h1 = new h(b, d, e);
        h1.a("video", b);
        return h1;
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    public final String g_()
    {
        return a.c();
    }

    public final List l()
    {
        ArrayList arraylist = new ArrayList(4);
        arraylist.add(new BasicHeader("Content-Disposition", "attachment; filename=\\\"video.mov\\\""));
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(d);
        aobj[1] = Integer.valueOf(-1 + (d + e));
        aobj[2] = Long.valueOf(b.length());
        arraylist.add(new BasicHeader("Content-Range", com.instagram.common.y.e.a("bytes %s-%s/%s", aobj)));
        arraylist.add(new BasicHeader("Session-ID", f));
        arraylist.add(new BasicHeader("job", a.b()));
        return arraylist;
    }
}
