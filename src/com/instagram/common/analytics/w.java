// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import com.fasterxml.jackson.a.h;
import java.util.Arrays;

// Referenced classes of package com.instagram.common.analytics:
//            t

final class w
    implements t
{

    private final String a[];

    private w(String as[])
    {
        a = as;
    }

    w(String as[], byte byte0)
    {
        this(as);
    }

    public final void a(h h1)
    {
        h1.writeStartArray();
        String as[] = a;
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            h1.writeString(as[j]);
        }

        h1.writeEndArray();
    }

    public final String toString()
    {
        return Arrays.toString(a);
    }
}
