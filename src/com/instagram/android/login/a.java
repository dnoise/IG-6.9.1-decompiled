// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login;

import android.graphics.Bitmap;
import com.instagram.common.a.c.b;
import com.instagram.common.y.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class a
{

    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public Bitmap h;
    public String i;
    public List j;

    public a()
    {
        j = new ArrayList();
    }

    public final b a(b b1, boolean flag)
    {
        StringBuilder stringbuilder;
        b1.a("email", com.instagram.common.y.e.a(a, ""));
        b1.a("username", com.instagram.common.y.e.a(b, ""));
        b1.a("password", com.instagram.common.y.e.a(c, ""));
        if (!com.instagram.common.y.e.c(d))
        {
            b1.a("phone_number", com.instagram.common.y.e.a(d, ""));
        }
        b1.a("device_id", com.instagram.common.y.e.a(e, ""));
        b1.a("guid", com.instagram.common.y.e.a(f, ""));
        b1.a("first_name", com.instagram.common.y.e.a(g, ""));
        if (flag)
        {
            b1.a("verification_code", com.instagram.common.y.e.a(i, ""));
        }
        stringbuilder = new StringBuilder();
        List list = j;
        list;
        JVM INSTR monitorenter ;
        Iterator iterator = j.iterator();
_L1:
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_263;
        }
        for (Iterator iterator1 = ((List)iterator.next()).iterator(); iterator1.hasNext(); stringbuilder.append(","))
        {
            stringbuilder.append(((Integer)iterator1.next()).toString());
        }

        break MISSING_BLOCK_LABEL_235;
        Exception exception;
        exception;
        throw exception;
        if (stringbuilder.length() > 0)
        {
            stringbuilder.deleteCharAt(-1 + stringbuilder.length());
        }
        stringbuilder.append("|");
          goto _L1
        if (stringbuilder.length() > 0)
        {
            stringbuilder.deleteCharAt(-1 + stringbuilder.length());
        }
        list;
        JVM INSTR monitorexit ;
        b1.a("qs_stamp", stringbuilder.toString());
        return b1;
    }
}
