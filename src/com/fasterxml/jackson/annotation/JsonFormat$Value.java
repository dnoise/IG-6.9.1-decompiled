// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.annotation;

import java.util.Locale;
import java.util.TimeZone;

// Referenced classes of package com.fasterxml.jackson.annotation:
//            JsonFormat

public class timezone
{

    private final Locale locale;
    private final String pattern;
    private final locale shape;
    private final TimeZone timezone;

    public Locale getLocale()
    {
        return locale;
    }

    public String getPattern()
    {
        return pattern;
    }

    public pattern getShape()
    {
        return shape;
    }

    public TimeZone getTimeZone()
    {
        return timezone;
    }

    public timezone withLocale(Locale locale1)
    {
        return new <init>(pattern, shape, locale1, timezone);
    }

    public timezone withPattern(String s)
    {
        return new <init>(s, shape, locale, timezone);
    }

    public timezone withShape(timezone timezone1)
    {
        return new <init>(pattern, timezone1, locale, timezone);
    }

    public timezone withTimeZone(TimeZone timezone1)
    {
        return new <init>(pattern, shape, locale, timezone1);
    }

    public ()
    {
        this("", ANY, "", "");
    }

    public ANY(JsonFormat jsonformat)
    {
        this(jsonformat.pattern(), jsonformat.shape(), jsonformat.locale(), jsonformat.timezone());
    }

    public ne(String s, ne ne, String s1, String s2)
    {
        Locale locale1;
        TimeZone timezone1;
        if (s1 == null || s1.length() == 0 || "##default".equals(s1))
        {
            locale1 = null;
        } else
        {
            locale1 = new Locale(s1);
        }
        timezone1 = null;
        if (s2 != null)
        {
            int i = s2.length();
            timezone1 = null;
            if (i != 0)
            {
                boolean flag = "##default".equals(s2);
                timezone1 = null;
                if (!flag)
                {
                    timezone1 = TimeZone.getTimeZone(s2);
                }
            }
        }
        this(s, ne, locale1, timezone1);
    }

    public <init>(String s, <init> <init>1, Locale locale1, TimeZone timezone1)
    {
        pattern = s;
        shape = <init>1;
        locale = locale1;
        timezone = timezone1;
    }
}
