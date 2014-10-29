// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.c.b;

import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.creation.b.a.j;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public final class a
{

    private final String a;
    private final List b = new ArrayList();

    public a(JsonNode jsonnode)
    {
        a = jsonnode.get("upload_id").asText();
        String s;
        String s1;
        Date date;
        for (Iterator iterator = jsonnode.get("video_upload_urls").iterator(); iterator.hasNext(); b.add(new j(s, s1, date)))
        {
            JsonNode jsonnode1 = (JsonNode)iterator.next();
            s = jsonnode1.get("url").asText();
            s1 = jsonnode1.get("job").asText();
            date = new Date(1000L * jsonnode1.get("expires").asLong());
        }

    }

    public final List a()
    {
        return b;
    }
}
