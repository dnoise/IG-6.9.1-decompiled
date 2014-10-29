// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.service.b;

import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.user.c.a;
import com.instagram.user.c.i;

// Referenced classes of package com.instagram.service.b:
//            c, a

final class b extends c
{

    final com.instagram.service.b.a a;
    private i d;

    public b(com.instagram.service.b.a a1, com.instagram.service.b.a a2, Class class1, i j)
    {
        a = a1;
        super(class1, a2);
        d = j;
    }

    public final Object createUsingDelegate(DeserializationContext deserializationcontext, Object obj)
    {
        JsonNode jsonnode = (JsonNode)obj;
        String s = jsonnode.get("pk").asText();
        a a1 = d.a(s);
        a a2 = com.instagram.user.c.a.a(jsonnode, a1);
        if (a1 == null)
        {
            d.a(a2.g(), a2);
            return a2;
        } else
        {
            a2.G();
            return a2;
        }
    }
}
