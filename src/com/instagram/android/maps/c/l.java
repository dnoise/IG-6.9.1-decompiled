// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.c;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.a.c.a;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.maps.c:
//            c

final class l extends b
{

    final c a;
    private List d;

    public l(c c1, Context context, an an, int i, com.instagram.api.j.a a1)
    {
        a = c1;
        super(context, an, i, a1);
    }

    private static String d(j j1)
    {
        return j1.l().get("ticket").asText();
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        if (d != null && d.size() > 0)
        {
            StringBuilder stringbuilder = new StringBuilder();
            for (Iterator iterator = d.iterator(); iterator.hasNext(); stringbuilder.append(","))
            {
                stringbuilder.append(((com.instagram.android.g.b)iterator.next()).f());
            }

            if (stringbuilder.length() > 0)
            {
                stringbuilder.deleteCharAt(-1 + stringbuilder.length());
            }
            b1.a("media_ids_to_remove", stringbuilder.toString());
        }
    }

    public final void a(List list)
    {
        d = list;
        g();
    }

    public final Object b(j j1)
    {
        return d(j1);
    }

    public final int c()
    {
        return a.a;
    }

    protected final String c_()
    {
        return "maps/review_media/";
    }
}
