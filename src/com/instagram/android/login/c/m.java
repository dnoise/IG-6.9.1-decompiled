// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.c;

import com.fasterxml.jackson.a.l;
import com.instagram.api.b.a;
import com.instagram.api.k.a.b;
import com.instagram.api.k.a.d;

// Referenced classes of package com.instagram.android.login.c:
//            i, h

public final class m extends b
{

    private final String a;
    private final String b;
    private final String d;
    private final String e;
    private final String f;
    private final String g;

    public m(String s, String s1, String s2, String s3, String s4, String s5)
    {
        a = s;
        b = s1;
        d = s2;
        e = s3;
        f = s4;
        g = s5;
    }

    private static h b(l l)
    {
        return com.instagram.android.login.c.i.a(l);
    }

    protected final d a(l l)
    {
        return b(l);
    }

    protected final void a(a a1)
    {
        a1.a("user_id", a);
        a1.a("new_password1", b);
        a1.a("new_password2", d);
        a1.a("token", e);
        a1.a("device_id", f);
        a1.a("guid", g);
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    protected final String d_()
    {
        return "accounts/change_password/";
    }

    public final boolean e_()
    {
        return true;
    }
}
