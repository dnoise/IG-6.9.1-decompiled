// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.e;

import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpRequestInterceptor;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import java.util.Locale;

public final class a
    implements HttpRequestInterceptor
{

    private String a;

    public a()
    {
    }

    private String a()
    {
        this;
        JVM INSTR monitorenter ;
        String s;
        Locale locale = Locale.getDefault();
        if (a == null)
        {
            StringBuilder stringbuilder = new StringBuilder();
            a(stringbuilder, locale);
            if (!Locale.US.equals(locale))
            {
                if (stringbuilder.length() > 0)
                {
                    stringbuilder.append(", ");
                }
                stringbuilder.append("en-US");
            }
            a = stringbuilder.toString();
        }
        s = a;
        this;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    private static String a(String s)
    {
        if (s == null)
        {
            s = null;
        } else
        {
            if ("iw".equals(s))
            {
                return "he";
            }
            if ("in".equals(s))
            {
                return "id";
            }
            if ("ji".equals(s))
            {
                return "yi";
            }
        }
        return s;
    }

    private static void a(StringBuilder stringbuilder, Locale locale)
    {
        String s = a(locale.getLanguage());
        if (s != null)
        {
            stringbuilder.append(s);
            String s1 = locale.getCountry();
            if (s1 != null)
            {
                stringbuilder.append("-");
                stringbuilder.append(s1);
            }
        }
    }

    public final void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        if (!httprequest.containsHeader("Accept-Language"))
        {
            httprequest.addHeader("Accept-Language", a());
        }
    }
}
