// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.m;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.m:
//            h, d

public final class g
{

    static com.instagram.m.h a(l l1)
    {
        com.instagram.m.h h1;
        if (l1.nextToken() != r.b)
        {
            h1 = null;
        } else
        {
            h1 = new com.instagram.m.h();
            HashMap hashmap = new HashMap();
            h1.a(hashmap);
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                if ("last_sync_timestamp_in_ms".equals(s))
                {
                    h1.a(l1.getLongValue());
                }
                if ("experiments".equals(s))
                {
                    while (l1.nextToken() != r.c) 
                    {
                        String s1 = l1.getCurrentName();
                        l1.nextToken();
                        HashMap hashmap1 = new HashMap();
                        String s2;
                        for (; l1.nextToken() != r.c; hashmap1.put(s2, l1.getText()))
                        {
                            s2 = l1.getCurrentName();
                            l1.nextToken();
                        }

                        hashmap.put(s1, new d(s1, hashmap1));
                    }
                }
            }
        }
        return h1;
    }

    static void a(h h1, com.instagram.m.h h2)
    {
        h1.writeStartObject();
        h1.writeNumberField("last_sync_timestamp_in_ms", h2.b());
        if (h2.a() != null)
        {
            h1.writeObjectFieldStart("experiments");
            for (Iterator iterator = h2.a().entrySet().iterator(); iterator.hasNext(); h1.writeEndObject())
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                h1.writeObjectFieldStart((String)entry.getKey());
                java.util.Map.Entry entry1;
                for (Iterator iterator1 = ((d)entry.getValue()).a().entrySet().iterator(); iterator1.hasNext(); h1.writeStringField((String)entry1.getKey(), (String)entry1.getValue()))
                {
                    entry1 = (java.util.Map.Entry)iterator1.next();
                }

            }

            h1.writeEndObject();
        }
        h1.writeEndObject();
    }
}
