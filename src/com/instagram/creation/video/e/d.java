// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.e;

import android.content.Context;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.instagram.creation.video.e:
//            c, a

public final class d
{

    private Context a;
    private int b;
    private String c;
    private int d;
    private String e;
    private List f;

    public d()
    {
        f = new LinkedList();
    }

    public final c a()
    {
        return new c(a, b, c, d, e, f);
    }

    public final d a(int i)
    {
        b = i;
        return this;
    }

    public final d a(Context context)
    {
        a = context;
        return this;
    }

    public final d a(String s)
    {
        e = s;
        return this;
    }

    public final d a(String s, String s1)
    {
        f.add(new a(s, s1));
        return this;
    }

    public final d b(int i)
    {
        d = i;
        return this;
    }

    public final d b(String s)
    {
        c = s;
        return this;
    }
}
