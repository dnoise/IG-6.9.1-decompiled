// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.b;

import android.graphics.PointF;
import android.support.v4.app.s;
import com.instagram.android.people.widget.PhotoScrollView;
import com.instagram.android.people.widget.f;

// Referenced classes of package com.instagram.android.people.b:
//            a, h

final class b
    implements f
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public final void a()
    {
        h.a(a.p());
    }

    public final void a(PointF pointf)
    {
        if (com.instagram.android.people.b.a.a(a) != null)
        {
            com.instagram.android.people.b.a.a(a).setScrollTarget(pointf.y);
        }
        com.instagram.android.people.b.a.a(a, false);
        com.instagram.android.people.b.a.b(a);
    }

    public final void b()
    {
        a.p().c("PeopleTagSearch");
        com.instagram.android.people.b.a.a(a, true);
        com.instagram.android.people.b.a.b(a);
    }

    public final void b(PointF pointf)
    {
        if (com.instagram.android.people.b.a.a(a) != null)
        {
            com.instagram.android.people.b.a.a(a).setScrollTarget(pointf.y);
        }
    }
}
