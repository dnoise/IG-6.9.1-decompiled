// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.d.d;

import android.content.Context;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.facebook.d.d:
//            a, c

public final class b
{

    private static a a;
    private static final Pattern e = Pattern.compile("^[0-9]+L$");
    private final Context b;
    private final String c;
    private final c d;

    private b(Context context, c c1)
    {
        b = context;
        d = c1;
        c = b.getPackageName();
    }

    private a a()
    {
        return a(c);
    }

    private a a(String s)
    {
        String s1 = a("com.facebook.versioncontrol.revision", s);
        String s2 = a("com.facebook.versioncontrol.branch", s);
        String s3 = a("com.facebook.build_time", s);
        long l = 0L;
        String s4 = "";
        if (b(s3))
        {
            l = c(s3);
            s4 = a(l);
        }
        return new a(s1, s2, l, s4);
    }

    private static String a(long l)
    {
        DateFormat dateformat = DateFormat.getDateTimeInstance(1, 0, Locale.US);
        dateformat.setTimeZone(TimeZone.getTimeZone("PST8PDT"));
        return dateformat.format(new Date(l));
    }

    public static String a(Context context)
    {
        if (a == null)
        {
            a = (new b(context, new c(context))).a();
        }
        return a.a;
    }

    private String a(String s, String s1)
    {
        String s2 = d.a(s, s1);
        if (s2 == null)
        {
            s2 = "";
        }
        return s2;
    }

    private static boolean b(String s)
    {
        return s != null && e.matcher(s).matches();
    }

    private static long c(String s)
    {
        return Long.valueOf(s.substring(0, -1 + s.length())).longValue();
    }

}
