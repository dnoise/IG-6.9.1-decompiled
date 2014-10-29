// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.b;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.instagram.user.c.a;
import com.instagram.user.c.f;

final class c extends JsonSerializer
{

    c()
    {
    }

    public static void a(a a1, h h1)
    {
        h1.writeStartObject();
        h1.writeStringField("id", a1.g());
        if (a1.j() != null)
        {
            h1.writeStringField("biography", a1.j());
        }
        h1.writeBooleanField("blocking", a1.v());
        if (a1.k() != null)
        {
            h1.writeStringField("external_url", a1.k());
        }
        h1.writeObjectField("follower_count", a1.l());
        h1.writeObjectField("following_count", a1.o());
        h1.writeStringField("follow_status", a1.t().toString());
        h1.writeStringField("full_name", a1.c());
        h1.writeBooleanField("is_staff", a1.h());
        h1.writeBooleanField("usertag_review_enabled", a1.i());
        if (a1.u() != null)
        {
            h1.writeStringField("last_follow_status", a1.u().toString());
        }
        h1.writeObjectField("media_count", a1.p());
        h1.writeStringField("privacy_status", a1.s().toString());
        h1.writeStringField("profile_pic_url", a1.f());
        h1.writeStringField("username", a1.b());
        h1.writeObjectField("geo_media_count", a1.B());
        h1.writeObjectField("usertags_count", a1.C());
        h1.writeBooleanField("is_verified", a1.D());
        h1.writeEndObject();
    }

    public final void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        a((a)obj, h1);
    }
}
