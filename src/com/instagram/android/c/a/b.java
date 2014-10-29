// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.api.j.g;
import com.instagram.api.j.j;
import com.instagram.api.j.p;
import com.instagram.common.y.e.a;
import java.util.ArrayList;

public class b extends g
{

    protected String a;

    public b(Context context, an an, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
    }

    public final void a(String s)
    {
        a = s;
        super.g();
    }

    public final boolean a(String s, l l1, p p1)
    {
        if ("geo_media".equals(s))
        {
            l1.nextToken();
            ArrayList arraylist = new ArrayList();
            do
            {
                if (l1.nextToken() == r.e)
                {
                    break;
                }
                com.instagram.android.g.b b1 = com.instagram.android.g.b.a(l1);
                if (b1 == null)
                {
                    break;
                }
                arraylist.add(b1);
            } while (true);
            p1.a(arraylist);
            return true;
        } else
        {
            return false;
        }
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.c;
    }

    public final boolean c(j j)
    {
        return false;
    }

    protected String c_()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a;
        return String.format("maps/user/%s/", aobj);
    }
}
