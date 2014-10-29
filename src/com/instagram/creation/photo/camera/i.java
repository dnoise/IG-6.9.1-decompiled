// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.camera;

import com.instagram.camera.b;
import com.instagram.camera.d;
import com.instagram.camera.h;

// Referenced classes of package com.instagram.creation.photo.camera:
//            c

final class i
    implements Runnable
{

    final c a;

    i(c c1)
    {
        a = c1;
        super();
    }

    public final void run()
    {
        try
        {
            c.a(a, h.a(a.l(), c.j(a)));
            return;
        }
        catch (d d1)
        {
            c.k(a);
            return;
        }
        catch (b b1)
        {
            c.l(a);
        }
    }
}
