// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.a;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.y.e.a;

// Referenced classes of package com.instagram.feed.a:
//            l

public final class k extends b
{

    private String a;
    private int d;

    public k(Context context, an an, String s, int i)
    {
        super(context, an, com.instagram.common.y.e.a.a(), null);
        a = s;
        d = i;
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        b1.a("user_id", a);
        if (d == com.instagram.feed.a.l.a)
        {
            b1.a("labels", "employee_suggested");
        }
    }

    public final volatile Object b(j j)
    {
        return null;
    }

    public final boolean b()
    {
        return true;
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    protected final String c_()
    {
        return "users/add_labels/";
    }

    public final boolean e_()
    {
        return true;
    }
}
