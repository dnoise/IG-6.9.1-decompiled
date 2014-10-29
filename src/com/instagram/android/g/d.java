// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.g;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.y.e.a;

// Referenced classes of package com.instagram.android.g:
//            c

final class d extends b
{

    final c a;

    public d(c c1, Context context, an an)
    {
        a = c1;
        super(context, an, com.instagram.common.y.e.a.a(), null);
    }

    public final Object b(j j1)
    {
        JsonNode jsonnode = j1.l();
        com.instagram.android.g.c.a(a, jsonnode.get("media_count").asInt());
        JsonNode jsonnode1 = jsonnode.get("name");
        if (jsonnode1 != null && jsonnode1.isNull())
        {
            com.instagram.android.g.c.a(a, jsonnode1.asText());
        }
        com.instagram.common.y.d.a(com.instagram.android.g.c.a(com.instagram.android.g.c.a(a)));
        return null;
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.c;
    }

    public final boolean c(j j1)
    {
        return false;
    }

    protected final String c_()
    {
        Object aobj[] = new Object[1];
        aobj[0] = com.instagram.android.g.c.a(a);
        return String.format("tags/%s/info", aobj);
    }
}
