// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.view.View;
import com.instagram.creation.video.a;
import com.instagram.creation.video.ui.l;

// Referenced classes of package com.instagram.creation.video.f:
//            a

final class n
    implements android.view.View.OnClickListener
{

    final View a;
    final com.instagram.creation.video.f.a b;

    n(com.instagram.creation.video.f.a a1, View view)
    {
        b = a1;
        a = view;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.creation.video.f.a.b(b).k();
        (new l(b.n(), com.instagram.creation.video.f.a.b(b), com.instagram.creation.video.f.a.j(b))).showAtLocation(a, 51, 0, 0);
    }
}
