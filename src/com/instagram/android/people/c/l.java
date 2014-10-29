// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.c;

import android.widget.Toast;
import com.facebook.az;
import com.instagram.android.widget.IndeterminateCheckBox;
import com.instagram.api.j.a;
import com.instagram.api.j.j;

// Referenced classes of package com.instagram.android.people.c:
//            a

final class l extends a
{

    final com.instagram.android.people.c.a a;
    private final String b;

    private l(com.instagram.android.people.c.a a1, String s)
    {
        a = a1;
        super();
        b = s;
    }

    l(com.instagram.android.people.c.a a1, String s, byte byte0)
    {
        this(a1, s);
    }

    private void c()
    {
        if (com.instagram.android.people.c.a.e(a) == null)
        {
            return;
        } else
        {
            com.instagram.android.people.c.a.c(a).setChecked(Boolean.valueOf(b.equals("approve")));
            com.instagram.android.people.c.a.d(a).setChecked(Boolean.valueOf(b.equals("remove")));
            return;
        }
    }

    public final void a()
    {
        com.instagram.android.people.c.a.c(a).setEnabled(false);
        com.instagram.android.people.c.a.d(a).setEnabled(false);
        if (b.equals("approve"))
        {
            com.instagram.android.people.c.a.c(a).setIndeterminate(true);
            return;
        } else
        {
            com.instagram.android.people.c.a.d(a).setIndeterminate(true);
            return;
        }
    }

    protected final void a(j j)
    {
        super.a(j);
        Toast.makeText(com.instagram.android.people.c.a.f(a), az.people_tagging_modify_photos_of_you_failure, 0).show();
    }

    protected final void a(Object obj)
    {
        c();
    }

    public final void b()
    {
        if (com.instagram.android.people.c.a.e(a) == null)
        {
            return;
        }
        com.instagram.android.people.c.a.c(a).setEnabled(true);
        com.instagram.android.people.c.a.d(a).setEnabled(true);
        if (b.equals("approve"))
        {
            com.instagram.android.people.c.a.c(a).setIndeterminate(false);
            return;
        } else
        {
            com.instagram.android.people.c.a.d(a).setIndeterminate(false);
            return;
        }
    }
}
