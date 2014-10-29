// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.b;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.a.d;
import com.instagram.creation.b.a.g;
import com.instagram.model.a.a;

public final class k extends StdSerializer
{

    public k()
    {
        super(com/instagram/creation/b/a/b);
    }

    private static void a(b b1, h h1)
    {
        a a1;
        h1.writeStartObject();
        a1 = b1.n();
        if (a1 != a.a) goto _L2; else goto _L1
_L1:
        h1.writeStringField("mediaType", "photo");
_L4:
        h1.writeStringField("serverStatus", b1.z().toString());
        h1.writeStringField("targetStatus", b1.A().toString());
        h1.writeStringField("imageFilePath", b1.k());
        h1.writeStringField("key", b1.a());
        h1.writeStringField("timestamp", b1.b());
        if (a1 == a.b)
        {
            h1.writeStringField("videoFilePath", b1.l());
            h1.writeStringField("videoResult", b1.C());
            h1.writeStringField("recordingSessionFilePath", b1.L());
            h1.writeFieldName("stitchedVideoInfo");
            ((ObjectMapper)h1.getCodec()).writeValue(h1, b1.K());
            h1.writeFieldName("videoInfoList");
            ((ObjectMapper)h1.getCodec()).writeValue(h1, b1.J());
            h1.writeFieldName("videoUploadUrls");
            ((ObjectMapper)h1.getCodec()).writeValue(h1, b1.D());
            h1.writeNumberField("coverFrameTimeMs", b1.Q());
        }
        h1.writeNumberField("sourceType", b1.c());
        h1.writeNumberField("filterTypeOrdinal", b1.d());
        h1.writeBooleanField("twitterEnabled", b1.q());
        h1.writeBooleanField("facebookEnabled", b1.s());
        h1.writeBooleanField("foursquareEnabled", b1.t());
        h1.writeBooleanField("tumblrEnabled", b1.u());
        h1.writeBooleanField("vkontakteEnabled", b1.v());
        h1.writeBooleanField("flickrEnabled", b1.r());
        h1.writeNumberField("latitude", b1.h().doubleValue());
        h1.writeNumberField("longitude", b1.i().doubleValue());
        h1.writeObjectField("location", b1.j());
        h1.writeStringField("foursquare_request_id", b1.M());
        h1.writeStringField("caption", b1.m());
        h1.writeNumberField("originalWidth", b1.H());
        h1.writeNumberField("originalHeight", b1.I());
        if (a1 == a.a)
        {
            h1.writeFieldName("peopleTags");
            ((ObjectMapper)h1.getCodec()).writeValue(h1, b1.E());
            if (b1.e() != null)
            {
                h1.writeFieldName("edits");
                ((ObjectMapper)h1.getCodec()).writeValue(h1, b1.e());
            }
        }
        h1.writeBooleanField("direct_share", b1.P());
        h1.writeFieldName("recipients");
        ((ObjectMapper)h1.getCodec()).writeValue(h1, b1.N().c());
        h1.writeEndObject();
        return;
_L2:
        if (a1 == a.b)
        {
            h1.writeStringField("mediaType", "video");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        a((b)obj, h1);
    }
}
