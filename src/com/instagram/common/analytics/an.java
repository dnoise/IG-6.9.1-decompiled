// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import android.util.Base64;
import ch.boye.httpclientandroidlib.util.EncodingUtils;
import com.instagram.common.a.a.a;
import com.instagram.common.a.c.b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.DeflaterOutputStream;

final class an extends a
{

    private final String a;
    private final String b;
    private final String d;

    public an(String s, String s1, String s2)
    {
        a = s;
        b = s1;
        d = s2;
    }

    private static String a(String s)
    {
        byte abyte0[] = EncodingUtils.getBytes(s, "UTF-8");
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        DeflaterOutputStream deflateroutputstream = new DeflaterOutputStream(bytearrayoutputstream);
        deflateroutputstream.write(abyte0);
        deflateroutputstream.close();
        return Base64.encodeToString(bytearrayoutputstream.toByteArray(), 2);
    }

    public final b a()
    {
        b b1 = new b();
        b1.a("method", "logging.clientevent");
        b1.a("format", "json");
        b1.a("access_token", b);
        try
        {
            b1.a("message", a(a));
            b1.a("compressed", "1");
        }
        catch (IOException ioexception)
        {
            b1.a("message", a);
            return b1;
        }
        return b1;
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    public final String g_()
    {
        return d;
    }
}
