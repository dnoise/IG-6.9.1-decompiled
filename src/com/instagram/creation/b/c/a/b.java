// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.c.a;

import android.os.Build;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.module.SimpleModule;
import com.instagram.api.k.a.d;
import com.instagram.api.k.a.f;
import com.instagram.creation.b.a.i;
import com.instagram.creation.b.b.q;
import com.instagram.creation.b.b.r;
import com.instagram.model.people.a.a;
import java.io.IOException;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class b extends com.instagram.api.k.a.b
{

    private com.instagram.creation.b.a.b a;
    private ObjectMapper b;

    public b(com.instagram.creation.b.a.b b1)
    {
        a = b1;
        SimpleModule simplemodule = new SimpleModule("ConfigureModule", w.a());
        simplemodule.addSerializer(new r());
        simplemodule.addSerializer(new a());
        b = (new ObjectMapper(com.instagram.common.n.a.a)).registerModule(simplemodule);
    }

    private String a(List list)
    {
        StringWriter stringwriter = new StringWriter();
        h h1 = com.instagram.common.n.a.a.createGenerator(stringwriter);
        h1.writeStartObject();
        h1.writeFieldName("in");
        b.writeValue(h1, list);
        h1.writeEndObject();
        h1.close();
        return stringwriter.toString();
    }

    private static void a(com.instagram.api.b.a a1, i i)
    {
        if (i == null)
        {
            return;
        }
        a1.a("edits");
        try
        {
            q.a(i, a1.a());
        }
        catch (IOException ioexception) { }
        a1.c();
    }

    private static void a(com.instagram.api.b.a a1, List list, String s)
    {
        a1.b("clips");
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) 
        {
            com.instagram.creation.b.a.a a2 = (com.instagram.creation.b.a.a)iterator.next();
            a1.b();
            a1.a("length", (double)a2.i() / 1000D);
            a1.a("source_type", s);
            if (a2.c() != -1)
            {
                String s1;
                if (a2.c() == 1)
                {
                    s1 = "front";
                } else
                {
                    s1 = "back";
                }
                a1.a("camera_position", s1);
            }
            a1.c();
        }
        a1.d();
    }

    private void b(com.instagram.api.b.a a1)
    {
        if (a.G())
        {
            a1.a("extra");
            a1.a("source_width", a.H());
            a1.a("source_height", a.I());
            a1.c();
        }
    }

    private static void c(com.instagram.api.b.a a1)
    {
        a1.a("device");
        a1.a("manufacturer", Build.MANUFACTURER);
        a1.a("model", Build.MODEL);
        a1.a("android_version", android.os.Build.VERSION.SDK_INT);
        a1.a("android_release", android.os.Build.VERSION.RELEASE);
        a1.c();
    }

    protected final d a(l l)
    {
        return f.a(l);
    }

    protected final void a(com.instagram.api.b.a a1)
    {
        a1.a("caption", a.m());
        a1.a("upload_id", a.b());
        a.c();
        JVM INSTR tableswitch 1 2: default 56
    //                   1 303
    //                   2 335;
           goto _L1 _L2 _L3
_L3:
        break MISSING_BLOCK_LABEL_335;
_L1:
        String s;
        String s1;
        s = "4";
        s1 = "library";
_L4:
        if (a.O())
        {
            a(a1, a.J(), s1);
            com.instagram.creation.b.a.a a4 = a.K();
            a1.a("poster_frame_index", (int)(100D * ((double)(a.Q() - a4.f()) / (double)a4.i())));
            a1.a("length", (double)a4.i() / 1000D);
        }
        a1.a("source_type", s);
        String s3;
        if (a.O())
        {
            a1.a("filter_type", String.valueOf(a.d()));
        } else
        {
            a(a1, a.e());
        }
        if (a.f())
        {
            a1.a("geotag_enabled", "1");
            a1.a("media_latitude", a.h().toString());
            a1.a("media_longitude", a.i().toString());
        }
        if (a.q())
        {
            java.util.Map.Entry entry2;
            for (Iterator iterator2 = com.instagram.share.f.a.b().h().entrySet().iterator(); iterator2.hasNext(); a1.a((String)entry2.getKey(), (String)entry2.getValue()))
            {
                entry2 = (java.util.Map.Entry)iterator2.next();
            }

        }
        break MISSING_BLOCK_LABEL_360;
_L2:
        if (com.instagram.l.a.b.a().f())
        {
            s3 = "3";
        } else
        {
            s3 = "5";
        }
        s = s3;
        s1 = "camera";
          goto _L4
        s = "6";
        s1 = "mixed";
          goto _L4
        if (a.r())
        {
            java.util.Map.Entry entry1;
            for (Iterator iterator1 = com.instagram.share.c.a.b().d().entrySet().iterator(); iterator1.hasNext(); a1.a((String)entry1.getKey(), (String)entry1.getValue()))
            {
                entry1 = (java.util.Map.Entry)iterator1.next();
            }

        }
        if (a.s())
        {
            com.facebook.b.b b1 = com.instagram.share.b.a.a();
            String s2 = com.instagram.share.b.a.i().c();
            if (com.instagram.common.y.e.c(s2))
            {
                s2 = b1.c();
            }
            a1.a("share_to_facebook", "1");
            a1.a("fb_access_token", s2);
        }
        if (a.t())
        {
            com.instagram.share.d.a a3 = com.instagram.share.d.a.a();
            a1.a("share_to_foursquare", "1");
            a1.a("foursquare_access_token", a3.d());
        }
        if (a.u())
        {
            com.instagram.share.tumblr.a a2 = com.instagram.share.tumblr.a.b();
            a1.a("share_to_tumblr", "1");
            a1.a("tumblr_access_token_key", a2.e());
            a1.a("tumblr_access_token_secret", a2.f());
        }
        if (a.v())
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = com.instagram.share.vkontakte.a.a().g().entrySet().iterator(); iterator.hasNext(); a1.a((String)entry.getKey(), (String)entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

        }
        com.instagram.venue.model.Venue venue = a.j();
        if (venue != null)
        {
            IOException ioexception;
            try
            {
                a1.a("location", b.writeValueAsString(venue));
            }
            catch (IOException ioexception1) { }
            a1.a("foursquare_request_id", a.M());
        }
        if (a.F())
        {
            try
            {
                a1.a("usertags", a(((List) (a.E()))));
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception) { }
        }
        if (a.O())
        {
            a1.a("video_result", a.C());
        }
        b(a1);
        c(a1);
        return;
    }

    public final String d_()
    {
        if (a.O())
        {
            return "media/configure/?video=1";
        } else
        {
            return "media/configure/";
        }
    }

    public final boolean e_()
    {
        return true;
    }
}
