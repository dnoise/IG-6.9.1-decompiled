// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.f;

import android.graphics.RectF;
import com.instagram.common.l.a.f;
import com.instagram.creation.b.a.b;
import com.instagram.creation.video.e.c;
import java.io.File;

// Referenced classes of package com.instagram.creation.video.g.f:
//            f

public final class e
{

    public final File a;
    public final File b;
    public final RectF c;
    public final int d;
    public final int e;
    public final b f;
    public final c g;
    public final com.instagram.creation.video.g.a.e h;

    e(com.instagram.creation.video.g.f.f f1)
    {
        a = (File)com.instagram.common.l.a.f.a(f1.a());
        b = (File)com.instagram.common.l.a.f.a(f1.b());
        c = f1.c();
        d = f1.d();
        e = f1.e();
        h = f1.f();
        f = (b)com.instagram.common.l.a.f.a(f1.g());
        g = (c)com.instagram.common.l.a.f.a(f1.h());
    }

    public static com.instagram.creation.video.g.f.f a()
    {
        return new com.instagram.creation.video.g.f.f();
    }
}
