// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.b;

import android.media.MediaMetadataRetriever;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import com.instagram.camera.h;
import com.instagram.creation.b.a.a;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.a.d;
import com.instagram.creation.b.a.g;
import com.instagram.creation.b.a.i;
import com.instagram.venue.model.Venue;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.creation.b.b:
//            g, h, i, d, 
//            e, f

public final class c extends StdDeserializer
{

    public c()
    {
        super(com/instagram/creation/b/a/b);
    }

    private static a a(JsonNode jsonnode)
    {
        a a1 = new a();
        a1.a(0.5F);
        a1.b(0);
        a1.c(0);
        String s = jsonnode.get("stitchedVideoFilePath").asText();
        if (s != null && (new File(s)).exists())
        {
            a1.a(s);
            MediaMetadataRetriever mediametadataretriever = new MediaMetadataRetriever();
            mediametadataretriever.setDataSource(a1.b());
            a1.b(Integer.parseInt(mediametadataretriever.extractMetadata(18)), Integer.parseInt(mediametadataretriever.extractMetadata(19)));
            a1.d((int)com.instagram.creation.video.c.a.a(mediametadataretriever));
        }
        if (jsonnode.has("camera_id"))
        {
            a1.a(jsonnode.get("camera_id").asInt());
        } else
        if (jsonnode.has("orientation"))
        {
            a1.a(h.c(jsonnode.get("orientation").asInt()));
            return a1;
        }
        return a1;
    }

    private b a(l l1)
    {
        ObjectMapper objectmapper;
        JsonNode jsonnode;
        String s4;
        objectmapper = (ObjectMapper)l1.getCodec();
        jsonnode = (JsonNode)l1.readValueAs(com/fasterxml/jackson/databind/JsonNode);
        if (!jsonnode.has("mediaType"))
        {
            break MISSING_BLOCK_LABEL_669;
        }
        s4 = jsonnode.get("mediaType").asText();
        if (s4.equals("photo"))
        {
            break MISSING_BLOCK_LABEL_669;
        }
        if (!s4.equals("video")) goto _L2; else goto _L1
_L1:
        com.instagram.model.a.a a1 = com.instagram.model.a.a.b;
_L3:
        String s = jsonnode.get("imageFilePath").textValue();
        String s1 = jsonnode.get("key").asText();
        b b1;
        JsonNode jsonnode1;
        JsonNode jsonnode2;
        if (a1 == com.instagram.model.a.a.a)
        {
            b b3 = b.a(s1);
            b3.e(s);
            b1 = b3;
        } else
        {
            b1 = b.b(s1);
            String s2 = jsonnode.get("recordingSessionFilePath").asText();
            String s3 = jsonnode.get("videoFilePath").asText();
            if (s3 != null && (new File(s3)).exists())
            {
                b1.f(s3);
            }
            f f1;
            if (jsonnode.has("videoInfoList"))
            {
                com.instagram.creation.b.b.d d1 = new com.instagram.creation.b.b.d(this);
                b1.b((ArrayList)objectmapper.readValue(objectmapper.treeAsTokens(jsonnode.get("videoInfoList")), d1));
            } else
            {
                ArrayList arraylist = new ArrayList();
                arraylist.add(a(jsonnode));
                b1.b(arraylist);
            }
            if (jsonnode.has("stitchedVideoInfo"))
            {
                e e1 = new e(this);
                b1.a((a)objectmapper.readValue(objectmapper.treeAsTokens(jsonnode.get("stitchedVideoInfo")), e1));
            } else
            {
                b1.a((a)b1.J().get(0));
            }
            b1.i(s2);
            b1.e(s);
            b1.h(jsonnode.get("videoResult").asText());
            f1 = new f(this);
            b1.a((List)objectmapper.readValue(objectmapper.treeAsTokens(jsonnode.get("videoUploadUrls")), f1));
            if (jsonnode.has("coverFrameTimeMs"))
            {
                b1.f(jsonnode.get("coverFrameTimeMs").asInt(0));
            }
        }
        jsonnode1 = jsonnode.get("targetStatus");
        if (jsonnode1 == null)
        {
            JsonNode jsonnode3 = jsonnode.get("postedByUser");
            com.instagram.creation.b.b.g g1;
            boolean flag;
            i j;
            com.instagram.creation.b.b.h h1;
            com.instagram.creation.b.b.i k;
            List list;
            d d2;
            b b2;
            if (jsonnode3 == null)
            {
                d2 = d.c;
                b2 = b1;
            } else
            if (jsonnode3.asBoolean())
            {
                d2 = d.c;
                b2 = b1;
            } else
            {
                d2 = d.b;
                b2 = b1;
            }
            b2.b(d2);
        } else
        {
            b1.b(d.valueOf(jsonnode1.asText()));
        }
        jsonnode2 = jsonnode.get("serverStatus");
        if (jsonnode2 == null)
        {
            if (jsonnode.get("needsUpload").asBoolean())
            {
                b1.a(d.a);
            } else
            if (jsonnode.get("needsConfigure").asBoolean())
            {
                b1.a(d.b);
            }
        } else
        {
            b1.a(d.valueOf(jsonnode2.asText()));
        }
        if (jsonnode.has("timestamp"))
        {
            b1.c(jsonnode.get("timestamp").textValue());
        } else
        {
            b1.c(b1.a());
        }
        b1.a(jsonnode.get("sourceType").asInt());
        b1.b(jsonnode.get("filterTypeOrdinal").asInt());
        b1.a(jsonnode.get("twitterEnabled").asBoolean());
        b1.b(jsonnode.get("facebookEnabled").asBoolean());
        b1.c(jsonnode.get("foursquareEnabled").asBoolean());
        if (jsonnode.has("foursquare_request_id"))
        {
            b1.j(jsonnode.get("foursquare_request_id").textValue());
        }
        b1.d(jsonnode.get("tumblrEnabled").asBoolean());
        if (jsonnode.has("vkontakteEnabled"))
        {
            b1.f(jsonnode.get("vkontakteEnabled").asBoolean());
        }
        if (jsonnode.has("flickrEnabled"))
        {
            b1.e(jsonnode.get("flickrEnabled").asBoolean());
        }
        if (jsonnode.has("originalHeight") && jsonnode.has("originalWidth"))
        {
            b1.d(jsonnode.get("originalWidth").asInt(0));
            b1.e(jsonnode.get("originalHeight").asInt(0));
        }
        b1.a(jsonnode.get("latitude").asDouble());
        b1.b(jsonnode.get("longitude").asDouble());
        b1.a((Venue)objectmapper.treeToValue(jsonnode.get("location"), com/instagram/venue/model/Venue));
        b1.d(jsonnode.get("caption").textValue());
        if (jsonnode.has("peopleTags"))
        {
            g1 = new com.instagram.creation.b.b.g(this);
            b1.a((ArrayList)objectmapper.readValue(objectmapper.treeAsTokens(jsonnode.get("peopleTags")), g1));
        }
        flag = jsonnode.has("edits");
        j = null;
        if (flag)
        {
            h1 = new com.instagram.creation.b.b.h(this);
            j = (i)objectmapper.readValue(objectmapper.treeAsTokens(jsonnode.get("edits")), h1);
        }
        b1.a(j);
        if (jsonnode.has("direct_share"))
        {
            b1.h(jsonnode.get("direct_share").booleanValue());
            k = new com.instagram.creation.b.b.i(this);
            list = (List)objectmapper.readValue(objectmapper.treeAsTokens(jsonnode.get("recipients")), k);
            b1.N().a(list);
        }
        return b1;
_L2:
        throw new RuntimeException((new StringBuilder("Unknown MediaType ")).append(s4).toString());
        a1 = com.instagram.model.a.a.a;
          goto _L3
    }

    public final Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return a(l1);
    }
}
