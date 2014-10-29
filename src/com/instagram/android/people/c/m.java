// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.c;

import android.content.Context;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.api.j.a;
import com.instagram.api.j.j;
import com.instagram.ui.dialog.f;

// Referenced classes of package com.instagram.android.people.c:
//            a

final class m extends a
{

    final com.instagram.android.people.c.a a;
    private f b;

    private m(com.instagram.android.people.c.a a1)
    {
        a = a1;
        super();
    }

    m(com.instagram.android.people.c.a a1, byte byte0)
    {
        this(a1);
    }

    public final void a()
    {
        b = new f(com.instagram.android.people.c.a.f(a));
        b.a(com.instagram.android.people.c.a.f(a).getString(az.removing));
        b.show();
    }

    protected final void a(j j)
    {
        Toast.makeText(com.instagram.android.people.c.a.f(a), az.request_error, 0).show();
    }

    protected final volatile void a(Object obj)
    {
    }

    public final void b()
    {
        b.hide();
    }
}
