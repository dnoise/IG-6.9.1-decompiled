// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import com.fasterxml.jackson.a.h;

// Referenced classes of package com.instagram.common.analytics:
//            b, n, q

final class c
{

    public static void a(b b1, h h1)
    {
        h1.writeStartObject();
        h1.writeStringField("name", b1.c());
        h1.writeStringField("time", n.a(b1.d()));
        if (b1.b() != null)
        {
            h1.writeStringField("module", b1.b());
        }
        if (b1.e())
        {
            h1.writeFieldName("extra");
            b1.f().a(h1);
        }
        h1.writeEndObject();
    }
}
