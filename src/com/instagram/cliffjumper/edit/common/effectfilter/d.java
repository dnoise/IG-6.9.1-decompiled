// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.effectfilter;

import com.instagram.cliffjumper.edit.common.ui.a;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.instagram.cliffjumper.edit.common.effectfilter:
//            CjFilter, BorderFilter, c, TextureInfo

public final class d
{

    private int a;
    private String b;
    private int c;
    private String d;
    private a e;
    private List f;
    private String g;

    public d()
    {
        f = new LinkedList();
    }

    public final c a()
    {
        CjFilter cjfilter = new CjFilter(a, d, f);
        String s = g;
        BorderFilter borderfilter = null;
        if (s != null)
        {
            borderfilter = new BorderFilter(g);
        }
        return new c(b, c, e, cjfilter, borderfilter);
    }

    public final d a(int i)
    {
        a = i;
        return this;
    }

    public final d a(a a1)
    {
        e = a1;
        return this;
    }

    public final d a(String s)
    {
        d = s;
        return this;
    }

    public final d a(String s, String s1)
    {
        f.add(new TextureInfo(s, s1));
        return this;
    }

    public final d b(int i)
    {
        c = i;
        return this;
    }

    public final d b(String s)
    {
        b = s;
        return this;
    }

    public final d c(String s)
    {
        g = s;
        return this;
    }
}
