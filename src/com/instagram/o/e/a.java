// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o.e;

import com.fasterxml.jackson.databind.JsonNode;

public final class a
{

    public static String a(JsonNode jsonnode)
    {
        if (jsonnode.get("id") != null)
        {
            return jsonnode.get("id").asText();
        }
        if (jsonnode.get("pk") != null)
        {
            return jsonnode.get("pk").asText();
        } else
        {
            throw new RuntimeException("No primary key found for parsed object");
        }
    }
}
