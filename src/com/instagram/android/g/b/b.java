// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.g.b;

import android.content.Context;
import android.content.res.Resources;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.api.j.a;
import com.instagram.api.j.j;

final class b extends a
{

    final Context a;
    final com.instagram.user.c.a b;

    b(Context context, com.instagram.user.c.a a1)
    {
        a = context;
        b = a1;
        super();
    }

    private void c()
    {
        Context context = a;
        int i;
        if (b.v())
        {
            i = az.user_blocked;
        } else
        {
            i = az.user_unblocked;
        }
        Toast.makeText(context, i, 0).show();
    }

    protected final void a(j j)
    {
        Context context = a;
        Resources resources = a.getResources();
        int i = az.x_problems;
        Object aobj[] = new Object[1];
        aobj[0] = a.getResources().getString(az.instagram);
        Toast.makeText(context, resources.getString(i, aobj), 0).show();
    }

    protected final void a(Object obj)
    {
        c();
    }
}
