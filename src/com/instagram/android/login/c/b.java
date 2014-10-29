// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.c;

import android.content.Context;
import android.support.v4.app.an;
import com.facebook.av;
import com.facebook.az;
import com.fasterxml.jackson.a.p;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.android.d.o;
import com.instagram.api.j.j;
import com.instagram.g.c;
import com.instagram.user.c.a;
import java.util.Iterator;

// Referenced classes of package com.instagram.android.login.c:
//            d, c

public final class b extends com.instagram.api.j.b
{

    public static int a;
    private com.instagram.android.login.a d;

    public b(Context context, an an, int i, com.instagram.api.j.a a1)
    {
        super(context, an, av.request_id_create_account, a1);
        a = i;
    }

    private a d(j j1)
    {
        if (j1.b("created_user"))
        {
            a a1;
            try
            {
                a1 = (a)j1.a("created_user", com/instagram/user/c/a);
            }
            catch (p p1)
            {
                throw new RuntimeException("Unable parse created user account", p1);
            }
            return a1;
        } else
        {
            j1.a(e(j1));
            return null;
        }
    }

    private String e(j j1)
    {
        JsonNode jsonnode = j1.l().get("errors");
        if (jsonnode == null)
        {
            return k().getString(az.unknown_error_occured);
        }
        StringBuilder stringbuilder = new StringBuilder();
        for (Iterator iterator = jsonnode.iterator(); iterator.hasNext();)
        {
            Iterator iterator1 = ((JsonNode)iterator.next()).iterator();
            while (iterator1.hasNext()) 
            {
                stringbuilder.append(((JsonNode)iterator1.next()).asText()).append("\n");
            }
        }

        return stringbuilder.toString();
    }

    public final void a(com.instagram.android.login.a a1)
    {
        d = a1;
        super.g();
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        com.instagram.android.login.a a1 = d;
        boolean flag;
        if (a == d.b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a1.a(b1, flag);
        if (d.h != null)
        {
            b1.a("profile_pic", o.a(d.h), "profile_pic");
        }
    }

    public final Object b(j j1)
    {
        return d(j1);
    }

    public final boolean b()
    {
        return true;
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    public final boolean c(j j1)
    {
        return !com.instagram.g.c.b(j1);
    }

    protected final String c_()
    {
        switch (com.instagram.android.login.c.c.a[-1 + a])
        {
        default:
            return "accounts/create/";

        case 1: // '\001'
            return "accounts/create_with_code/";
        }
    }

    public final boolean e_()
    {
        return true;
    }
}
