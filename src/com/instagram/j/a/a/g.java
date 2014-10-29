// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.a.a;

import android.view.View;
import com.instagram.j.d.c;
import com.instagram.j.d.f;
import java.util.List;

// Referenced classes of package com.instagram.j.a.a:
//            a

final class g
    implements android.view.View.OnClickListener
{

    final a a;
    final c b;
    final int c;

    g(a a1, c c1, int i)
    {
        a = a1;
        b = c1;
        c = i;
        super();
    }

    public final void onClick(View view)
    {
        a.b(((f)b.h().get(c)).a());
    }
}
