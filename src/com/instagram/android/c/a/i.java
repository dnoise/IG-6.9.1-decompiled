// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.api.j.b;
import com.instagram.common.y.e.a;
import com.instagram.user.c.j;

// Referenced classes of package com.instagram.android.c.a:
//            j

public final class i extends b
{

    private int a;

    public i(Context context, an an, int k, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
        a = k;
    }

    public final void a(com.instagram.api.j.j j1)
    {
        super.a(j1);
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        String s;
        if (a == com.instagram.android.c.a.j.a)
        {
            s = "1";
        } else
        {
            s = "0";
        }
        b1.a("enabled", s);
    }

    public final Object b(com.instagram.api.j.j j1)
    {
        com.instagram.user.c.a a1 = com.instagram.service.a.a.a().b();
        boolean flag;
        if (a == com.instagram.android.c.a.j.a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a1.b(flag);
        j.a().b(a1);
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

    public final String c_()
    {
        return "usertags/review_preference/";
    }

    public final boolean e_()
    {
        return true;
    }
}
