// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.c;

import android.content.Context;
import android.support.v4.app.an;
import com.facebook.az;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.y.e.a;
import java.util.Iterator;

public final class n extends b
{

    private final String a;

    public n(Context context, an an, com.instagram.api.j.a a1, String s)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
        a = s;
    }

    private Void d(j j1)
    {
        if (!j1.l().get("phone_number_valid").asBoolean())
        {
            j1.a(e(j1));
        }
        return null;
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

    protected final void a(com.instagram.common.a.c.b b1)
    {
        b1.a("phone_number", a);
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

    protected final String c_()
    {
        return "users/lookup_phone/";
    }

    public final boolean e_()
    {
        return true;
    }
}
