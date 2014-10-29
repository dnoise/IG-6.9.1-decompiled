// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.camera;

import android.view.View;
import com.instagram.camera.g;

// Referenced classes of package com.instagram.creation.photo.camera:
//            c

final class l
    implements android.view.View.OnClickListener
{

    final c a;

    l(c c1)
    {
        a = c1;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.camera.k k = c.p(a);
        int i;
        if (c.j(a) == c.r(a))
        {
            i = c.s(a);
        } else
        {
            i = c.r(a);
        }
        g.a(k, i);
        a.V();
    }
}
