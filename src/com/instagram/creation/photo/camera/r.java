// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.camera;

import android.content.Context;
import com.instagram.camera.h;
import com.instagram.creation.photo.c.c;

// Referenced classes of package com.instagram.creation.photo.camera:
//            c

final class r extends c
{

    final com.instagram.creation.photo.camera.c a;

    public r(com.instagram.creation.photo.camera.c c1, Context context)
    {
        a = c1;
        super(context);
    }

    public final void a(float f)
    {
        if (f == -1F || a.l() == null)
        {
            c.a(a, 0.0F);
        } else
        {
            c.a(a, h.a(Math.round(f), c.A(a)));
            c.a(a, f - (float)c.A(a));
            for (; c.x(a) > 180F; c.B(a)) { }
            for (; c.x(a) < -180F; c.C(a)) { }
            int i = c.A(a) + h.a(a.l());
            if (c.D(a) != i)
            {
                c.b(a, i);
                com.instagram.creation.photo.camera.c.c(a, c.D(a));
                return;
            }
        }
    }
}
