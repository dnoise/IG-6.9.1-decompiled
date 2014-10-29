// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.b;

import com.facebook.az;
import com.instagram.android.widget.IndeterminateCheckBox;
import com.instagram.api.j.a;
import com.instagram.api.j.j;
import com.instagram.o.e;

// Referenced classes of package com.instagram.android.people.b:
//            q

final class u extends a
{

    final q a;

    private u(q q1)
    {
        a = q1;
        super();
    }

    u(q q1, byte byte0)
    {
        this(q1);
    }

    public final void a(j j)
    {
        e.a(az.people_tagging_settings_change_fail);
    }

    protected final void a(Object obj)
    {
        q.c(a);
    }

    public final void b()
    {
        com.instagram.android.people.b.q.a(a).setIndeterminate(false);
        q.b(a).setIndeterminate(false);
    }
}
