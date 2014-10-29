// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import android.content.Context;
import android.support.v4.app.an;
import com.facebook.az;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.y.e.a;
import java.util.Iterator;

// Referenced classes of package com.instagram.android.c.a:
//            u

public final class t extends b
{

    private String a;
    private String d;
    private int e;

    public t(Context context, an an, int i, String s, String s1, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
        e = i;
        a = s;
        d = s1;
    }

    private Void d(j j1)
    {
        if (!j1.l().get("robocall_sent").asBoolean())
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
        b1.a("device_id", d);
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
        switch (com.instagram.android.c.a.u.a[-1 + e])
        {
        default:
            return "accounts/robocall_phone/";

        case 1: // '\001'
            return "accounts/robocall_user/";
        }
    }

    public final boolean e_()
    {
        return true;
    }
}
