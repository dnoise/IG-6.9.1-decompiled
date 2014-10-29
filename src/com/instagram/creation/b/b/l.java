// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.b;

import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import com.instagram.creation.b.a.f;

public final class l extends StdDeserializer
{

    public l()
    {
        super(com/instagram/creation/b/a/f);
    }

    private static f a(com.fasterxml.jackson.a.l l1)
    {
        String s = null;
        String s1 = null;
        String s2 = null;
        do
        {
            if (l1.nextToken() == r.c)
            {
                break;
            }
            String s3 = l1.getCurrentName();
            if ("username".equals(s3))
            {
                l1.nextToken();
                s1 = l1.getText();
            } else
            if ("user_id".equals(s3))
            {
                l1.nextToken();
                s2 = l1.getText();
            } else
            if ("profilepic_url".equals(s3))
            {
                l1.nextToken();
                s = l1.getText();
            } else
            if (s3 != null)
            {
                l1.skipChildren();
            }
        } while (true);
        return new f(s2, s1, s);
    }

    public final Object deserialize(com.fasterxml.jackson.a.l l1, DeserializationContext deserializationcontext)
    {
        return a(l1);
    }
}
