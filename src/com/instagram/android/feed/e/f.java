// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.e;

import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.h;
import com.instagram.common.analytics.b;
import com.instagram.common.analytics.d;
import com.instagram.common.analytics.g;
import com.instagram.common.n.a;
import com.instagram.feed.d.ai;
import java.io.IOException;
import java.io.StringWriter;

public final class f
{

    private static String a(int i, int j)
    {
        StringWriter stringwriter = new StringWriter();
        try
        {
            h h1 = a.a.createGenerator(stringwriter);
            h1.writeStartArray();
            h1.writeString(Integer.toString(i));
            h1.writeString(Integer.toString(j));
            h1.writeEndArray();
            h1.close();
        }
        catch (IOException ioexception) { }
        return stringwriter.toString();
    }

    public static void a(g g, String s, ai ai1, int i, int j)
    {
        int k = i % 3;
        int l = i / 3;
        com.instagram.common.analytics.a.a().a((new b(s, g)).a("media_id", ai1.f()).a("position", a(k, l)).a("visible_item_count", j).a("algorithm", ai1.h()).a("impression_token", ai1.i()));
    }
}
