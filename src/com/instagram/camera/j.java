// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;

import java.text.SimpleDateFormat;
import java.util.Date;

final class j
{

    private SimpleDateFormat a;
    private long b;
    private int c;

    public j(String s)
    {
        a = new SimpleDateFormat(s);
    }

    public final String a(long l)
    {
        Date date = new Date(l);
        String s = a.format(date);
        if (l / 1000L == b / 1000L)
        {
            c = 1 + c;
            return (new StringBuilder()).append(s).append("_").append(c).toString();
        } else
        {
            b = l;
            c = 0;
            return s;
        }
    }
}
