// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import com.fasterxml.jackson.a.h;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

// Referenced classes of package com.instagram.common.analytics:
//            i, n, b, c

final class j
{

    public static void a(i k, h h1)
    {
        h1.writeStartObject();
        h1.writeNumberField("seq", k.d());
        h1.writeStringField("time", n.a(k.e()));
        h1.writeStringField("app_id", k.j());
        h1.writeStringField("app_ver", k.i());
        h1.writeStringField("build_num", k.l());
        h1.writeStringField("device_id", k.h());
        h1.writeStringField("session_id", k.c().toString());
        h1.writeStringField("uid", k.k());
        h1.writeFieldName("data");
        h1.writeStartArray();
        for (Iterator iterator = k.b().iterator(); iterator.hasNext(); c.a((b)iterator.next(), h1)) { }
        h1.writeEndArray();
        h1.writeStringField("log_type", "client_event");
        h1.writeEndObject();
    }
}
