// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.android.g.c;
import com.instagram.api.j.f;
import com.instagram.api.j.g;
import com.instagram.api.j.p;
import com.instagram.common.a.c.a;
import com.instagram.common.a.c.b;
import java.util.ArrayList;

public final class d extends g
{

    private String a;

    public d(Context context, an an, f f)
    {
        super(context, an, 0, f);
    }

    protected final void a(b b1)
    {
        b1.a("q", a);
    }

    public final void a(String s)
    {
        a = s;
        g();
    }

    public final boolean a(String s, l l1, p p1)
    {
        if ("results".equals(s))
        {
            l1.nextToken();
            ArrayList arraylist = new ArrayList();
            do
            {
                if (l1.nextToken() == r.e)
                {
                    break;
                }
                c c1 = com.instagram.android.g.c.a(l1);
                if (c1 == null)
                {
                    break;
                }
                arraylist.add(c1);
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
        return a.c;
    }

    protected final String c_()
    {
        return "tags/search/";
    }
}
