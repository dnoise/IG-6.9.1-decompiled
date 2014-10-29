// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.instagram.user.c.c;
import com.instagram.user.c.f;

final class a extends JsonDeserializer
{

    a()
    {
    }

    public static com.instagram.user.c.a a(l l1)
    {
        com.instagram.user.c.a a1;
        if (l1.getCurrentToken() != r.b)
        {
            a1 = null;
        } else
        {
            a1 = new com.instagram.user.c.a();
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                if ("id".equals(s))
                {
                    a1.d(l1.getText());
                } else
                if ("username".equals(s))
                {
                    a1.a(l1.getText());
                } else
                if ("full_name".equals(s))
                {
                    a1.b(l1.getText());
                } else
                if ("biography".equals(s))
                {
                    a1.e(l1.getValueAsString());
                } else
                if ("blocking".equals(s))
                {
                    a1.c(l1.getValueAsBoolean());
                } else
                if ("external_url".equals(s))
                {
                    a1.f(l1.getText());
                } else
                if ("geo_media_count".equals(s))
                {
                    a1.d(Integer.valueOf(l1.getValueAsInt()));
                } else
                if ("usertags_count".equals(s))
                {
                    a1.e(Integer.valueOf(l1.getValueAsInt()));
                } else
                if ("follower_count".equals(s))
                {
                    a1.a(b(l1));
                } else
                if ("following_count".equals(s))
                {
                    a1.b(b(l1));
                } else
                if ("follow_status".equals(s))
                {
                    a1.a(c.valueOf(l1.getValueAsString()));
                } else
                if ("last_follow_status".equals(s))
                {
                    a1.b(c.valueOf(l1.getValueAsString()));
                } else
                if ("is_staff".equals(s))
                {
                    a1.a(l1.getValueAsBoolean());
                } else
                if ("media_count".equals(s))
                {
                    a1.c(b(l1));
                } else
                if ("privacy_status".equals(s))
                {
                    a1.a(f.valueOf(l1.getText()));
                } else
                if ("profile_pic_url".equals(s))
                {
                    a1.c(l1.getText());
                } else
                if ("is_verified".equals(s))
                {
                    a1.e(l1.getValueAsBoolean());
                } else
                if ("usertag_review_enabled".equals(s))
                {
                    a1.b(l1.getValueAsBoolean());
                }
            }
        }
        return a1;
    }

    private static Integer b(l l1)
    {
        if (l1.getCurrentToken() == r.m)
        {
            return null;
        } else
        {
            return Integer.valueOf(l1.getIntValue());
        }
    }

    public final Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return a(l1);
    }
}
