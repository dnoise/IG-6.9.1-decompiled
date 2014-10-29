// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.e;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

// Referenced classes of package com.instagram.android.k.e:
//            b

public final class c extends JsonSerializer
{

    public c()
    {
    }

    private static void a(b b1, h h1)
    {
        h1.writeStartObject();
        if (b.b(b1) != null)
        {
            h1.writeObjectField("phone_numbers", b.b(b1));
        }
        if (b.c(b1) != null)
        {
            h1.writeObjectField("first_name", b.c(b1));
        }
        if (b.d(b1) != null)
        {
            h1.writeObjectField("last_name", b.d(b1));
        }
        if (b.a(b1) != null)
        {
            h1.writeObjectField("email_addresses", b.a(b1));
        }
        h1.writeEndObject();
    }

    public final void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        a((b)obj, h1);
    }
}
