// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.view.View;
import com.instagram.creation.b.a.b;
import com.instagram.creation.video.a;

// Referenced classes of package com.instagram.creation.video.f:
//            a, v

final class t
    implements android.view.View.OnClickListener
{

    final com.instagram.creation.video.f.a a;

    t(com.instagram.creation.video.f.a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        if (com.instagram.creation.video.f.a.b(a).c() < 3000)
        {
            a.Z();
            return;
        } else
        {
            com.instagram.creation.video.f.a.p(a);
            v v1 = new v(a, (byte)0);
            b ab[] = new b[1];
            ab[0] = com.instagram.creation.video.f.a.q(a);
            v1.b(ab);
            return;
        }
    }
}
