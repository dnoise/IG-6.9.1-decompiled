// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.c;

import android.content.Context;
import android.support.v4.app.an;
import com.facebook.av;
import com.facebook.az;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.android.d.o;
import com.instagram.android.login.a;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.g.c;
import java.util.Iterator;

public final class p extends b
{

    private a a;

    public p(Context context, an an, com.instagram.api.j.a a1)
    {
        super(context, an, av.request_id_validate_account, a1);
    }

    private Boolean d(j j1)
    {
        boolean flag = j1.l().get("account_valid").asBoolean();
        if (!flag)
        {
            j1.a(e(j1));
        }
        return Boolean.valueOf(flag);
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

    public final void a(a a1)
    {
        a = a1;
        super.g();
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        a.a(b1, false);
        if (a.h != null)
        {
            b1.a("profile_pic", o.a(a.h), "profile_pic");
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
        return "accounts/validate_create/";
    }

    public final boolean e_()
    {
        return true;
    }
}
