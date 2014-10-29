// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.f;

import android.graphics.RectF;
import com.instagram.creation.b.a.b;
import com.instagram.creation.video.e.c;
import com.instagram.creation.video.g.a.e;
import java.io.File;

// Referenced classes of package com.instagram.creation.video.g.f:
//            e

public final class f
{

    public File a;
    public File b;
    private RectF c;
    private int d;
    private int e;
    private e f;
    private b g;
    private c h;

    f()
    {
        c = new RectF(0.0F, 0.0F, 1.0F, 1.0F);
        d = -1;
        e = -2;
    }

    public final f a(int j)
    {
        d = j;
        return this;
    }

    public final f a(b b1)
    {
        g = b1;
        return this;
    }

    public final f a(c c1)
    {
        h = c1;
        return this;
    }

    public final f a(e e1)
    {
        f = e1;
        return this;
    }

    public final f a(File file)
    {
        a = file;
        return this;
    }

    public final File a()
    {
        return a;
    }

    public final f b(int j)
    {
        e = j;
        return this;
    }

    public final f b(File file)
    {
        b = file;
        return this;
    }

    public final File b()
    {
        return b;
    }

    public final RectF c()
    {
        return c;
    }

    public final int d()
    {
        return d;
    }

    public final int e()
    {
        return e;
    }

    public final e f()
    {
        return f;
    }

    public final b g()
    {
        return g;
    }

    public final c h()
    {
        return h;
    }

    public final com.instagram.creation.video.g.f.e i()
    {
        return new com.instagram.creation.video.g.f.e(this);
    }
}
